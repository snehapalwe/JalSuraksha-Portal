<?php
$comp_model = new SharedController;
$page_element_id = "edit-page-" . random_str();
$current_page = $this->set_current_page_link();
$csrf_token = Csrf::$token;
$data = $this->view_data;
//$rec_id = $data['__tableprimarykey'];
$page_id = $this->route->page_id;
$show_header = $this->show_header;
$view_title = $this->view_title;
$redirect_to = $this->redirect_to;
?>
<section class="page" id="<?php echo $page_element_id; ?>" data-page-type="edit"  data-display-type="" data-page-url="<?php print_link($current_page); ?>">
    <?php
    if( $show_header == true ){
    ?>
    <div  class="bg-light p-3 mb-3">
        <div class="container">
            <div class="row ">
                <div class="col ">
                    <h4 class="record-title"><strong style='color: black;'>EDIT DRAINAGE NOC JAL OC APPLICATION</strong></h4>
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
                    <div  class="bg-light p-3 animated fadeIn page-content">
                        <form novalidate  id="" role="form" enctype="multipart/form-data"  class="form page-form form-vertical needs-validation" action="<?php print_link("drainage_noc_jal_oc/revert/$page_id/?csrf_token=$csrf_token"); ?>" method="post">
                            <div>
                                <div class="form-group ">
                                    <label class="control-label" for="upload_architech_affidavit">UPLOAD ARCHITECH AFFIDAVIT <span class="text-danger">*</span></label>
                                    <div id="ctrl-upload_architech_affidavit-holder" class=""> 
                                        <div class="dropzone required" input="#ctrl-upload_architech_affidavit" fieldname="upload_architech_affidavit"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" extensions=".jpg,.png,.gif,.jpeg,.pdf" filesize="3" maximum="1">
                                            <input name="upload_architech_affidavit" id="ctrl-upload_architech_affidavit" required="" class="dropzone-input form-control" value="<?php  echo $data['upload_architech_affidavit']; ?>" type="text"  />
                                                <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                            </div>
                                        </div>
                                        <?php Html :: uploaded_files_list($data['upload_architech_affidavit'], '#ctrl-upload_architech_affidavit'); ?>
                                    </div>
                                    <div class="form-group ">
                                        <label class="control-label" for="upload_construction_permission_and_cerified_map_copy">UPLOAD CONSTRUCTION PERMISSION AND CERTIFIED MAP COPY <span class="text-danger">*</span></label>
                                        <div id="ctrl-upload_construction_permission_and_cerified_map_copy-holder" class=""> 
                                            <div class="dropzone required" input="#ctrl-upload_construction_permission_and_cerified_map_copy" fieldname="upload_construction_permission_and_cerified_map_copy"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" extensions=".jpg,.png,.gif,.jpeg,.pdf" filesize="3" maximum="1">
                                                <input name="upload_construction_permission_and_cerified_map_copy" id="ctrl-upload_construction_permission_and_cerified_map_copy" required="" class="dropzone-input form-control" value="<?php  echo $data['upload_construction_permission_and_cerified_map_copy']; ?>" type="text"  />
                                                    <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                    <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                </div>
                                            </div>
                                            <?php Html :: uploaded_files_list($data['upload_construction_permission_and_cerified_map_copy'], '#ctrl-upload_construction_permission_and_cerified_map_copy'); ?>
                                        </div>
                                        <div class="form-group ">
                                            <label class="control-label" for="upload_architect_or_project_consultant_report">UPLOAD ARCHITECT OR PROJECT CONSULTANT REPORT <span class="text-danger">*</span></label>
                                            <div id="ctrl-upload_architect_or_project_consultant_report-holder" class=""> 
                                                <div class="dropzone required" input="#ctrl-upload_architect_or_project_consultant_report" fieldname="upload_architect_or_project_consultant_report"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" extensions=".jpg,.png,.gif,.jpeg,.pdf" filesize="3" maximum="1">
                                                    <input name="upload_architect_or_project_consultant_report" id="ctrl-upload_architect_or_project_consultant_report" required="" class="dropzone-input form-control" value="<?php  echo $data['upload_architect_or_project_consultant_report']; ?>" type="text"  />
                                                        <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                        <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                    </div>
                                                </div>
                                                <?php Html :: uploaded_files_list($data['upload_architect_or_project_consultant_report'], '#ctrl-upload_architect_or_project_consultant_report'); ?>
                                            </div>
                                            <div class="form-group ">
                                                <label class="control-label" for="upload_property_location_map">UPLOAD PROPERTY LOCATION MAP <span class="text-danger">*</span></label>
                                                <div id="ctrl-upload_property_location_map-holder" class=""> 
                                                    <div class="dropzone required" input="#ctrl-upload_property_location_map" fieldname="upload_property_location_map"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" extensions=".jpg,.png,.gif,.jpeg,.pdf" filesize="3" maximum="1">
                                                        <input name="upload_property_location_map" id="ctrl-upload_property_location_map" required="" class="dropzone-input form-control" value="<?php  echo $data['upload_property_location_map']; ?>" type="text"  />
                                                            <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                            <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                        </div>
                                                    </div>
                                                    <?php Html :: uploaded_files_list($data['upload_property_location_map'], '#ctrl-upload_property_location_map'); ?>
                                                </div>
                                                <div class="form-group ">
                                                    <label class="control-label" for="upload_noc_copy_given_for_construction_permission">UPLOAD NOC COPY GIVEN FOR CONSTRUCTION PERMISSION <span class="text-danger">*</span></label>
                                                    <div id="ctrl-upload_noc_copy_given_for_construction_permission-holder" class=""> 
                                                        <div class="dropzone required" input="#ctrl-upload_noc_copy_given_for_construction_permission" fieldname="upload_noc_copy_given_for_construction_permission"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" extensions=".jpg,.png,.gif,.jpeg,.pdf" filesize="3" maximum="1">
                                                            <input name="upload_noc_copy_given_for_construction_permission" id="ctrl-upload_noc_copy_given_for_construction_permission" required="" class="dropzone-input form-control" value="<?php  echo $data['upload_noc_copy_given_for_construction_permission']; ?>" type="text"  />
                                                                <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                            </div>
                                                        </div>
                                                        <?php Html :: uploaded_files_list($data['upload_noc_copy_given_for_construction_permission'], '#ctrl-upload_noc_copy_given_for_construction_permission'); ?>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label" for="upload_map_prepared_by_licensed_plumber">UPLOAD MAP PREPARED BY LICENSED PLUMBER <span class="text-danger">*</span></label>
                                                        <div id="ctrl-upload_map_prepared_by_licensed_plumber-holder" class=""> 
                                                            <div class="dropzone required" input="#ctrl-upload_map_prepared_by_licensed_plumber" fieldname="upload_map_prepared_by_licensed_plumber"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" extensions=".jpg,.png,.gif,.jpeg,.pdf" filesize="3" maximum="1">
                                                                <input name="upload_map_prepared_by_licensed_plumber" id="ctrl-upload_map_prepared_by_licensed_plumber" required="" class="dropzone-input form-control" value="<?php  echo $data['upload_map_prepared_by_licensed_plumber']; ?>" type="text"  />
                                                                    <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                    <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                                </div>
                                                            </div>
                                                            <?php Html :: uploaded_files_list($data['upload_map_prepared_by_licensed_plumber'], '#ctrl-upload_map_prepared_by_licensed_plumber'); ?>
                                                        </div>
                                                    </div>
                                                    <div class="form-ajax-status"></div>
                                                    <div class="form-group text-center">
                                                        <button class="btn btn-primary" type="submit">
                                                            Update
                                                            <i class="fa fa-send"></i>
                                                        </button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
