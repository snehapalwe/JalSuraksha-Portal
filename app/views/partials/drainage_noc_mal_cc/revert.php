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
                    <h4 class="record-title"><strong style='color: black;'>EDIT DRAINAGE NOC MAL CC APPLICATION</strong></h4>
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
                        <form novalidate  id="" role="form" enctype="multipart/form-data"  class="form page-form form-vertical needs-validation" action="<?php print_link("drainage_noc_mal_cc/revert/$page_id/?csrf_token=$csrf_token"); ?>" method="post">
                            <div>
                                
                                
                                                                                        <div class="form-group ">
                                                                                            <label class="control-label" for="upload_full_potential_plan">UPLOAD FULL POTENTIAL PLAN <span class="text-danger">*</span></label>
                                                                                            <div id="ctrl-upload_full_potential_plan-holder" class=""> 
                                                                                                <div class="dropzone required" input="#ctrl-upload_full_potential_plan" fieldname="upload_full_potential_plan"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" extensions=".jpg,.png,.jpeg,.pdf" filesize="3" maximum="1">
                                                                                                    <input name="upload_full_potential_plan" id="ctrl-upload_full_potential_plan" required="" class="dropzone-input form-control" value="<?php  echo $data['upload_full_potential_plan']; ?>" type="text"  />
                                                                                                        <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                                                        <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <?php Html :: uploaded_files_list($data['upload_full_potential_plan'], '#ctrl-upload_full_potential_plan'); ?>
                                                                                            </div>
                                                                                            
                                                                                            
                                <div class="form-group ">
                                    <label class="control-label" for="wing">Wing <span class="text-danger">*</span></label>
                                    <div id="ctrl-wing-holder" class=""> 
                                        <input id="ctrl-wing"  value="<?php  echo $data['wing']; ?>" type="text" placeholder="Enter Wing"  required="" name="wing"  class="form-control " />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label class="control-label" for="road_name">Road Name <span class="text-danger">*</span></label>
                                        <div id="ctrl-road_name-holder" class=""> 
                                            <input id="ctrl-road_name"  value="<?php  echo $data['road_name']; ?>" type="text" placeholder="Enter Road Name"  required="" name="road_name"  class="form-control " />
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label class="control-label" for="election_ward_no_id">ELECTION WARD (PRABHAG) NO. <span class="text-danger">*</span></label>
                                            <div id="ctrl-election_ward_no_id-holder" class=""> 
                                                <select required=""  id="ctrl-election_ward_no_id" name="election_ward_no_id"  placeholder="Select a value ..."    class="custom-select" >
                                                    <option value="">Select a value ...</option>
                                                    <?php
                                                    $rec = $data['election_ward_no_id'];
                                                    $election_ward_no_id_options = $comp_model -> drainage_noc_mal_cc_election_ward_no_id_option_list();
                                                    if(!empty($election_ward_no_id_options)){
                                                    foreach($election_ward_no_id_options as $option){
                                                    $value = (!empty($option['value']) ? $option['value'] : null);
                                                    $label = (!empty($option['label']) ? $option['label'] : $value);
                                                    $selected = ( $value == $rec ? 'selected' : null );
                                                    ?>
                                                    <option 
                                                        <?php echo $selected; ?> value="<?php echo $value; ?>"><?php echo $label; ?>
                                                    </option>
                                                    <?php
                                                    }
                                                    }
                                                    ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label class="control-label" for="computarized_property_no">COMPUTARIZED PROPERTY NO. <span class="text-danger">*</span></label>
                                            <div id="ctrl-computarized_property_no-holder" class=""> 
                                                <input id="ctrl-computarized_property_no"  value="<?php  echo $data['computarized_property_no']; ?>" type="text" placeholder="Enter COMPUTARIZED PROPERTY NO."  required="" name="computarized_property_no"  class="form-control " />
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <label class="control-label" for="road_name_for_property">Road Name For Property <span class="text-danger">*</span></label>
                                                <div id="ctrl-road_name_for_property-holder" class=""> 
                                                    <input id="ctrl-road_name_for_property"  value="<?php  echo $data['road_name_for_property']; ?>" type="text" placeholder="Enter Road Name For Property"  required="" name="road_name_for_property"  class="form-control " />
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label class="control-label" for="pincode_for_property">Pincode For Property <span class="text-danger">*</span></label>
                                                    <div id="ctrl-pincode_for_property-holder" class=""> 
                                                        <input id="ctrl-pincode_for_property"  value="<?php  echo $data['pincode_for_property']; ?>" type="number" placeholder="Enter Pincode For Property" step="1"  required="" name="pincode_for_property"  class="form-control " />
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label" for="upload_architech_affidavit">Upload Architech Affidavit <span class="text-danger">*</span></label>
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
                                                            <label class="control-label" for="upload_project_consultant_report">Upload Project Consultant Report <span class="text-danger">*</span></label>
                                                            <div id="ctrl-upload_project_consultant_report-holder" class=""> 
                                                                <div class="dropzone required" input="#ctrl-upload_project_consultant_report" fieldname="upload_project_consultant_report"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" extensions=".jpg,.png,.gif,.jpeg,.pdf" filesize="3" maximum="1">
                                                                    <input name="upload_project_consultant_report" id="ctrl-upload_project_consultant_report" required="" class="dropzone-input form-control" value="<?php  echo $data['upload_project_consultant_report']; ?>" type="text"  />
                                                                        <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                        <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                                    </div>
                                                                </div>
                                                                <?php Html :: uploaded_files_list($data['upload_project_consultant_report'], '#ctrl-upload_project_consultant_report'); ?>
                                                            </div>
                                                            <div class="form-group ">
                                                                <label class="control-label" for="upload_property_location_map">Upload Property Location Map <span class="text-danger">*</span></label>
                                                                <div id="ctrl-upload_property_location_map-holder" class=""> 
                                                                    <div class="dropzone required" input="#ctrl-upload_property_location_map" fieldname="upload_property_location_map"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" extensions=".jpg,.png,.gif,.jpeg,.pdf" filesize="3" maximum="1">
                                                                        <input name="upload_property_location_map" id="ctrl-upload_property_location_map" required="" class="dropzone-input form-control" value="<?php  echo $data['upload_property_location_map']; ?>" type="text"  />
                                                                            <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                            <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                                        </div>
                                                                    </div>
                                                                    <?php Html :: uploaded_files_list($data['upload_property_location_map'], '#ctrl-upload_property_location_map'); ?>
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
