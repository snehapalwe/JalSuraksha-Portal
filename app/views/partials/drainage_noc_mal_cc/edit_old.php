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
                    <h4 class="record-title">Edit  Drainage Noc Mal Cc</h4>
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
                        <form novalidate  id="" role="form" enctype="multipart/form-data"  class="form page-form form-vertical needs-validation" action="<?php print_link("drainage_noc_mal_cc/edit/$page_id/?csrf_token=$csrf_token"); ?>" method="post">
                            <div>
                                <div class="form-group ">
                                    <label class="control-label" for="applicant_name">APPLICANT NAME  <span class="text-danger">*</span></label>
                                    <div id="ctrl-applicant_name-holder" class=""> 
                                        <input id="ctrl-applicant_name"  value="<?php  echo $data['applicant_name']; ?>" type="text" placeholder="Enter Applicant Name"  readonly required="" name="applicant_name"  class="form-control " />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label class="control-label" for="house_building_society_name">HOUSE / BUILDING / SOCIETY NAME <span class="text-danger">*</span></label>
                                        <div id="ctrl-house_building_society_name-holder" class=""> 
                                            <input id="ctrl-house_building_society_name"  value="<?php  echo $data['house_building_society_name']; ?>" type="text" placeholder="Enter House Building Society Name"  readonly required="" name="house_building_society_name"  class="form-control " />
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label class="control-label" for="house_or_block_number">HOUSE / BLOCK NO. <span class="text-danger">*</span></label>
                                            <div id="ctrl-house_or_block_number-holder" class=""> 
                                                <input id="ctrl-house_or_block_number"  value="<?php  echo $data['house_or_block_number']; ?>" type="text" placeholder="Enter House Or Block Number"  readonly required="" name="house_or_block_number"  class="form-control " />
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <label class="control-label" for="floor">FLOOR  <span class="text-danger">*</span></label>
                                                <div id="ctrl-floor-holder" class=""> 
                                                    <input id="ctrl-floor"  value="<?php  echo $data['floor']; ?>" type="text" placeholder="Enter Floor"  readonly required="" name="floor"  class="form-control " />
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label class="control-label" for="place_or_division_or_village">PLACE DIVISION OR VILLAGE <span class="text-danger">*</span></label>
                                                    <div id="ctrl-place_or_division_or_village-holder" class=""> 
                                                        <input id="ctrl-place_or_division_or_village"  value="<?php  echo $data['place_or_division_or_village']; ?>" type="text" placeholder="Enter PLACE DIVISION OR VILLAGE"  readonly required="" name="place_or_division_or_village"  class="form-control " />
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label" for="taluka">TALUKA  <span class="text-danger">*</span></label>
                                                        <div id="ctrl-taluka-holder" class=""> 
                                                            <input id="ctrl-taluka"  value="<?php  echo $data['taluka']; ?>" type="text" placeholder="Enter Taluka"  readonly required="" name="taluka"  class="form-control " />
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="control-label" for="zone_id">ZONE <span class="text-danger">*</span></label>
                                                            <div id="ctrl-zone_id-holder" class=""> 
                                                                <select required=""  id="ctrl-zone_id" name="zone_id"  placeholder="Select a value ..."    class="custom-select" >
                                                                    <option value="">Select a value ...</option>
                                                                    <?php
                                                                    $rec = $data['zone_id'];
                                                                    $zone_id_options = $comp_model -> drainage_noc_mal_cc_zone_id_option_list();
                                                                    if(!empty($zone_id_options)){
                                                                    foreach($zone_id_options as $option){
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
                                                            <label class="control-label" for="mobile_no">MOBILE NO. <span class="text-danger">*</span></label>
                                                            <div id="ctrl-mobile_no-holder" class=""> 
                                                                <input id="ctrl-mobile_no"  value="<?php  echo $data['mobile_no']; ?>" type="number" placeholder="Enter MOBILE NO." min="1000000000" max="9999999999" step="1"  readonly required="" name="mobile_no"  class="form-control " />
                                                                </div>
                                                            </div>
                                                            <div class="form-group ">
                                                                <label class="control-label" for="email">EMAIL  <span class="text-danger">*</span></label>
                                                                <div id="ctrl-email-holder" class=""> 
                                                                    <input id="ctrl-email"  value="<?php  echo $data['email']; ?>" type="email" placeholder="Enter Email"  readonly required="" name="email"  class="form-control " />
                                                                    </div>
                                                                </div>
                                                                <div class="form-group ">
                                                                    <label class="control-label" for="architect_name">ARCHITECT NAME  <span class="text-danger">*</span></label>
                                                                    <div id="ctrl-architect_name-holder" class=""> 
                                                                        <input id="ctrl-architect_name"  value="<?php  echo $data['architect_name']; ?>" type="text" placeholder="Enter Architect Name"  readonly required="" name="architect_name"  class="form-control " />
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group ">
                                                                        <label class="control-label" for="property_type_id">PROPERTY TYPE <span class="text-danger">*</span></label>
                                                                        <div id="ctrl-property_type_id-holder" class=""> 
                                                                            <select required=""  id="ctrl-property_type_id" name="property_type_id"  placeholder="Select a value ..."    class="custom-select" >
                                                                                <option value="">Select a value ...</option>
                                                                                <?php
                                                                                $rec = $data['property_type_id'];
                                                                                $property_type_id_options = $comp_model -> drainage_noc_mal_cc_property_type_id_option_list();
                                                                                if(!empty($property_type_id_options)){
                                                                                foreach($property_type_id_options as $option){
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
                                                                    <fieldset><legend>REQUIRED APPLICATION RELATED INFORMATION</legend>
                                                                        <div class="form-group ">
                                                                            <label class="control-label" for="property_survey_no_or_city_survey_no">PROPERTY SURVEY NO. OR CITY SURVEY NO. <span class="text-danger">*</span></label>
                                                                            <div id="ctrl-property_survey_no_or_city_survey_no-holder" class=""> 
                                                                                <input id="ctrl-property_survey_no_or_city_survey_no"  value="<?php  echo $data['property_survey_no_or_city_survey_no']; ?>" type="text" placeholder="Enter PROPERTY SURVEY NO. OR CITY SURVEY NO."  readonly required="" name="property_survey_no_or_city_survey_no"  class="form-control " />
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group ">
                                                                                <label class="control-label" for="mouje_gaon_name">MOUJE / VILLAGE NAME <span class="text-danger">*</span></label>
                                                                                <div id="ctrl-mouje_gaon_name-holder" class=""> 
                                                                                    <input id="ctrl-mouje_gaon_name"  value="<?php  echo $data['mouje_gaon_name']; ?>" type="text" placeholder="Enter MOUJE / VILLAGE NAME"  readonly required="" name="mouje_gaon_name"  class="form-control " />
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group ">
                                                                                    <label class="control-label" for="place_division_gaon_for_property">PLACE / DIVISION / GOAN FOR PROPERTY <span class="text-danger">*</span></label>
                                                                                    <div id="ctrl-place_division_gaon_for_property-holder" class=""> 
                                                                                        <input id="ctrl-place_division_gaon_for_property"  value="<?php  echo $data['place_division_gaon_for_property']; ?>" type="text" placeholder="Enter PLACE / DIVISION / GOAN FOR PROPERTY"  readonly required="" name="place_division_gaon_for_property"  class="form-control " />
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="form-group ">
                                                                                        <label class="control-label" for="property_taluka">PROPERTY TALUKA  <span class="text-danger">*</span></label>
                                                                                        <div id="ctrl-property_taluka-holder" class=""> 
                                                                                            <input id="ctrl-property_taluka"  value="<?php  echo $data['property_taluka']; ?>" type="text" placeholder="Enter Property Taluka"  readonly required="" name="property_taluka"  class="form-control " />
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="form-group ">
                                                                                            <label class="control-label" for="zone_property_id">Zone Property <span class="text-danger">*</span></label>
                                                                                            <div id="ctrl-zone_property_id-holder" class=""> 
                                                                                                <select required=""  id="ctrl-zone_property_id" name="zone_property_id"  placeholder="Select a value ..."    class="custom-select" >
                                                                                                    <option value="">Select a value ...</option>
                                                                                                    <?php
                                                                                                    $rec = $data['zone_property_id'];
                                                                                                    $zone_property_id_options = $comp_model -> drainage_noc_mal_cc_zone_property_id_option_list();
                                                                                                    if(!empty($zone_property_id_options)){
                                                                                                    foreach($zone_property_id_options as $option){
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
                                                                                            <label class="control-label" for="property_type_as_per_application_id">PROPERTY TYPE AS PER APPLICATION <span class="text-danger">*</span></label>
                                                                                            <div id="ctrl-property_type_as_per_application_id-holder" class=""> 
                                                                                                <select required=""  id="ctrl-property_type_as_per_application_id" name="property_type_as_per_application_id"  placeholder="Select a value ..."    class="custom-select" >
                                                                                                    <option value="">Select a value ...</option>
                                                                                                    <?php
                                                                                                    $rec = $data['property_type_as_per_application_id'];
                                                                                                    $property_type_as_per_application_id_options = $comp_model -> drainage_noc_mal_cc_property_type_as_per_application_id_option_list();
                                                                                                    if(!empty($property_type_as_per_application_id_options)){
                                                                                                    foreach($property_type_as_per_application_id_options as $option){
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
                                                                                            <label class="control-label" for="property_usage">PROPERTY USAGE  <span class="text-danger">*</span></label>
                                                                                            <div id="ctrl-property_usage-holder" class=""> 
                                                                                                <input id="ctrl-property_usage"  value="<?php  echo $data['property_usage']; ?>" type="text" placeholder="Enter Property Usage"  readonly required="" name="property_usage"  class="form-control " />
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group ">
                                                                                                <label class="control-label" for="property_usage_type_id">PROPERTY USAGE TYPE <span class="text-danger">*</span></label>
                                                                                                <div id="ctrl-property_usage_type_id-holder" class=""> 
                                                                                                    <select required=""  id="ctrl-property_usage_type_id" name="property_usage_type_id"  placeholder="Select a value ..."    class="custom-select" >
                                                                                                        <option value="">Select a value ...</option>
                                                                                                        <?php
                                                                                                        $rec = $data['property_usage_type_id'];
                                                                                                        $property_usage_type_id_options = $comp_model -> drainage_noc_mal_cc_property_usage_type_id_option_list();
                                                                                                        if(!empty($property_usage_type_id_options)){
                                                                                                        foreach($property_usage_type_id_options as $option){
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
                                                                                                <label class="control-label" for="wing">WING  <span class="text-danger">*</span></label>
                                                                                                <div id="ctrl-wing-holder" class=""> 
                                                                                                    <input id="ctrl-wing"  value="<?php  echo $data['wing']; ?>" type="text" placeholder="Enter Wing"  required="" name="wing"  class="form-control " />
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="form-group ">
                                                                                                    <label class="control-label" for="road_name">ROAD NAME  <span class="text-danger">*</span></label>
                                                                                                    <div id="ctrl-road_name-holder" class=""> 
                                                                                                        <input id="ctrl-road_name"  value="<?php  echo $data['road_name']; ?>" type="text" placeholder="Enter Road Name"  required="" name="road_name"  class="form-control " />
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="form-group ">
                                                                                                        <label class="control-label" for="election_ward_no_id">ELECTION WARD NO. <span class="text-danger">*</span></label>
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
                                                                                                            <label class="control-label" for="road_name_for_property">ROAD NAME FOR PROPERTY  <span class="text-danger">*</span></label>
                                                                                                            <div id="ctrl-road_name_for_property-holder" class=""> 
                                                                                                                <input id="ctrl-road_name_for_property"  value="<?php  echo $data['road_name_for_property']; ?>" type="text" placeholder="Enter Road Name For Property"  required="" name="road_name_for_property"  class="form-control " />
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="form-group ">
                                                                                                                <label class="control-label" for="pincode_for_property">PINCODE FOR PROPERTY  <span class="text-danger">*</span></label>
                                                                                                                <div id="ctrl-pincode_for_property-holder" class=""> 
                                                                                                                    <input id="ctrl-pincode_for_property"  value="<?php  echo $data['pincode_for_property']; ?>" type="number" placeholder="Enter Pincode For Property" step="1"  required="" name="pincode_for_property"  class="form-control " />
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                                <div class="form-group ">
                                                                                                                    <label class="control-label" for="upload_architech_affidavit">UPLOAD ARCHITECT AFFIDAVIT  <span class="text-danger">*</span></label>
                                                                                                                    <div id="ctrl-upload_architech_affidavit-holder" class=""> 
                                                                                                                        <div class="dropzone required" input="#ctrl-upload_architech_affidavit" fieldname="upload_architech_affidavit"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" filesize="3" maximum="1">
                                                                                                                            <input name="upload_architech_affidavit" id="ctrl-upload_architech_affidavit" required="" class="dropzone-input form-control" value="<?php  echo $data['upload_architech_affidavit']; ?>" type="text"  />
                                                                                                                                <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                                                                                <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <?php Html :: uploaded_files_list($data['upload_architech_affidavit'], '#ctrl-upload_architech_affidavit'); ?>
                                                                                                                    </div>
                                                                                                                    <div class="form-group ">
                                                                                                                        <label class="control-label" for="upload_project_consultant_report">UPLOAD PROJECT CONSULTANT REPORT  <span class="text-danger">*</span></label>
                                                                                                                        <div id="ctrl-upload_project_consultant_report-holder" class=""> 
                                                                                                                            <div class="dropzone required" input="#ctrl-upload_project_consultant_report" fieldname="upload_project_consultant_report"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" filesize="3" maximum="1">
                                                                                                                                <input name="upload_project_consultant_report" id="ctrl-upload_project_consultant_report" required="" class="dropzone-input form-control" value="<?php  echo $data['upload_project_consultant_report']; ?>" type="text"  />
                                                                                                                                    <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                                                                                    <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                            <?php Html :: uploaded_files_list($data['upload_project_consultant_report'], '#ctrl-upload_project_consultant_report'); ?>
                                                                                                                        </div>
                                                                                                                        <div class="form-group ">
                                                                                                                            <label class="control-label" for="upload_property_location_map">UPLOAD PROPERTY LOCATION MAP  <span class="text-danger">*</span></label>
                                                                                                                            <div id="ctrl-upload_property_location_map-holder" class=""> 
                                                                                                                                <div class="dropzone required" input="#ctrl-upload_property_location_map" fieldname="upload_property_location_map"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" filesize="3" maximum="1">
                                                                                                                                    <input name="upload_property_location_map" id="ctrl-upload_property_location_map" required="" class="dropzone-input form-control" value="<?php  echo $data['upload_property_location_map']; ?>" type="text"  />
                                                                                                                                        <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                                                                                        <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                                <?php Html :: uploaded_files_list($data['upload_property_location_map'], '#ctrl-upload_property_location_map'); ?>
                                                                                                                            </div>
                                                                                                                        </fieldset>
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
