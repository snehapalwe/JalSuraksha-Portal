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
                    <h4 class="record-title"><strong style='color: black;'>NEW DRAINAGE NOC JAL OC APPLICATION</strong></h4>
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
                        <form id="drainage_noc_jal_oc-add-form" role="form" novalidate enctype="multipart/form-data" class="form page-form form-vertical needs-validation" action="<?php print_link("drainage_noc_jal_oc/add?csrf_token=$csrf_token") ?>" method="post">
                            <div>
                                <div class="form-group ">
                                    <label class="control-label" for="applicant_name">APPLICANT NAME  <span class="text-danger">*</span></label>
                                    <div id="ctrl-applicant_name-holder" class=""> 
                                        <input id="ctrl-applicant_name"  value="<?php  echo $this->set_field_value('applicant_name',""); ?>" type="text" placeholder="Enter Applicant Name"  required="" name="applicant_name"  class="form-control " />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label class="control-label" for="house_building_society_name">HOUSE / BUILDING / SOCIETY NAME  <span class="text-danger">*</span></label>
                                        <div id="ctrl-house_building_society_name-holder" class=""> 
                                            <input id="ctrl-house_building_society_name"  value="<?php  echo $this->set_field_value('house_building_society_name',""); ?>" type="text" placeholder="Enter House Building Society Name"  required="" name="house_building_society_name"  class="form-control " />
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label class="control-label" for="house_or_block_number">HOUSE / BLOCK NO.  <span class="text-danger">*</span></label>
                                            <div id="ctrl-house_or_block_number-holder" class=""> 
                                                <input id="ctrl-house_or_block_number"  value="<?php  echo $this->set_field_value('house_or_block_number',""); ?>" type="text" placeholder="Enter House Or Block Number"  required="" name="house_or_block_number"  class="form-control " />
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <label class="control-label" for="floor">FLOOR  <span class="text-danger">*</span></label>
                                                <div id="ctrl-floor-holder" class=""> 
                                                    <input id="ctrl-floor"  value="<?php  echo $this->set_field_value('floor',""); ?>" type="text" placeholder="Enter Floor"  required="" name="floor"  class="form-control " />
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label class="control-label" for="place_or_division_or_village">PLACE / DIVISION / VILLAGE <span class="text-danger">*</span></label>
                                                    <div id="ctrl-place_or_division_or_village-holder" class=""> 
                                                        <input id="ctrl-place_or_division_or_village"  value="<?php  echo $this->set_field_value('place_or_division_or_village',""); ?>" type="text" placeholder="Enter Place Or Division Or Village"  required="" name="place_or_division_or_village"  class="form-control " />
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label" for="taluka">TALUKA  <span class="text-danger">*</span></label>
                                                        <div id="ctrl-taluka-holder" class=""> 
                                                            <input id="ctrl-taluka"  value="<?php  echo $this->set_field_value('taluka',""); ?>" type="text" placeholder="Enter Taluka"  required="" name="taluka"  class="form-control " />
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="control-label" for="zone_id">Zone <span class="text-danger">*</span></label>
                                                            <div id="ctrl-zone_id-holder" class=""> 
                                                                <select required=""  id="ctrl-zone_id" name="zone_id"  placeholder="Select a value ..."    class="custom-select" >
                                                                    <option value="">Select a value ...</option>
                                                                    <?php 
                                                                    $zone_id_options = $comp_model -> drainage_noc_jal_oc_zone_id_option_list();
                                                                    if(!empty($zone_id_options)){
                                                                    foreach($zone_id_options as $option){
                                                                    $value = (!empty($option['value']) ? $option['value'] : null);
                                                                    $label = (!empty($option['label']) ? $option['label'] : $value);
                                                                    $selected = $this->set_field_selected('zone_id',$value, "");
                                                                    ?>
                                                                    <option <?php echo $selected; ?> value="<?php echo $value; ?>">
                                                                        <?php echo $label; ?>
                                                                    </option>
                                                                    <?php
                                                                    }
                                                                    }
                                                                    ?>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="control-label" for="mobile_no">Mobile No. <span class="text-danger">*</span></label>
                                                            <div id="ctrl-mobile_no-holder" class=""> 
                                                                <input id="ctrl-mobile_no"  value="<?php  echo $this->set_field_value('mobile_no',""); ?>" type="number" placeholder="Enter Mobile No." min="1000000000" max="9999999999" step="1"  required="" name="mobile_no"  class="form-control " />
                                                                </div>
                                                            </div>
                                                            <div class="form-group ">
                                                                <label class="control-label" for="email">EMAIL  <span class="text-danger">*</span></label>
                                                                <div id="ctrl-email-holder" class=""> 
                                                                    <input id="ctrl-email"  value="<?php  echo $this->set_field_value('email',""); ?>" type="email" placeholder="Enter Email"  required="" name="email"  class="form-control " />
                                                                    </div>
                                                                </div>
                                                                <div class="form-group ">
                                                                    <label class="control-label" for="architect_name">ARCHITECT NAME  <span class="text-danger">*</span></label>
                                                                    <div id="ctrl-architect_name-holder" class=""> 
                                                                        <input id="ctrl-architect_name"  value="<?php  echo $this->set_field_value('architect_name',""); ?>" type="text" placeholder="Enter Architect Name"  required="" name="architect_name"  class="form-control " />
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group ">
                                                                        <label class="control-label" for="property_type_id">Property Type <span class="text-danger">*</span></label>
                                                                        <div id="ctrl-property_type_id-holder" class=""> 
                                                                            <select required=""  id="ctrl-property_type_id" name="property_type_id"  placeholder="Select a value ..."    class="custom-select" >
                                                                                <option value="">Select a value ...</option>
                                                                                <?php 
                                                                                $property_type_id_options = $comp_model -> drainage_noc_jal_oc_property_type_id_option_list();
                                                                                if(!empty($property_type_id_options)){
                                                                                foreach($property_type_id_options as $option){
                                                                                $value = (!empty($option['value']) ? $option['value'] : null);
                                                                                $label = (!empty($option['label']) ? $option['label'] : $value);
                                                                                $selected = $this->set_field_selected('property_type_id',$value, "");
                                                                                ?>
                                                                                <option <?php echo $selected; ?> value="<?php echo $value; ?>">
                                                                                    <?php echo $label; ?>
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
                                                                            <label class="control-label" for="property_survey_no_or_city_survey_no">Property Survey No. Or City Survey No. <span class="text-danger">*</span></label>
                                                                            <div id="ctrl-property_survey_no_or_city_survey_no-holder" class=""> 
                                                                                <input id="ctrl-property_survey_no_or_city_survey_no"  value="<?php  echo $this->set_field_value('property_survey_no_or_city_survey_no',""); ?>" type="text" placeholder="Enter Property Survey No. Or City Survey No."  required="" name="property_survey_no_or_city_survey_no"  class="form-control " />
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group ">
                                                                                <label class="control-label" for="mouje_gaon_name">Mouje Name <span class="text-danger">*</span></label>
                                                                                <div id="ctrl-mouje_gaon_name-holder" class=""> 
                                                                                    <input id="ctrl-mouje_gaon_name"  value="<?php  echo $this->set_field_value('mouje_gaon_name',""); ?>" type="text" placeholder="Enter Mouje Name"  required="" name="mouje_gaon_name"  class="form-control " />
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group ">
                                                                                    <label class="control-label" for="place_division_gaon_for_property">Place / Division / Goan For Property <span class="text-danger">*</span></label>
                                                                                    <div id="ctrl-place_division_gaon_for_property-holder" class=""> 
                                                                                        <input id="ctrl-place_division_gaon_for_property"  value="<?php  echo $this->set_field_value('place_division_gaon_for_property',""); ?>" type="text" placeholder="Enter Place / Division / Goan For Property"  required="" name="place_division_gaon_for_property"  class="form-control " />
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="form-group ">
                                                                                        <label class="control-label" for="property_taluka">PROPERTY TALUKA  <span class="text-danger">*</span></label>
                                                                                        <div id="ctrl-property_taluka-holder" class=""> 
                                                                                            <input id="ctrl-property_taluka"  value="<?php  echo $this->set_field_value('property_taluka',""); ?>" type="text" placeholder="Enter Property Taluka"  required="" name="property_taluka"  class="form-control " />
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="form-group ">
                                                                                            <label class="control-label" for="zone_property_id">Zone Property <span class="text-danger">*</span></label>
                                                                                            <div id="ctrl-zone_property_id-holder" class=""> 
                                                                                                <select required=""  id="ctrl-zone_property_id" name="zone_property_id"  placeholder="Select a value ..."    class="custom-select" >
                                                                                                    <option value="">Select a value ...</option>
                                                                                                    <?php 
                                                                                                    $zone_property_id_options = $comp_model -> drainage_noc_jal_oc_zone_property_id_option_list();
                                                                                                    if(!empty($zone_property_id_options)){
                                                                                                    foreach($zone_property_id_options as $option){
                                                                                                    $value = (!empty($option['value']) ? $option['value'] : null);
                                                                                                    $label = (!empty($option['label']) ? $option['label'] : $value);
                                                                                                    $selected = $this->set_field_selected('zone_property_id',$value, "");
                                                                                                    ?>
                                                                                                    <option <?php echo $selected; ?> value="<?php echo $value; ?>">
                                                                                                        <?php echo $label; ?>
                                                                                                    </option>
                                                                                                    <?php
                                                                                                    }
                                                                                                    }
                                                                                                    ?>
                                                                                                </select>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="form-group ">
                                                                                            <label class="control-label" for="property_type_as_per_application_id">Property Type As Per Application <span class="text-danger">*</span></label>
                                                                                            <div id="ctrl-property_type_as_per_application_id-holder" class=""> 
                                                                                                <select required=""  id="ctrl-property_type_as_per_application_id" name="property_type_as_per_application_id"  placeholder="Select a value ..."    class="custom-select" >
                                                                                                    <option value="">Select a value ...</option>
                                                                                                    <?php 
                                                                                                    $property_type_as_per_application_id_options = $comp_model -> drainage_noc_jal_oc_property_type_as_per_application_id_option_list();
                                                                                                    if(!empty($property_type_as_per_application_id_options)){
                                                                                                    foreach($property_type_as_per_application_id_options as $option){
                                                                                                    $value = (!empty($option['value']) ? $option['value'] : null);
                                                                                                    $label = (!empty($option['label']) ? $option['label'] : $value);
                                                                                                    $selected = $this->set_field_selected('property_type_as_per_application_id',$value, "");
                                                                                                    ?>
                                                                                                    <option <?php echo $selected; ?> value="<?php echo $value; ?>">
                                                                                                        <?php echo $label; ?>
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
                                                                                                <input id="ctrl-property_usage"  value="<?php  echo $this->set_field_value('property_usage',""); ?>" type="text" placeholder="Enter Property Usage"  required="" name="property_usage"  class="form-control " />
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group ">
                                                                                                <label class="control-label" for="property_usage_type_id">Property Usage Type <span class="text-danger">*</span></label>
                                                                                                <div id="ctrl-property_usage_type_id-holder" class=""> 
                                                                                                    <select required=""  id="ctrl-property_usage_type_id" name="property_usage_type_id"  placeholder="Select a value ..."    class="custom-select" >
                                                                                                        <option value="">Select a value ...</option>
                                                                                                        <?php 
                                                                                                        $property_usage_type_id_options = $comp_model -> drainage_noc_jal_oc_property_usage_type_id_option_list();
                                                                                                        if(!empty($property_usage_type_id_options)){
                                                                                                        foreach($property_usage_type_id_options as $option){
                                                                                                        $value = (!empty($option['value']) ? $option['value'] : null);
                                                                                                        $label = (!empty($option['label']) ? $option['label'] : $value);
                                                                                                        $selected = $this->set_field_selected('property_usage_type_id',$value, "current_timestamp()");
                                                                                                        ?>
                                                                                                        <option <?php echo $selected; ?> value="<?php echo $value; ?>">
                                                                                                            <?php echo $label; ?>
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
                                                                                                    <input id="ctrl-wing"  value="<?php  echo $this->set_field_value('wing',""); ?>" type="text" placeholder="Enter Wing"  required="" name="wing"  class="form-control " />
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="form-group ">
                                                                                                    <label class="control-label" for="road_name">ROAD NAME  <span class="text-danger">*</span></label>
                                                                                                    <div id="ctrl-road_name-holder" class=""> 
                                                                                                        <input id="ctrl-road_name"  value="<?php  echo $this->set_field_value('road_name',""); ?>" type="text" placeholder="Enter Road Name"  required="" name="road_name"  class="form-control " />
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="form-group ">
                                                                                                        <label class="control-label" for="election_ward_no_id">Election Ward No. <span class="text-danger">*</span></label>
                                                                                                        <div id="ctrl-election_ward_no_id-holder" class=""> 
                                                                                                            <select required=""  id="ctrl-election_ward_no_id" name="election_ward_no_id"  placeholder="Select a value ..."    class="custom-select" >
                                                                                                                <option value="">Select a value ...</option>
                                                                                                                <?php 
                                                                                                                $election_ward_no_id_options = $comp_model -> drainage_noc_jal_oc_election_ward_no_id_option_list();
                                                                                                                if(!empty($election_ward_no_id_options)){
                                                                                                                foreach($election_ward_no_id_options as $option){
                                                                                                                $value = (!empty($option['value']) ? $option['value'] : null);
                                                                                                                $label = (!empty($option['label']) ? $option['label'] : $value);
                                                                                                                $selected = $this->set_field_selected('election_ward_no_id',$value, "");
                                                                                                                ?>
                                                                                                                <option <?php echo $selected; ?> value="<?php echo $value; ?>">
                                                                                                                    <?php echo $label; ?>
                                                                                                                </option>
                                                                                                                <?php
                                                                                                                }
                                                                                                                }
                                                                                                                ?>
                                                                                                            </select>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="form-group ">
                                                                                                        <label class="control-label" for="computarized_property_no">Computarized Property No. <span class="text-danger">*</span></label>
                                                                                                        <div id="ctrl-computarized_property_no-holder" class=""> 
                                                                                                            <input id="ctrl-computarized_property_no"  value="<?php  echo $this->set_field_value('computarized_property_no',""); ?>" type="text" placeholder="Enter Computarized Property No."  required="" name="computarized_property_no"  class="form-control " />
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="form-group ">
                                                                                                            <label class="control-label" for="road_name_for_property">ROAD NAME FOR PROPERTY  <span class="text-danger">*</span></label>
                                                                                                            <div id="ctrl-road_name_for_property-holder" class=""> 
                                                                                                                <input id="ctrl-road_name_for_property"  value="<?php  echo $this->set_field_value('road_name_for_property',""); ?>" type="text" placeholder="Enter Road Name For Property"  required="" name="road_name_for_property"  class="form-control " />
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="form-group ">
                                                                                                                <label class="control-label" for="pincode_for_property">PINCODE FOR PROPERTY  <span class="text-danger">*</span></label>
                                                                                                                <div id="ctrl-pincode_for_property-holder" class=""> 
                                                                                                                    <input id="ctrl-pincode_for_property"  value="<?php  echo $this->set_field_value('pincode_for_property',""); ?>" type="number" placeholder="Enter Pincode For Property" step="1"  required="" name="pincode_for_property"  class="form-control " />
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                                <div class="form-group ">
                                                                                                                    <label class="control-label" for="is_construction_commence_ceriticate_available">Is Construction Commence Certificate Available <span class="text-danger">*</span></label>
                                                                                                                    <div id="ctrl-is_construction_commence_ceriticate_available-holder" class=""> 
                                                                                                                        <select required=""  id="ctrl-is_construction_commence_ceriticate_available" name="is_construction_commence_ceriticate_available"  placeholder="Select a value ..."    class="custom-select" >
                                                                                                                            <option value="">Select a value ...</option>
                                                                                                                            <?php
                                                                                                                            $is_construction_commence_ceriticate_available_options = Menu :: $demand;
                                                                                                                            if(!empty($is_construction_commence_ceriticate_available_options)){
                                                                                                                            foreach($is_construction_commence_ceriticate_available_options as $option){
                                                                                                                            $value = $option['value'];
                                                                                                                            $label = $option['label'];
                                                                                                                            $selected = $this->set_field_selected('is_construction_commence_ceriticate_available', $value, "");
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
                                                                                                                    <label class="control-label" for="commence_ceriticate_number">Commence Ceriticate Number <span class='text-danger'>*</span> </label>
                                                                                                                    <div id="ctrl-commence_ceriticate_number-holder" class=""> 
                                                                                                                        <input id="ctrl-commence_ceriticate_number"  value="<?php  echo $this->set_field_value('commence_ceriticate_number',""); ?>" type="text" placeholder="Enter Commence Ceriticate Number"  name="commence_ceriticate_number"  class="form-control " />
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                    <div class="form-group ">
                                                                                                                        <label class="control-label" for="commence_ceriticate_date">Commence Certificate Date <span class='text-danger'>*</span> </label>
                                                                                                                        <div id="ctrl-commence_ceriticate_date-holder" class="input-group"> 
                                                                                                                            <input id="ctrl-commence_ceriticate_date" class="form-control datepicker  datepicker"  value="<?php  echo $this->set_field_value('commence_ceriticate_date',""); ?>" type="datetime" name="commence_ceriticate_date" placeholder="Enter Commence Certificate Date" data-enable-time="false" data-min-date="" data-max-date="" data-date-format="Y-m-d" data-alt-format="F j, Y" data-inline="false" data-no-calendar="false" data-mode="single" />
                                                                                                                                <div class="input-group-append">
                                                                                                                                    <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <div class="form-group ">
                                                                                                                            <label class="control-label" for="upload_architech_affidavit">UPLOAD ARCHITECT AFFIDAVIT  <span class="text-danger">*</span></label>
                                                                                                                            <div id="ctrl-upload_architech_affidavit-holder" class=""> 
                                                                                                                                <div class="dropzone required" input="#ctrl-upload_architech_affidavit" fieldname="upload_architech_affidavit"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" extensions=".jpg,.png,.gif,.jpeg,.pdf" filesize="3" maximum="1">
                                                                                                                                    <input name="upload_architech_affidavit" id="ctrl-upload_architech_affidavit" required="" class="dropzone-input form-control" value="<?php  echo $this->set_field_value('upload_architech_affidavit',""); ?>" type="text"  />
                                                                                                                                        <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                                                                                        <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                            <div class="form-group ">
                                                                                                                                <label class="control-label" for="upload_construction_permission_and_cerified_map_copy">UPLOAD CONSTRUCTION PERMISSION & CERTIFIED MAP COPY  <span class="text-danger">*</span></label>
                                                                                                                                <div id="ctrl-upload_construction_permission_and_cerified_map_copy-holder" class=""> 
                                                                                                                                    <div class="dropzone required" input="#ctrl-upload_construction_permission_and_cerified_map_copy" fieldname="upload_construction_permission_and_cerified_map_copy"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" extensions=".jpg,.png,.gif,.jpeg,.pdf" filesize="3" maximum="1">
                                                                                                                                        <input name="upload_construction_permission_and_cerified_map_copy" id="ctrl-upload_construction_permission_and_cerified_map_copy" required="" class="dropzone-input form-control" value="<?php  echo $this->set_field_value('upload_construction_permission_and_cerified_map_copy',""); ?>" type="text"  />
                                                                                                                                            <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                                                                                            <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                                                                                                        </div>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                                <div class="form-group ">
                                                                                                                                    <label class="control-label" for="upload_architect_or_project_consultant_report">UPLOAD ARCHITECT / PROJECT CONSULTANT REPORT <span class="text-danger">*</span></label>
                                                                                                                                    <div id="ctrl-upload_architect_or_project_consultant_report-holder" class=""> 
                                                                                                                                        <div class="dropzone required" input="#ctrl-upload_architect_or_project_consultant_report" fieldname="upload_architect_or_project_consultant_report"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" extensions=".jpg,.png,.gif,.jpeg,.pdf" filesize="3" maximum="1">
                                                                                                                                            <input name="upload_architect_or_project_consultant_report" id="ctrl-upload_architect_or_project_consultant_report" required="" class="dropzone-input form-control" value="<?php  echo $this->set_field_value('upload_architect_or_project_consultant_report',""); ?>" type="text"  />
                                                                                                                                                <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                                                                                                <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                                                                                                            </div>
                                                                                                                                        </div>
                                                                                                                                    </div>
                                                                                                                                    <div class="form-group ">
                                                                                                                                        <label class="control-label" for="upload_property_location_map">UPLOAD PROPERTY LOCATION MAP  <span class="text-danger">*</span></label>
                                                                                                                                        <div id="ctrl-upload_property_location_map-holder" class=""> 
                                                                                                                                            <div class="dropzone required" input="#ctrl-upload_property_location_map" fieldname="upload_property_location_map"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" extensions=".jpg,.png,.gif,.jpeg,.pdf" filesize="3" maximum="1">
                                                                                                                                                <input name="upload_property_location_map" id="ctrl-upload_property_location_map" required="" class="dropzone-input form-control" value="<?php  echo $this->set_field_value('upload_property_location_map',""); ?>" type="text"  />
                                                                                                                                                    <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                                                                                                    <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                                                                                                                </div>
                                                                                                                                            </div>
                                                                                                                                        </div>
                                                                                                                                        <div class="form-group ">
                                                                                                                                            <label class="control-label" for="upload_noc_copy_given_for_construction_permission">UPLOAD NOC COPY FOR CONSTRUCTION PERMISSION  <span class="text-danger">*</span></label>
                                                                                                                                            <div id="ctrl-upload_noc_copy_given_for_construction_permission-holder" class=""> 
                                                                                                                                                <div class="dropzone required" input="#ctrl-upload_noc_copy_given_for_construction_permission" fieldname="upload_noc_copy_given_for_construction_permission"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" extensions=".jpg,.png,.gif,.jpeg,.pdf" filesize="3" maximum="1">
                                                                                                                                                    <input name="upload_noc_copy_given_for_construction_permission" id="ctrl-upload_noc_copy_given_for_construction_permission" required="" class="dropzone-input form-control" value="<?php  echo $this->set_field_value('upload_noc_copy_given_for_construction_permission',""); ?>" type="text"  />
                                                                                                                                                        <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                                                                                                        <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                                                                                                                    </div>
                                                                                                                                                </div>
                                                                                                                                            </div>
                                                                                                                                            <div class="form-group ">
                                                                                                                                                <label class="control-label" for="upload_map_prepared_by_licensed_plumber">UPLOAD MAP PREPARED BY LICENSED PLUMBER  <span class="text-danger">*</span></label>
                                                                                                                                                <div id="ctrl-upload_map_prepared_by_licensed_plumber-holder" class=""> 
                                                                                                                                                    <div class="dropzone required" input="#ctrl-upload_map_prepared_by_licensed_plumber" fieldname="upload_map_prepared_by_licensed_plumber"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" extensions=".jpg,.png,.gif,.jpeg,.pdf" filesize="3" maximum="1">
                                                                                                                                                        <input name="upload_map_prepared_by_licensed_plumber" id="ctrl-upload_map_prepared_by_licensed_plumber" required="" class="dropzone-input form-control" value="<?php  echo $this->set_field_value('upload_map_prepared_by_licensed_plumber',""); ?>" type="text"  />
                                                                                                                                                            <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                                                                                                            <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                                                                                                                        </div>
                                                                                                                                                    </div>
                                                                                                                                                </div>
                                                                                                                                            </fieldset>
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
                                                                                                                <div  class="">
                                                                                                                    <div class="container">
                                                                                                                        <div class="row ">
                                                                                                                            <div class="col-md-12 comp-grid">
                                                                                                                                <div class=""><script>
                                                                                                                                    $(function () {
                                                                                                                                    // Select dropdown and fields
                                                                                                                                    var $select   = $('#ctrl-is_construction_commence_ceriticate_available');
                                                                                                                                    var $ccNumber = $('#ctrl-commence_ceriticate_number');
                                                                                                                                    var $ccDate   = $('#ctrl-commence_ceriticate_date');
                                                                                                                                    // holders (these wrap the inputs)
                                                                                                                                    var $ccNumberHolder = $('#ctrl-commence_ceriticate_number-holder');
                                                                                                                                    var $ccDateHolder   = $('#ctrl-commence_ceriticate_date-holder');
                                                                                                                                    // labels (just before each holder)
                                                                                                                                    var $ccNumberLabel = $ccNumberHolder.prev('label');
                                                                                                                                    var $ccDateLabel   = $ccDateHolder.prev('label');
                                                                                                                                    function toggleCCFields() {
                                                                                                                                    var val = $select.val();
                                                                                                                                    if (val === 'NO') {
                                                                                                                                    // Disable + clear + remove required from all related fields
                                                                                                                                    $ccNumber.val('').removeAttr('required').prop('disabled', true);
                                                                                                                                    $ccDate.val('').removeAttr('required').prop('disabled', true);
                                                                                                                                    // Also disable any extra flatpickr-generated input inside the holder
                                                                                                                                    $ccDateHolder.find('input').each(function() {
                                                                                                                                    $(this).removeAttr('required').prop('disabled', true).val('');
                                                                                                                                    });
                                                                                                                                    // Hide both fields and their labels
                                                                                                                                    $ccNumberHolder.hide();
                                                                                                                                    $ccDateHolder.hide();
                                                                                                                                    $ccNumberLabel.hide();
                                                                                                                                    $ccDateLabel.hide();
                                                                                                                                    } else {
                                                                                                                                    // Enable + set required again
                                                                                                                                    $ccNumber.prop('disabled', false).attr('required', true);
                                                                                                                                    $ccDate.prop('disabled', false).attr('required', true);
                                                                                                                                    // Also enable any flatpickr input in the holder
                                                                                                                                    $ccDateHolder.find('input').each(function() {
                                                                                                                                    $(this).prop('disabled', false).attr('required', true);
                                                                                                                                    });
                                                                                                                                    // Show fields and labels
                                                                                                                                    $ccNumberHolder.show();
                                                                                                                                    $ccDateHolder.show();
                                                                                                                                    $ccNumberLabel.show();
                                                                                                                                    $ccDateLabel.show();
                                                                                                                                    }
                                                                                                                                    }
                                                                                                                                    // Run when dropdown changes
                                                                                                                                    $select.on('change input', toggleCCFields);
                                                                                                                                    // Run once on page load
                                                                                                                                    toggleCCFields();
                                                                                                                                    // Extra safety: just before form submit, recheck required fields
                                                                                                                                    $('form').on('submit', function() {
                                                                                                                                    if ($select.val() === 'NO') {
                                                                                                                                    $ccNumber.removeAttr('required').prop('disabled', true);
                                                                                                                                    $ccDate.removeAttr('required').prop('disabled', true);
                                                                                                                                    $ccDateHolder.find('input').each(function() {
                                                                                                                                    $(this).removeAttr('required').prop('disabled', true);
                                                                                                                                    });
                                                                                                                                    }
                                                                                                                                    });
                                                                                                                                    });
                                                                                                                                </script>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </section>
<script>
 $.getJSON("https://singlewindowsystemkdmc.in/api/common/jal_oc/<?php echo USER_NAME ?>", function(data) {
    data.forEach(function(group) {
        var $ctrl = $("#ctrl-" + group.field);

        if ($ctrl.is("select")) {
            // Try to select option by its visible text (label)
            var matched = false;
            $ctrl.find("option").each(function() {
                if ($(this).text().trim() === group.value.trim()) {
                    $(this).prop("selected", true);
                    matched = true;
                    return false; // stop loop
                }
            });

            // Fallback: if label not matched, try selecting by value
            if (!matched) {
                $ctrl.val(group.value);
            }

        } else {
            // For inputs, textareas, etc.
            $ctrl.val(group.value);
        }

        // Handle readonly / disabled logic
        if (group.value && group.value.trim() !== "") {
            $ctrl.prop("readonly", true);
            // For selects, use disable instead of readonly
            if ($ctrl.is("select")) {
                $ctrl.css('pointer-events', 'none');
            } else {
                $ctrl.css('pointer-events', 'none');
            }
        } else {
            $ctrl.removeAttr("readonly");
            $ctrl.prop("disabled", false);
        }

        // Hide fields with URL values
        if (group.value.startsWith("http://") || group.value.startsWith("https://")) {
            $ctrl.parents(".form-group").hide();
        }
    });
});

</script>