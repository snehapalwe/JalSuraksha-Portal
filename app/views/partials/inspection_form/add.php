<?php
$comp_model = new SharedController;
$page_element_id = "add-page-" . random_str();
$current_page = $this->set_current_page_link();
$csrf_token = Csrf::$token;
$show_header = $this->show_header;
$view_title = $this->view_title;
$redirect_to = $this->redirect_to;
?>
<section class="page" id="<?php echo $page_element_id; ?>" data-page-type="add"  data-display-type="" data-page-url="<?php print_link($current_page); ?>">
    <?php
    if( $show_header == true ){
    ?>
    <div  class="bg-light p-3 mb-3">
        <div class="container">
            <div class="row ">
                <div class="col ">
                    <h4 class="record-title"><strong style='color: black;'>INSPECTION FORM</strong></h4>
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
                        <form id="inspection_form-add-form" role="form" novalidate enctype="multipart/form-data" class="form page-form form-vertical needs-validation" action="<?php print_link("inspection_form/add?csrf_token=$csrf_token") ?>" method="post">
                            <div>
                                <input id="ctrl-rec_id"  value="<?php  echo $this->set_field_value('rec_id',""); ?>" type="hidden" placeholder="Enter Rec Id"  required="" name="rec_id"  class="form-control " />
                                    <input id="ctrl-db_name"  value="<?php  echo $this->set_field_value('db_name',""); ?>" type="hidden" placeholder="Enter Db Name"  required="" name="db_name"  class="form-control " />
                                        <div class="form-group ">
                                            <label class="control-label" for="inspection_remark">INSPECTION REMARK <span class="text-danger">*</span></label>
                                            <div id="ctrl-inspection_remark-holder" class=""> 
                                                <textarea placeholder="Enter INSPECTION REMARK" id="ctrl-inspection_remark"  required="" rows="5" name="inspection_remark" class=" form-control"><?php  echo $this->set_field_value('inspection_remark',""); ?></textarea>
                                                <!--<div class="invalid-feedback animated bounceIn text-center">Please enter text</div>-->
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label class="control-label" for="upload_inspection_document">UPLOAD INSPECTION DOCUMENT <span class="text-danger">*</span></label>
                                            <div id="ctrl-upload_inspection_document-holder" class=""> 
                                                <div class="dropzone " input="#ctrl-upload_inspection_document" fieldname="upload_inspection_document"  extensions=".pdf"  data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" filesize="3" maximum="1">
                                                    <input name="upload_inspection_document" id="ctrl-upload_inspection_document" class="dropzone-input form-control" required="" value="<?php  echo $this->set_field_value('upload_inspection_document',""); ?>" type="text"  />
                                                        <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                        <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <label class="control-label" for="inspection_date">INSPECTION DATE <span class="text-danger">*</span></label>
                                                <div id="ctrl-inspection_date-holder" class="input-group"> 
                                                    <input id="ctrl-inspection_date" class="form-control datepicker  datepicker" required="" value="<?php  echo $this->set_field_value('inspection_date',""); ?>" type="datetime" name="inspection_date" placeholder="Enter INSPECTION DATE" data-enable-time="false" data-min-date="" data-max-date="<?php echo date_now(); ?>" data-date-format="Y-m-d" data-alt-format="F j, Y" data-inline="false" data-no-calendar="false" data-mode="single" />
                                                        <div class="input-group-append">
                                                            <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group form-submit-btn-holder text-center mt-3">
                                                <div class="form-ajax-status"></div>
                                                <button class="btn btn-primary" type="submit">
                                                    Submit
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
