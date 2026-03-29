<?php 
//check if current user role is allowed access to the pages
$can_add = ACL::is_allowed("application_form/add");
$can_edit = ACL::is_allowed("application_form/edit");
$can_view = ACL::is_allowed("application_form/view");
$can_delete = ACL::is_allowed("application_form/delete");
?>
<?php
$comp_model = new SharedController;
$page_element_id = "list-page-" . random_str();
$current_page = $this->set_current_page_link();
$csrf_token = Csrf::$token;
//Page Data From Controller
$view_data = $this->view_data;
$records = $view_data->records;
$record_count = $view_data->record_count;
$total_records = $view_data->total_records;
$field_name = $this->route->field_name;
$field_value = $this->route->field_value;
$view_title = $this->view_title;
$show_header = $this->show_header;
$show_footer = $this->show_footer;
$show_pagination = $this->show_pagination;
?>
<section class="page" id="<?php echo $page_element_id; ?>" data-page-type="list"  data-display-type="grid" data-page-url="<?php print_link($current_page); ?>">
    <?php
    if( $show_header == true ){
    ?>
    <div  class="bg-light p-3 mb-3">
        <div class="container-fluid">
            <div class="row ">
                <div class="col ">
                    <h4 class="record-title"><strong style='color: black;'>APPLICATION FORM</strong></h4>
                </div>
                <div class="col-sm-3 ">
                    <?php if($can_add){ ?>
                    <a  class="btn btn btn-primary my-1" href="<?php print_link("application_form/add") ?>">
                        <i class="fa fa-plus"></i>                              
                        Add New Application Form 
                    </a>
                    <?php } ?>
                </div>
                <div class="col-sm-4 ">
                    <form  class="search" action="<?php print_link('application_form'); ?>" method="get">
                        <div class="input-group">
                            <input value="<?php echo get_value('search'); ?>" class="form-control" type="text" name="search"  placeholder="Search" />
                                <div class="input-group-append">
                                    <button class="btn btn-primary"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-12 comp-grid">
                        <div class="">
                            <!-- Page bread crumbs components-->
                            <?php
                            if(!empty($field_name) || !empty($_GET['search'])){
                            ?>
                            <hr class="sm d-block d-sm-none" />
                            <nav class="page-header-breadcrumbs mt-2" aria-label="breadcrumb">
                                <ul class="breadcrumb m-0 p-1">
                                    <?php
                                    if(!empty($field_name)){
                                    ?>
                                    <li class="breadcrumb-item">
                                        <a class="text-decoration-none" href="<?php print_link('application_form'); ?>">
                                            <i class="fa fa-angle-left"></i>
                                        </a>
                                    </li>
                                    <li class="breadcrumb-item">
                                        <?php echo (get_value("tag") ? get_value("tag")  :  make_readable($field_name)); ?>
                                    </li>
                                    <li  class="breadcrumb-item active text-capitalize font-weight-bold">
                                        <?php echo (get_value("label") ? get_value("label")  :  make_readable(urldecode($field_value))); ?>
                                    </li>
                                    <?php 
                                    }   
                                    ?>
                                    <?php
                                    if(get_value("search")){
                                    ?>
                                    <li class="breadcrumb-item">
                                        <a class="text-decoration-none" href="<?php print_link('application_form'); ?>">
                                            <i class="fa fa-angle-left"></i>
                                        </a>
                                    </li>
                                    <li class="breadcrumb-item text-capitalize">
                                        Search
                                    </li>
                                    <li  class="breadcrumb-item active text-capitalize font-weight-bold"><?php echo get_value("search"); ?></li>
                                    <?php
                                    }
                                    ?>
                                </ul>
                            </nav>
                            <!--End of Page bread crumbs components-->
                            <?php
                            }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php
        }
        ?>
        <div  class="">
            <div class="container-fluid">
                <div class="row ">
                    <div class="col-md-12 comp-grid">
                        <?php $this :: display_page_errors(); ?>
                        <div  class=" animated fadeIn page-content">
                            <div id="application_form-list-records">
                                <?php
                                if(!empty($records)){
                                ?>
                                <div id="page-report-body">
                                    <div class="row sm-gutters page-data" id="page-data-<?php echo $page_element_id; ?>">
                                        <!--record-->
                                        <?php
                                        $counter = 0;
                                        foreach($records as $data){
                                        $rec_id = (!empty($data['id']) ? urlencode($data['id']) : null);
                                        $counter++;
                                        ?>
                                        <div class="col-sm-4">
                                            <div class="bg-light p-2 mb-3 animated bounceIn">
                                                <div class="mb-2">  
                                                    <span class="font-weight-light text-muted ">
                                                        APPLICANT NAME :  
                                                    </span>
                                                <?php echo $data['applicant_name']; ?></div>
                                                <div class="mb-2">  
                                                    <span class="font-weight-light text-muted ">
                                                        APPLICANT ADDRESS :  
                                                    </span>
                                                <?php echo $data['applicant_address']; ?></div>
                                                <div class="mb-2">  
                                                    <span class="font-weight-light text-muted ">
                                                        DRAINAGE CONNECTION DETAILS :  
                                                    </span>
                                                <?php echo $data['drainage_connection_details']; ?></div>
                                                <div class="mb-2">  
                                                    <span class="font-weight-light text-muted ">
                                                        TYPE OF SEPTIC :  
                                                    </span>
                                                <?php echo $data['type_of_septic']; ?></div>
                                                <div class="mb-2">  
                                                    <span class="font-weight-light text-muted ">
                                                        NUMBER OF FLATS :  
                                                    </span>
                                                <?php echo $data['no_of_flats']; ?></div>
                                                <div class="mb-2">  
                                                    <span class="font-weight-light text-muted ">
                                                        DEMAND APPLICABLE :  
                                                    </span>
                                                <?php echo $data['demand_applicable']; ?></div>
                                                <?php if (!empty($data['upload_property_documents'])): ?>
                                                <div class="mb-2">
                                                    <strong style="font-weight: 500 !important; color: #000 !important;">
                                                        Uploaded Property Document:
                                                    </strong>  
                                                    <a href="<?php echo htmlspecialchars($data['upload_property_documents'], ENT_QUOTES, 'UTF-8'); ?>" 
                                                        target="_blank" 
                                                        class="btn btn-warning btn-sm">
                                                        View Document
                                                    </a>
                                                </div>
                                                <?php endif; ?>
                                                <?php if (!empty($data['upload_building_plan'])): ?>
                                                <div class="mb-2">
                                                    <strong style="font-weight: 500 !important; color: #000 !important;">
                                                        Uploaded Building Plan:
                                                    </strong>  
                                                    <a href="<?php echo htmlspecialchars($data['upload_building_plan'], ENT_QUOTES, 'UTF-8'); ?>" 
                                                        target="_blank" 
                                                        class="btn btn-warning btn-sm">
                                                        View Plan
                                                    </a>
                                                </div>
                                                <?php endif; ?>
                                                <span><?php $s= $data['status'];
                                                    if($s=="1"){
                                                    echo "Pending Auth 1";
                                                    if(USER_ROLE==3){
                                                    echo "<a href='".SITE_ADDR."accept_reject/add?rec_id=".$data['id']."' class='btn btn-danger btn-sm' >Accept / Reject</a>";
                                                    }
                                                    }elseif($s=="2"){
                                                    echo "Pending Auth 2";
                                                    if($data['paid']==0  && USER_ROLE==2&& $data['demand_applicable']>0){
                                                    echo "<br>Visit KDMC OFFICE FOR PAYMENT";
                                                        }
                                                        if(USER_ROLE==4){
                                                        if($data['paid']==0 && $data['demand_applicable']>0){
                                                        echo "<a href='".SITE_ADDR."payments/add?rec_id=".$data['id']."&amount=".$data['demand_applicable']."' class='btn btn-danger btn-sm' >Pay Demand</a>";
                                                        }else{
                                                        echo "<a href='".SITE_ADDR."accept_reject/add?rec_id=".$data['id']."' class='btn btn-danger btn-sm' >Accept / Reject</a>";
                                                        }
                                                        }
                                                        }elseif($s=="3"){
                                                        echo "Pending Auth 3";
                                                        if(USER_ROLE==5){
                                                        echo "<a href='".SITE_ADDR."accept_reject/add?rec_id=".$data['id']."' class='btn btn-danger btn-sm' >Accept / Reject</a>";
                                                        }
                                                        }else{
                                                        ?>
                                                        <span style="font-weight: bold; background-color: yellow; padding: 2px 5px; border-radius: 3px;">
                                                            <?php echo $s; ?>
                                                        </span>
                                                        <?php   
                                                        }
                                                        if($data['paid']+0>0){
                                                        echo "<br><a href='".SITE_ADDR."payments/view/".$data['paid']."' class='btn btn-success btn-sm' >Receipt</a>";
                                                            }
                                                        ?></span>
                                                        <div class="mb-2">  
                                                            <span class="font-weight-light text-muted ">
                                                                DATE :  
                                                            </span>
                                                        <?php echo $data['date']; ?></div>
                                                        <div class="mb-2">  
                                                            <span class="font-weight-light text-muted ">
                                                                TIMESTAMP :  
                                                            </span>
                                                        <?php echo $data['timestamp']; ?></div>
                                                    </div>
                                                </div>
                                                <?php 
                                                }
                                                ?>
                                                <!--endrecord-->
                                            </div>
                                            <div class="row sm-gutters search-data" id="search-data-<?php echo $page_element_id; ?>"></div>
                                            <div>
                                            </div>
                                        </div>
                                        <?php
                                        if($show_footer == true){
                                        ?>
                                        <div class=" border-top mt-2">
                                            <div class="row justify-content-center">    
                                                <div class="col-md-auto">   
                                                </div>
                                                <div class="col">   
                                                    <?php
                                                    if($show_pagination == true){
                                                    $pager = new Pagination($total_records, $record_count);
                                                    $pager->route = $this->route;
                                                    $pager->show_page_count = true;
                                                    $pager->show_record_count = true;
                                                    $pager->show_page_limit =true;
                                                    $pager->limit_count = $this->limit_count;
                                                    $pager->show_page_number_list = true;
                                                    $pager->pager_link_range=5;
                                                    $pager->render();
                                                    }
                                                    ?>
                                                </div>
                                            </div>
                                        </div>
                                        <?php
                                        }
                                        }
                                        else{
                                        ?>
                                        <div class="text-muted  animated bounce p-3">
                                            <h4><i class="fa fa-ban"></i> No record found</h4>
                                        </div>
                                        <?php
                                        }
                                        ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
