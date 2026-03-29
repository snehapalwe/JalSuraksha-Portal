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
                        <?php
                        $counter = 0;
                        if(!empty($data)){
                        $rec_id = (!empty($data['id']) ? urlencode($data['id']) : null);
                        $counter++;
                        ?>
                        <div id="page-report-body" class="">
                            <table class="table table-hover table-borderless table-striped">
                                <!-- Table Body Start -->
                                <tbody class="page-data" id="page-data-<?php echo $page_element_id; ?>">
                                    <tr  class="td-application_type_id">
                                        <th class="title"> Application Type Id: </th>
                                        <td class="value"> <?php echo $data['application_type_id']; ?></td>
                                    </tr>
                                    <tr  class="td-application_type_value">
                                        <th class="title"> Application Type Value: </th>
                                        <td class="value"> <?php echo $data['application_type_value']; ?></td>
                                    </tr>
                                    <tr  class="td-applicant_surname">
                                        <th class="title"> Applicant Surname: </th>
                                        <td class="value"> <?php echo $data['applicant_surname']; ?></td>
                                    </tr>
                                    <tr  class="td-applicant_name">
                                        <th class="title"> Applicant Name: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['applicant_name']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="applicant_name" 
                                                data-title="Enter Applicant Name" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['applicant_name']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-applicant_father_or_spouse_name">
                                        <th class="title"> Applicant Father Or Spouse Name: </th>
                                        <td class="value"> <?php echo $data['applicant_father_or_spouse_name']; ?></td>
                                    </tr>
                                    <tr  class="td-title">
                                        <th class="title"> Title: </th>
                                        <td class="value"> <?php echo $data['title']; ?></td>
                                    </tr>
                                    <tr  class="td-house_building_society_name">
                                        <th class="title"> House Building Society Name: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['house_building_society_name']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="house_building_society_name" 
                                                data-title="Enter House Building Society Name" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['house_building_society_name']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-house_or_block_number">
                                        <th class="title"> House Or Block Number: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['house_or_block_number']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="house_or_block_number" 
                                                data-title="Enter House Or Block Number" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['house_or_block_number']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-wing">
                                        <th class="title"> Wing: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['wing']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="wing" 
                                                data-title="Enter Wing" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['wing']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-floor">
                                        <th class="title"> Floor: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['floor']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="floor" 
                                                data-title="Enter Floor" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['floor']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-road_name">
                                        <th class="title"> Road Name: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['road_name']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="road_name" 
                                                data-title="Enter Road Name" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['road_name']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-place_or_division_or_village">
                                        <th class="title"> Place Or Division Or Village: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['place_or_division_or_village']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="place_or_division_or_village" 
                                                data-title="Enter Place Or Division Or Village" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['place_or_division_or_village']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-taluka">
                                        <th class="title"> Taluka: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['taluka']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="taluka" 
                                                data-title="Enter Taluka" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['taluka']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-pincode">
                                        <th class="title"> Pincode: </th>
                                        <td class="value"> <?php echo $data['pincode']; ?></td>
                                    </tr>
                                    <tr  class="td-zone_id">
                                        <th class="title"> Zone Id: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-source='<?php print_link('api/json/drainage_noc_mal_oc_zone_id_option_list'); ?>' 
                                                data-value="<?php echo $data['zone_id']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="zone_id" 
                                                data-title="Select a value ..." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="select" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['zone_id']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-zone_value">
                                        <th class="title"> Zone Value: </th>
                                        <td class="value"> <?php echo $data['zone_value']; ?></td>
                                    </tr>
                                    <tr  class="td-election_ward_no_id">
                                        <th class="title"> Election Ward No Id: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-source='<?php print_link('api/json/drainage_noc_mal_oc_election_ward_no_id_option_list'); ?>' 
                                                data-value="<?php echo $data['election_ward_no_id']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="election_ward_no_id" 
                                                data-title="Select a value ..." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="select" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['election_ward_no_id']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-election_ward_no_value">
                                        <th class="title"> Election Ward No Value: </th>
                                        <td class="value"> <?php echo $data['election_ward_no_value']; ?></td>
                                    </tr>
                                    <tr  class="td-mobile_no">
                                        <th class="title"> Mobile No: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-max="9999999999" 
                                                data-min="1000000000" 
                                                data-value="<?php echo $data['mobile_no']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="mobile_no" 
                                                data-title="Enter Mobile No." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="number" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['mobile_no']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-email">
                                        <th class="title"> Email: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['email']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="email" 
                                                data-title="Enter Email" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="email" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['email']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-title_property">
                                        <th class="title"> Title Property: </th>
                                        <td class="value"> <?php echo $data['title_property']; ?></td>
                                    </tr>
                                    <tr  class="td-property_type_id">
                                        <th class="title"> Property Type Id: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-source='<?php print_link('api/json/drainage_noc_mal_oc_property_type_id_option_list'); ?>' 
                                                data-value="<?php echo $data['property_type_id']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="property_type_id" 
                                                data-title="Select a value ..." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="select" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['property_type_id']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-property_type_value">
                                        <th class="title"> Property Type Value: </th>
                                        <td class="value"> <?php echo $data['property_type_value']; ?></td>
                                    </tr>
                                    <tr  class="td-computarized_property_no">
                                        <th class="title"> Computarized Property No: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['computarized_property_no']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="computarized_property_no" 
                                                data-title="Enter Computarized Property No." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['computarized_property_no']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-title_for_application_related_information">
                                        <th class="title"> Title For Application Related Information: </th>
                                        <td class="value"> <?php echo $data['title_for_application_related_information']; ?></td>
                                    </tr>
                                    <tr  class="td-property_survey_no_or_city_survey_no">
                                        <th class="title"> Property Survey No Or City Survey No: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['property_survey_no_or_city_survey_no']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="property_survey_no_or_city_survey_no" 
                                                data-title="Enter Property Survey No. Or City Survey No." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['property_survey_no_or_city_survey_no']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-mouje_gaon_name">
                                        <th class="title"> Mouje Gaon Name: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['mouje_gaon_name']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="mouje_gaon_name" 
                                                data-title="Enter Mouje Name" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['mouje_gaon_name']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-road_name_for_property">
                                        <th class="title"> Road Name For Property: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['road_name_for_property']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="road_name_for_property" 
                                                data-title="Enter Road Name For Property" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['road_name_for_property']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-place_division_gaon_for_property">
                                        <th class="title"> Place Division Gaon For Property: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['place_division_gaon_for_property']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="place_division_gaon_for_property" 
                                                data-title="Enter Place / Division / Goan For Property" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['place_division_gaon_for_property']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-pincode_for_property">
                                        <th class="title"> Pincode For Property: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['pincode_for_property']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="pincode_for_property" 
                                                data-title="Enter Pincode For Property" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="number" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['pincode_for_property']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-zone_property_id">
                                        <th class="title"> Zone Property Id: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-source='<?php print_link('api/json/drainage_noc_mal_oc_zone_property_id_option_list'); ?>' 
                                                data-value="<?php echo $data['zone_property_id']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="zone_property_id" 
                                                data-title="Select a value ..." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="select" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['zone_property_id']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-zone_property_value">
                                        <th class="title"> Zone Property Value: </th>
                                        <td class="value"> <?php echo $data['zone_property_value']; ?></td>
                                    </tr>
                                    <tr  class="td-property_type_as_per_application_id">
                                        <th class="title"> Property Type As Per Application Id: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-source='<?php print_link('api/json/drainage_noc_mal_oc_property_type_as_per_application_id_option_list'); ?>' 
                                                data-value="<?php echo $data['property_type_as_per_application_id']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="property_type_as_per_application_id" 
                                                data-title="Select a value ..." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="select" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['property_type_as_per_application_id']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-property_type_as_per_application_value">
                                        <th class="title"> Property Type As Per Application Value: </th>
                                        <td class="value"> <?php echo $data['property_type_as_per_application_value']; ?></td>
                                    </tr>
                                    <tr  class="td-is_construction_commence_ceriticate_available">
                                        <th class="title"> Is Construction Commence Ceriticate Available: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-source='<?php echo json_encode_quote(Menu :: $demand); ?>' 
                                                data-value="<?php echo $data['is_construction_commence_ceriticate_available']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="is_construction_commence_ceriticate_available" 
                                                data-title="Select a value ..." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="select" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['is_construction_commence_ceriticate_available']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-commence_ceriticate_number">
                                        <th class="title"> Commence Ceriticate Number: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['commence_ceriticate_number']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="commence_ceriticate_number" 
                                                data-title="Enter Commence Certificate Number" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['commence_ceriticate_number']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-commence_ceriticate_date">
                                        <th class="title"> Commence Ceriticate Date: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-flatpickr="{ enableTime: false, minDate: '', maxDate: ''}" 
                                                data-value="<?php echo $data['commence_ceriticate_date']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="commence_ceriticate_date" 
                                                data-title="Enter Commence Certificate Date" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="flatdatetimepicker" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['commence_ceriticate_date']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-property_usage">
                                        <th class="title"> Property Usage: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['property_usage']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="property_usage" 
                                                data-title="Enter Property Usage" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['property_usage']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-property_usage_type_id">
                                        <th class="title"> Property Usage Type Id: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-source='<?php print_link('api/json/drainage_noc_mal_oc_property_usage_type_id_option_list'); ?>' 
                                                data-value="<?php echo $data['property_usage_type_id']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="property_usage_type_id" 
                                                data-title="Select a value ..." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="select" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['property_usage_type_id']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-property_usage_type_value">
                                        <th class="title"> Property Usage Type Value: </th>
                                        <td class="value"> <?php echo $data['property_usage_type_value']; ?></td>
                                    </tr>
                                    <tr  class="td-upload_architech_affidavit">
                                        <th class="title"> Upload Architech Affidavit: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['upload_architech_affidavit']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="upload_architech_affidavit" 
                                                data-title="Browse..." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['upload_architech_affidavit']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-upload_construction_permission_and_cerified_map_copy">
                                        <th class="title"> Upload Construction Permission And Cerified Map Copy: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['upload_construction_permission_and_cerified_map_copy']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="upload_construction_permission_and_cerified_map_copy" 
                                                data-title="Browse..." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['upload_construction_permission_and_cerified_map_copy']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-upload_architect_or_project_consultant_report">
                                        <th class="title"> Upload Architect Or Project Consultant Report: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['upload_architect_or_project_consultant_report']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="upload_architect_or_project_consultant_report" 
                                                data-title="Browse..." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['upload_architect_or_project_consultant_report']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-upload_property_location_map">
                                        <th class="title"> Upload Property Location Map: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['upload_property_location_map']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="upload_property_location_map" 
                                                data-title="Browse..." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['upload_property_location_map']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-upload_noc_copy_given_for_construction_permission">
                                        <th class="title"> Upload Noc Copy Given For Construction Permission: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['upload_noc_copy_given_for_construction_permission']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="upload_noc_copy_given_for_construction_permission" 
                                                data-title="Browse..." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['upload_noc_copy_given_for_construction_permission']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-upload_map_prepared_by_licensed_plumber">
                                        <th class="title"> Upload Map Prepared By Licensed Plumber: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['upload_map_prepared_by_licensed_plumber']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="upload_map_prepared_by_licensed_plumber" 
                                                data-title="Browse..." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['upload_map_prepared_by_licensed_plumber']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-date">
                                        <th class="title"> Date: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['date']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="date" 
                                                data-title="Enter Date" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['date']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-architect_name">
                                        <th class="title"> Architect Name: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['architect_name']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="architect_name" 
                                                data-title="Enter Architect Name" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['architect_name']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-hissa_number">
                                        <th class="title"> Hissa Number: </th>
                                        <td class="value"> <?php echo $data['hissa_number']; ?></td>
                                    </tr>
                                    <tr  class="td-timestamp">
                                        <th class="title"> Timestamp: </th>
                                        <td class="value"> <?php echo $data['timestamp']; ?></td>
                                    </tr>
                                    <tr  class="td-status">
                                        <th class="title"> Status: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['status']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="status" 
                                                data-title="Enter Status" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['status']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-property_taluka">
                                        <th class="title"> Property Taluka: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['property_taluka']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("drainage_noc_mal_oc/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="property_taluka" 
                                                data-title="Enter Property Taluka" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['property_taluka']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-upload_mep_consultant_or_architect_declaration">
                                        <th class="title"> Upload Mep Consultant Or Architect Declaration: </th>
                                        <td class="value"> <?php echo $data['upload_mep_consultant_or_architect_declaration']; ?></td>
                                    </tr>
                                    <tr  class="td-application_no">
                                        <th class="title"> Application No: </th>
                                        <td class="value"> <?php echo $data['application_no']; ?></td>
                                    </tr>
                                </tbody>
                                <!-- Table Body End -->
                            </table>
                        </div>
                        <div class="p-3 d-flex">
                            <div class="dropup export-btn-holder mx-1">
                                <button class="btn btn-sm btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fa fa-save"></i> Export
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <?php $export_print_link = $this->set_current_page_link(array('format' => 'print')); ?>
                                    <a class="dropdown-item export-link-btn" data-format="print" href="<?php print_link($export_print_link); ?>" target="_blank">
                                        <img src="<?php print_link('assets/images/print.png') ?>" class="mr-2" /> PRINT
                                        </a>
                                        <?php $export_pdf_link = $this->set_current_page_link(array('format' => 'pdf')); ?>
                                        <a class="dropdown-item export-link-btn" data-format="pdf" href="<?php print_link($export_pdf_link); ?>" target="_blank">
                                            <img src="<?php print_link('assets/images/pdf.png') ?>" class="mr-2" /> PDF
                                            </a>
                                            <?php $export_word_link = $this->set_current_page_link(array('format' => 'word')); ?>
                                            <a class="dropdown-item export-link-btn" data-format="word" href="<?php print_link($export_word_link); ?>" target="_blank">
                                                <img src="<?php print_link('assets/images/doc.png') ?>" class="mr-2" /> WORD
                                                </a>
                                                <?php $export_csv_link = $this->set_current_page_link(array('format' => 'csv')); ?>
                                                <a class="dropdown-item export-link-btn" data-format="csv" href="<?php print_link($export_csv_link); ?>" target="_blank">
                                                    <img src="<?php print_link('assets/images/csv.png') ?>" class="mr-2" /> CSV
                                                    </a>
                                                    <?php $export_excel_link = $this->set_current_page_link(array('format' => 'excel')); ?>
                                                    <a class="dropdown-item export-link-btn" data-format="excel" href="<?php print_link($export_excel_link); ?>" target="_blank">
                                                        <img src="<?php print_link('assets/images/xsl.png') ?>" class="mr-2" /> EXCEL
                                                        </a>
                                                    </div>
                                                </div>
                                                <?php if($can_edit){ ?>
                                                <a class="btn btn-sm btn-info"  href="<?php print_link("drainage_noc_mal_oc/edit/$rec_id"); ?>">
                                                    <i class="fa fa-edit"></i> Edit
                                                </a>
                                                <?php } ?>
                                                <?php if($can_delete){ ?>
                                                <a class="btn btn-sm btn-danger record-delete-btn mx-1"  href="<?php print_link("drainage_noc_mal_oc/delete/$rec_id/?csrf_token=$csrf_token&redirect=$current_page"); ?>" data-prompt-msg="Are you sure you want to delete this record?" data-display-style="modal">
                                                    <i class="fa fa-times"></i> Delete
                                                </a>
                                                <?php } ?>
                                            </div>
                                            <?php
                                            }
                                            else{
                                            ?>
                                            <!-- Empty Record Message -->
                                            <div class="text-muted p-3">
                                                <i class="fa fa-ban"></i> No Record Found
                                            </div>
                                            <?php
                                            }
                                            ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
