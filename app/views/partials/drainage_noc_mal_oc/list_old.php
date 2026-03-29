<?php 
//check if current user role is allowed access to the pages
$can_add = ACL::is_allowed("drainage_noc_mal_oc/add");
$can_edit = ACL::is_allowed("drainage_noc_mal_oc/edit");
$can_view = ACL::is_allowed("drainage_noc_mal_oc/view");
$can_delete = ACL::is_allowed("drainage_noc_mal_oc/delete");
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
                    <h4 class="record-title"><strong style='color: black;'>DRAINAGE NOC MAL OC</strong></h4>
                </div>
                <div class="col-sm-3 ">
                    <?php if($can_add){ ?>
                    <a  class="btn btn btn-primary my-1" href="<?php print_link("drainage_noc_mal_oc/add") ?>">
                        <i class="fa fa-plus"></i>                              
                        Add New Drainage Noc Mal Oc 
                    </a>
                    <?php } ?>
                </div>
                <div class="col-sm-4 ">
                    <form  class="search" action="<?php print_link('drainage_noc_mal_oc'); ?>" method="get">
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
                                        <a class="text-decoration-none" href="<?php print_link('drainage_noc_mal_oc'); ?>">
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
                                        <a class="text-decoration-none" href="<?php print_link('drainage_noc_mal_oc'); ?>">
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
                            <div id="drainage_noc_mal_oc-list-records">
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
                                                <span><?php
                                                    $dbname = "drainage_noc_mal_oc";
                                                    $s = $data['status'];
                                                    // Show status only if NOT 4
                                                    if($s == "1"){
                                                    echo "<span style='font-weight: bold; background-color: yellow; padding: 2px 5px; border-radius: 3px; color: black'>PENDING AT AUTH 1</span><br>";
                                                        if(USER_ROLE == 3){
                                                        if($data['inspection']){
                                                        echo "<a href='".SITE_ADDR."accept_reject/add?rec_id=".$data['id']."&db_name=".$dbname."' class='btn btn-danger btn-sm'>Accept / Reject</a>";
                                                        }else{
                                                        echo "<a href='".SITE_ADDR."inspection_form/add?rec_id=".$data['id']."&db_name=".$dbname."' class='btn btn-danger btn-sm'>Inspection</a>";
                                                        }
                                                        }
                                                        }elseif($s == "2"){
                                                        echo "<span style='font-weight: bold; background-color: yellow; padding: 2px 5px; border-radius: 3px; color: black;'>PENDING AT AUTH 2</span><br>";
                                                            if($data['paid'] > 0 && USER_ROLE == 2 && $data['demand'] != "PAID"){
                                                            echo "<br>Make Payment";
                                                                }
                                                                if(USER_ROLE == 4){
                                                                // normalize values
                                                                $demand = strtoupper(trim($data['demand']));
                                                                $paid = (int)$data['paid'];
                                                                // Step 1: No demand yet
                                                                if($demand == ""){
                                                                echo "<a href='".SITE_ADDR."payments/add?rec_id=".$data['id']."&db_name=".$dbname."' class='btn btn-danger btn-sm'>Demand</a>";
                                                                }
                                                                // Step 2: Demand created but payment pending
                                                                elseif($demand == "YES" && $paid != 0){
                                                                echo "<a href='".SITE_ADDR."payments/edit/".$data['paid']."?rec_id=".$data['id']."&db_name=".$dbname."' class='btn btn-danger btn-sm'>Pay Demand</a>";
                                                                }
                                                                // Step 3: Payment done
                                                                elseif($demand == "PAID" && $paid > 0){
                                                                echo "<a href='".SITE_ADDR."accept_reject/add?rec_id=".$data['id']."&db_name=".$dbname."' class='btn btn-danger btn-sm'>Accept / Reject</a>";
                                                                }elseif($demand == "NO"  ){
                                                                echo "<a href='".SITE_ADDR."accept_reject/add?rec_id=".$data['id']."&db_name=".$dbname."' class='btn btn-danger btn-sm'>Accept / Reject</a>";
                                                                }
                                                                }
                                                                }elseif($s == "3"){
                                                                echo "<span style='font-weight: bold; background-color: yellow; padding: 2px 5px; border-radius: 3px; color: black'>PENDING AT AUTH 3</span><br>";
                                                                    if(USER_ROLE == 5){
                                                                    echo "<a href='".SITE_ADDR."accept_reject/add?rec_id=".$data['id']."&db_name=".$dbname."' class='btn btn-danger btn-sm'>Accept / Reject</a>";
                                                                    }
                                                                    }elseif($s != "4"){
                                                                    // for any other status except 4
                                                                    echo "<span style='font-weight: bold; background-color: yellow; padding: 2px 5px; border-radius: 3px;'>".$s."</span>";
                                                                    }
                                                                    if($s=="Reverted"){
                                                                    echo "<a href='".SITE_ADDR."$dbname/edit/".$data['id']."' class='btn btn-danger btn-sm'>EDIT APPLICATION</a>";
                                                                    echo "<a href='".SITE_ADDR."api/viewreason/$dbname/".$data['id']."' class='btn btn-primary page-modal modal-page btn-sm'>VIEW REASON</a>";
                                                                    }
                                                                    // Paid receipt button
                                                                    if($data['paid'] + 0 > 0 && $data['demand'] == "PAID"){
                                                                    echo "<a href='".SITE_ADDR."payments/view/".$data['paid']."' class='btn btn-success btn-sm'>🧾 Receipt</a><br><br>";
                                                                        }
                                                                        // Certificate buttons
                                                                        if($data['certificate'] != ""){
                                                                        echo "<span style='font-weight: bold; background-color: yellow; padding: 2px 5px; border-radius: 3px; color: black'>PROCESS COMPLETED</span><br>";
                                                                            echo "<a href='".$data['certificate']."' class='btn btn-success btn-sm'>📜 Certificate</a>";
                                                                            }else if($data['status'] == 4){
                                                                            // echo "<br>";
                                                                                echo "<span style='font-weight: bold; background-color: yellow; padding: 2px 5px; border-radius: 3px; color: black;'>CERTIFICATE UPLOAD PENDING</span> <br>";
                                                                                    if(USER_ROLE != 2){
                                                                                    echo "<a href='".SITE_ADDR.$dbname."/cert_view/".$data['id']."?db_name=$dbname' class='btn btn-info btn-sm'>Print Certificate</a>";
                                                                                    echo "<a href='".SITE_ADDR."certificate_upload/add?rec_id=".$data['id']."&db_name=$dbname' class='btn btn-danger btn-sm'>Upload Certificate</a><br>";
                                                                                        }
                                                                                        }
                                                                                    ?> </span>
                                                                                    <div class="mb-2">  
                                                                                        <span class="font-weight-light text-muted ">
                                                                                            COMMENCEMENT NUMBER:  
                                                                                        </span>
                                                                                    <?php echo $data['commencement_number']; ?></div>
                                                                                    <?php echo "<br>"; ?>
                                                                                        <?php if (!empty($data['application_no'])): ?>
                                                                                        <div class="mb-2">
                                                                                            <strong style="font-weight: 500 !important; color: #000 !important;">
                                                                                                Application No.:
                                                                                            </strong>  
                                                                                            <span style="font-weight: bold; background-color: yellow; padding: 2px 5px; border-radius: 3px;">
                                                                                                <?php echo $data['application_no']; ?>
                                                                                            </span>
                                                                                        </div>
                                                                                        <?php endif; ?>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Applicant Name:  
                                                                                            </span>
                                                                                        <?php echo $data['applicant_name']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                House Building Society Name:  
                                                                                            </span>
                                                                                        <?php echo $data['house_building_society_name']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                House Or Block Number:  
                                                                                            </span>
                                                                                        <?php echo $data['house_or_block_number']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Wing:  
                                                                                            </span>
                                                                                        <?php echo $data['wing']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Floor:  
                                                                                            </span>
                                                                                        <?php echo $data['floor']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Road Name:  
                                                                                            </span>
                                                                                        <?php echo $data['road_name']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Place Or Division Or Village:  
                                                                                            </span>
                                                                                        <?php echo $data['place_or_division_or_village']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Taluka:  
                                                                                            </span>
                                                                                        <?php echo $data['taluka']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Zone:  
                                                                                            </span>
                                                                                        <?php echo $data['zone_value']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                ELECTION WARD (PRABHAG) NO.:  
                                                                                            </span>
                                                                                        <?php echo $data['election_ward_no_value']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Mobile No:  
                                                                                            </span>
                                                                                        <?php echo $data['mobile_no']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Email:  
                                                                                            </span>
                                                                                        <?php echo $data['email']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Property Type:  
                                                                                            </span>
                                                                                        <?php echo $data['property_type_value']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Computarized Property No:  
                                                                                            </span>
                                                                                        <?php echo $data['computarized_property_no']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Property Survey No Or City Survey No:  
                                                                                            </span>
                                                                                        <?php echo $data['property_survey_no_or_city_survey_no']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Mouje Gaon Name:  
                                                                                            </span>
                                                                                        <?php echo $data['mouje_gaon_name']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Road Name For Property:  
                                                                                            </span>
                                                                                        <?php echo $data['road_name_for_property']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Place Division Gaon For Property:  
                                                                                            </span>
                                                                                        <?php echo $data['place_division_gaon_for_property']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Property Taluka:  
                                                                                            </span>
                                                                                        <?php echo $data['property_taluka']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Pincode For Property:  
                                                                                            </span>
                                                                                        <?php echo $data['pincode_for_property']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Zone Property:  
                                                                                            </span>
                                                                                        <?php echo $data['zone_property_value']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Property Type As Per Application:  
                                                                                            </span>
                                                                                        <?php echo $data['property_type_as_per_application_value']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Is Construction Commence Ceriticate Available:  
                                                                                            </span>
                                                                                        <?php echo $data['is_construction_commence_ceriticate_available']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Commence Ceriticate Number:  
                                                                                            </span>
                                                                                        <?php echo $data['commence_ceriticate_number']; ?></div>
                                                                                        <span>
                                                                                            <strong>COMMENCE CERTIFICATE DATE:</strong>
                                                                                            <?php
                                                                                            if (
                                                                                            !empty($data['commence_ceriticate_date']) &&
                                                                                            $data['commence_ceriticate_date'] !== "0000-00-00" &&
                                                                                            $data['commence_ceriticate_date'] !== "1970-01-01"
                                                                                            ) {
                                                                                            echo date("jS F Y", strtotime($data['commence_ceriticate_date']));
                                                                                            } else {
                                                                                            echo ""; // Display nothing if invalid
                                                                                            }
                                                                                            ?>
                                                                                        </span>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Property Usage:  
                                                                                            </span>
                                                                                        <?php echo $data['property_usage']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Property Usage Type:  
                                                                                            </span>
                                                                                        <?php echo $data['property_usage_type_value']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Architect Name:  
                                                                                            </span>
                                                                                        <?php echo $data['architect_name']; ?></div>
                                                                                        <?php if (!empty($data['upload_cc_certificate'])): ?>
                                                                                        <div class="mb-2">
                                                                                            <strong style="font-weight: 500 !important; color: #000 !important;">
                                                                                                UPLOADED COMMENCEMENT CERTFICATE:
                                                                                            </strong>  
                                                                                            <a href="<?php echo htmlspecialchars($data['upload_cc_certificate'], ENT_QUOTES, 'UTF-8'); ?>" 
                                                                                                target="_blank" 
                                                                                                class="btn btn-warning btn-sm">
                                                                                                View Certificate
                                                                                            </a>
                                                                                        </div>
                                                                                        <?php endif; ?>
                                                                                        <?php if (!empty($data['upload_architech_affidavit'])): ?>
                                                                                        <div class="mb-2">
                                                                                            <strong style="font-weight: 500 !important; color: #000 !important;">
                                                                                                UPLOADED ARCHITECH AFFIDAVIT:
                                                                                            </strong>  
                                                                                            <a href="<?php echo htmlspecialchars($data['upload_architech_affidavit'], ENT_QUOTES, 'UTF-8'); ?>" 
                                                                                                target="_blank" 
                                                                                                class="btn btn-info btn-sm">
                                                                                                View Affidavit
                                                                                            </a>
                                                                                        </div>
                                                                                        <?php endif; ?>
                                                                                        <?php if (!empty($data['upload_construction_permission_and_cerified_map_copy'])): ?>
                                                                                        <div class="mb-2">
                                                                                            <strong style="font-weight: 500 !important; color: #000 !important;">
                                                                                                UPLOADED CONSTRUCTION PERMISSION & CERTIFIED MAP COPY:
                                                                                            </strong>  
                                                                                            <a href="<?php echo htmlspecialchars($data['upload_construction_permission_and_cerified_map_copy'], ENT_QUOTES, 'UTF-8'); ?>" 
                                                                                                target="_blank" 
                                                                                                class="btn btn-info btn-sm">
                                                                                                View Document
                                                                                            </a>
                                                                                        </div>
                                                                                        <?php endif; ?>
                                                                                        <?php if (!empty($data['upload_architech_affidavit'])): ?>
                                                                                        <div class="mb-2">
                                                                                            <strong style="font-weight: 500 !important; color: #000 !important;">
                                                                                                UPLOADED ARCHITECH AFFIDAVIT:
                                                                                            </strong>  
                                                                                            <a href="<?php echo htmlspecialchars($data['upload_architech_affidavit'], ENT_QUOTES, 'UTF-8'); ?>" 
                                                                                                target="_blank" 
                                                                                                class="btn btn-info btn-sm">
                                                                                                View Affidavit
                                                                                            </a>
                                                                                        </div>
                                                                                        <?php endif; ?>
                                                                                        <?php if (!empty($data['upload_property_location_map'])): ?>
                                                                                        <div class="mb-2">
                                                                                            <strong style="font-weight: 500 !important; color: #000 !important;">
                                                                                                UPLOADED PROPERTY LOCATION MAP:
                                                                                            </strong>  
                                                                                            <a href="<?php echo htmlspecialchars($data['upload_property_location_map'], ENT_QUOTES, 'UTF-8'); ?>" 
                                                                                                target="_blank" 
                                                                                                class="btn btn-info btn-sm">
                                                                                                View Map
                                                                                            </a>
                                                                                        </div>
                                                                                        <?php endif; ?>
                                                                                        <?php if (!empty($data['upload_noc_copy_given_for_construction_permission'])): ?>
                                                                                        <div class="mb-2">
                                                                                            <strong style="font-weight: 500 !important; color: #000 !important;">
                                                                                                UPLOAD NOC GIVEN FOR CONSTRUCTION PURPOSE:
                                                                                            </strong>  
                                                                                            <a href="<?php echo htmlspecialchars($data['upload_noc_copy_given_for_construction_permission'], ENT_QUOTES, 'UTF-8'); ?>" 
                                                                                                target="_blank" 
                                                                                                class="btn btn-info btn-sm">
                                                                                                View Document
                                                                                            </a>
                                                                                        </div>
                                                                                        <?php endif; ?>
                                                                                        <?php if (!empty($data['upload_map_prepared_by_licensed_plumber'])): ?>
                                                                                        <div class="mb-2">
                                                                                            <strong style="font-weight: 500 !important; color: #000 !important;">
                                                                                                MAP PREPARED BY LICENSED PLUMBER:
                                                                                            </strong>  
                                                                                            <a href="<?php echo htmlspecialchars($data['upload_map_prepared_by_licensed_plumber'], ENT_QUOTES, 'UTF-8'); ?>" 
                                                                                                target="_blank" 
                                                                                                class="btn btn-info btn-sm">
                                                                                                View Document
                                                                                            </a>
                                                                                        </div>
                                                                                        <?php endif; ?>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Application Date:  
                                                                                            </span>
                                                                                        <?php echo $data['date']; ?></div>
                                                                                        <div class="mb-2">  
                                                                                            <span class="font-weight-light text-muted ">
                                                                                                Timestamp:  
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
