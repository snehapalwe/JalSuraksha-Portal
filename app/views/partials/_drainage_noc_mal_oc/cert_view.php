<?php 
//check if current user role is allowed access to the pages
$can_add = ACL::is_allowed("drainage_noc_mal_oc/add");
$can_edit = ACL::is_allowed("drainage_noc_mal_oc/edit");
$can_view = ACL::is_allowed("drainage_noc_mal_oc/view");
$can_delete = ACL::is_allowed("drainage_noc_mal_oc/delete");
?>
<?php
$comp_model = new SharedController;
$page_element_id = "view-page-" . random_str();
$current_page = $this->set_current_page_link();
$csrf_token = Csrf::$token;
//Page Data Information from Controller
$data = $this->view_data;
//$rec_id = $data['__tableprimarykey'];
$page_id = $this->route->page_id; //Page id from url
$view_title = $this->view_title;
$show_header = $this->show_header;
$show_edit_btn = $this->show_edit_btn;
$show_delete_btn = $this->show_delete_btn;
$show_export_btn = $this->show_export_btn;
?>
<section class="page" id="<?php echo $page_element_id; ?>" data-page-type="view"  data-display-type="table" data-page-url="<?php print_link($current_page); ?>">
    <?php
    if( $show_header == true ){
    ?>
    <div  class="bg-light p-3 mb-3">
        <div class="container">
            <div class="row ">
                <div class="col ">
                    <h4 class="record-title">View  Drainage Noc Mal Oc</h4>
                </div>
            </div>
        </div>
    </div>
    <?php
    }
    ?>
    <div  class="">
        <div class="container">
            <div class="row ">
                <div class="col-md-12 comp-grid">
                    <?php $this :: display_page_errors(); ?>
                    <div  class="card animated fadeIn page-content">
                        <style>
                            @media print {
                            body *, #main * { display:none; }
                            #main, #main #printarea, #main #printarea * { display:block ; }
                            }
                        </style>
                        <div>
                            <a href="#"  class="btn btn-danger" onclick="printDiv('printarea')"  >PRINT</a>
                        </div>
                        <div id="main" class>
                            <div id="printarea">
                                <?php
                                $jei=new User_infoController;
                                $db=$jei->GetModel();
                                error_reporting(0);
                                $db->where("db_name",explode('/',$current_page)[0]);
                                $sc=$db->getOne("service_configuration","*");
                                $dataput=$sc['certificate_data'];
                                foreach($data as $key=>$val){
                                $dataput=str_replace("{{getval.$key}}",$data[$key],$dataput);
                                }
                                $datar=cert_function($data,explode('/',$current_page)[0]);
                                foreach($datar as $key=>$val){
                                $dataput=str_replace("{{getval.$key}}",$datar[$key],$dataput);
                                }
                                echo $dataput
                                ?>
                            </div>
                        </div>
                        <script>
                            function printDiv(divName) {
                            var printContents = document.getElementById(divName).innerHTML;
                            var originalContents = document.body.innerHTML;
                            document.body.innerHTML = printContents;
                            window.print();
                            document.body.innerHTML = originalContents;
                            }
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
