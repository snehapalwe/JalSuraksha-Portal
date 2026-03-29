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
                    <h4 class="record-title">Edit  Application Form</h4>
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
                        <form novalidate  id="" role="form" enctype="multipart/form-data"  class="form page-form form-vertical needs-validation" action="<?php print_link("application_form/edit/$page_id/?csrf_token=$csrf_token"); ?>" method="post">
                            <div>
                                <div class="form-group ">
                                    <label class="control-label" for="applicant_name">APPLICANT NAME  <span class="text-danger">*</span></label>
                                    <div id="ctrl-applicant_name-holder" class=""> 
                                        <input id="ctrl-applicant_name"  value="<?php  echo $data['applicant_name']; ?>" type="text" placeholder="Enter Applicant Name"  required="" name="applicant_name"  class="form-control " />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label class="control-label" for="applicant_address">APPLICANT ADDRESS  <span class="text-danger">*</span></label>
                                        <div id="ctrl-applicant_address-holder" class=""> 
                                            <input id="ctrl-applicant_address"  value="<?php  echo $data['applicant_address']; ?>" type="text" placeholder="Enter Applicant Address"  required="" name="applicant_address"  class="form-control " />
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label class="control-label" for="drainage_connection_details">DRAINAGE CONNECTION DETAILS  <span class="text-danger">*</span></label>
                                            <div id="ctrl-drainage_connection_details-holder" class=""> 
                                                <input id="ctrl-drainage_connection_details"  value="<?php  echo $data['drainage_connection_details']; ?>" type="text" placeholder="Enter Drainage Connection Details"  required="" name="drainage_connection_details"  class="form-control " />
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <label class="control-label" for="type_of_septic">Type Of Septic   <span class="text-danger">*</span></label>
                                                <div id="ctrl-type_of_septic-holder" class=""> 
                                                    <select required=""  id="ctrl-type_of_septic" name="type_of_septic"  placeholder="Enter Type Of Septic "    class="custom-select" >
                                                        <option value="">Enter Type Of Septic </option>
                                                        <?php
                                                        $type_of_septic_options = Menu :: $type_of_septic;
                                                        $field_value = $data['type_of_septic'];
                                                        if(!empty($type_of_septic_options)){
                                                        foreach($type_of_septic_options as $option){
                                                        $value = $option['value'];
                                                        $label = $option['label'];
                                                        $selected = ( $value == $field_value ? 'selected' : null );
                                                        ?>
                                                        <option <?php echo $selected ?> value="<?php echo $value ?>">
                                                            <?php echo $label ?>
                                                        </option>                                   
                                                        <?php
                                                        }
                                                        }
                                                        ?>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <label class="control-label" for="no_of_flats">No Of Flats <span class='text-danger'>*</span> </label>
                                                <div id="ctrl-no_of_flats-holder" class=""> 
                                                    <input id="ctrl-no_of_flats"  value="<?php  echo $data['no_of_flats']; ?>" type="text" placeholder="Enter No Of Flats "  name="no_of_flats"  class="form-control " />
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label class="control-label" for="demand_applicable">DEMAND APPLICABLE  <span class="text-danger">*</span></label>
                                                    <div id="ctrl-demand_applicable-holder" class=""> 
                                                        <input id="ctrl-demand_applicable"  value="<?php  echo $data['demand_applicable']; ?>" type="text" placeholder="Enter Demand Applicable"  readonly required="" name="demand_applicable"  class="form-control " />
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label" for="upload_property_documents">UPLOAD PROPERTY DOCUMENTS  <span class="text-danger">*</span></label>
                                                        <div id="ctrl-upload_property_documents-holder" class=""> 
                                                            <div class="dropzone required" input="#ctrl-upload_property_documents" fieldname="upload_property_documents"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" filesize="3" maximum="1">
                                                                <input name="upload_property_documents" id="ctrl-upload_property_documents" required="" class="dropzone-input form-control" value="<?php  echo $data['upload_property_documents']; ?>" type="text"  />
                                                                    <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                    <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                                </div>
                                                            </div>
                                                            <?php Html :: uploaded_files_list($data['upload_property_documents'], '#ctrl-upload_property_documents'); ?>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="control-label" for="upload_building_plan">UPLOAD BUILDING PLAN  <span class="text-danger">*</span></label>
                                                            <div id="ctrl-upload_building_plan-holder" class=""> 
                                                                <div class="dropzone required" input="#ctrl-upload_building_plan" fieldname="upload_building_plan"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" filesize="3" maximum="1">
                                                                    <input name="upload_building_plan" id="ctrl-upload_building_plan" required="" class="dropzone-input form-control" value="<?php  echo $data['upload_building_plan']; ?>" type="text"  />
                                                                        <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                        <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                                    </div>
                                                                </div>
                                                                <?php Html :: uploaded_files_list($data['upload_building_plan'], '#ctrl-upload_building_plan'); ?>
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
