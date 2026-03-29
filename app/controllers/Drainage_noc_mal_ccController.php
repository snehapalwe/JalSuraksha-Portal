<?php 
/**
 * Drainage_noc_mal_cc Page Controller
 * @category  Controller
 */
class Drainage_noc_mal_ccController extends SecureController{
	function __construct(){
		parent::__construct();
		$this->tablename = "drainage_noc_mal_cc";
	}
	/**
     * List page records
     * @param $fieldname (filter record by a field) 
     * @param $fieldvalue (filter field value)
     * @return BaseView
     */
	function index($fieldname = null , $fieldvalue = null){
		$request = $this->request;
		$db = $this->GetModel();
		$tablename = $this->tablename;
		$fields = array("id", 
			"status", 
			"application_no", 
			"applicant_name", 
			"house_building_society_name", 
			"upload_full_potential_plan", 
			"upload_floor_plan", 
			"house_or_block_number", 
			"wing", 
			"inspection", 
			"floor", 
			"road_name", 
			"place_or_division_or_village", 
			"taluka", 
			"zone_value", 
			"election_ward_no_value", 
			"mobile_no", 
			"email", 
			"property_type_value", 
			"computarized_property_no", 
			"property_survey_no_or_city_survey_no", 
			"mouje_gaon_name", 
			"road_name_for_property", 
			"place_division_gaon_for_property", 
			"property_taluka", 
			"pincode_for_property", 
			"zone_property_value", 
			"property_type_as_per_application_value", 
			"property_usage", 
			"property_usage_type_value", 
			"architect_name", 
			"upload_architech_affidavit", 
			"upload_project_consultant_report", 
			"upload_property_location_map", 
			"user_id", 
			"date", 
			"certificate", 
			"timestamp", 
			"paid", 
			"demand");
		$pagination = $this->get_pagination(MAX_RECORD_COUNT); // get current pagination e.g array(page_number, page_limit)
	#Statement to execute before list record
	if(USER_ROLE==2){
    $db->where("user_id",USER_ID);
}
if(USER_ROLE==3){
    $db->where("zone_value",explode(",",get_active_user("zone_id")),"IN");
    $db->where("(status>=1 or status='Completed' or status='Rejected'  or status='Reverted')");
}
if(USER_ROLE==4){
    $db->where("zone_value",explode(",",get_active_user("zone_id")),"IN");
    $db->where("(status>=2 or status='Completed' or status='Rejected'  or status='Reverted')");
}
if(USER_ROLE==5){
    $db->where("zone_value",explode(",",get_active_user("zone_id")),"IN");
    $db->where("(status>=3 or status='Completed' or status='Rejected'  or status='Reverted') ");
}
	# End of before list statement
		//search table record
		if(!empty($request->search)){
			$text = trim($request->search); 
			$search_condition = "(
				drainage_noc_mal_cc.id LIKE ? OR 
				drainage_noc_mal_cc.status LIKE ? OR 
				drainage_noc_mal_cc.application_no LIKE ? OR 
				drainage_noc_mal_cc.applicant_name LIKE ? OR 
				drainage_noc_mal_cc.house_building_society_name LIKE ? OR 
				drainage_noc_mal_cc.house_or_block_number LIKE ? OR 
				drainage_noc_mal_cc.wing LIKE ? OR 
				drainage_noc_mal_cc.floor LIKE ? OR 
				drainage_noc_mal_cc.road_name LIKE ? OR 
				drainage_noc_mal_cc.place_or_division_or_village LIKE ? OR 
				drainage_noc_mal_cc.taluka LIKE ? OR 
				drainage_noc_mal_cc.zone_id LIKE ? OR 
				drainage_noc_mal_cc.election_ward_no_value LIKE ? OR 
				drainage_noc_mal_cc.mobile_no LIKE ? OR 
				drainage_noc_mal_cc.email LIKE ? OR 
				drainage_noc_mal_cc.property_type_value LIKE ? OR 
				drainage_noc_mal_cc.computarized_property_no LIKE ? OR 
				drainage_noc_mal_cc.property_survey_no_or_city_survey_no LIKE ? OR 
				drainage_noc_mal_cc.mouje_gaon_name LIKE ? OR 
				drainage_noc_mal_cc.road_name_for_property LIKE ? OR 
				drainage_noc_mal_cc.place_division_gaon_for_property LIKE ? OR 
				drainage_noc_mal_cc.property_taluka LIKE ? OR 
				drainage_noc_mal_cc.pincode_for_property LIKE ? OR 
				drainage_noc_mal_cc.zone_property_value LIKE ? OR 
				drainage_noc_mal_cc.property_type_as_per_application_value LIKE ? OR 
				drainage_noc_mal_cc.property_usage LIKE ? OR 
				drainage_noc_mal_cc.property_usage_type_value LIKE ? OR 
				drainage_noc_mal_cc.architect_name LIKE ? OR 
				drainage_noc_mal_cc.upload_architech_affidavit LIKE ? OR 
				drainage_noc_mal_cc.upload_project_consultant_report LIKE ? OR 
				drainage_noc_mal_cc.upload_property_location_map LIKE ? OR 
				drainage_noc_mal_cc.rec_id LIKE ? OR 
				drainage_noc_mal_cc.user_id LIKE ? OR 
				drainage_noc_mal_cc.date LIKE ? OR 
				drainage_noc_mal_cc.certificate LIKE ? OR 
				drainage_noc_mal_cc.timestamp LIKE ? OR 
				drainage_noc_mal_cc.paid LIKE ? OR 
				drainage_noc_mal_cc.demand LIKE ?
			)";
			$search_params = array(
				"%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%"
			);
			//setting search conditions
			$db->where($search_condition, $search_params);
			 //template to use when ajax search
			$this->view->search_template = "drainage_noc_mal_cc/search.php";
		}
		if(!empty($request->orderby)){
			$orderby = $request->orderby;
			$ordertype = (!empty($request->ordertype) ? $request->ordertype : ORDER_TYPE);
			$db->orderBy($orderby, $ordertype);
		}
		else{
			$db->orderBy("drainage_noc_mal_cc.id", ORDER_TYPE);
		}
		if($fieldname){
			$db->where($fieldname , $fieldvalue); //filter by a single field name
		}
		$tc = $db->withTotalCount();
		$records = $db->get($tablename, $pagination, $fields);
		$records_count = count($records);
		$total_records = intval($tc->totalCount);
		$page_limit = $pagination[1];
		$total_pages = ceil($total_records / $page_limit);
		if(	!empty($records)){
			foreach($records as &$record){
				$record['date'] = human_date($record['date']);
$record['timestamp'] = human_datetime($record['timestamp']);
			}
		}
		$data = new stdClass;
		$data->records = $records;
		$data->record_count = $records_count;
		$data->total_records = $total_records;
		$data->total_page = $total_pages;
		if($db->getLastError()){
			$this->set_page_error();
		}
		$page_title = $this->view->page_title = "Drainage Noc Mal Cc";
		$this->render_view("drainage_noc_mal_cc/list.php", $data); //render the full page
	}
	/**
     * View record detail 
	 * @param $rec_id (select record by table primary key) 
     * @param $value value (select record by value of field name(rec_id))
     * @return BaseView
     */
	function view($rec_id = null, $value = null){
		$request = $this->request;
		$db = $this->GetModel();
		$rec_id = $this->rec_id = urldecode($rec_id);
		$tablename = $this->tablename;
		$fields = array("id", 
			"application_type_id", 
			"application_type_value", 
			"applicant_surname", 
			"applicant_name", 
			"applicant_father_or_spouse_name", 
			"title", 
			"house_building_society_name", 
			"house_or_block_number", 
			"wing", 
			"floor", 
			"road_name", 
			"place_or_division_or_village", 
			"taluka", 
			"pincode", 
			"zone_id", 
			"zone_value", 
			"election_ward_no_id", 
			"election_ward_no_value", 
			"mobile_no", 
			"email", 
			"title_property", 
			"property_type_id", 
			"property_type_value", 
			"computarized_property_no", 
			"title_for_application_related_information", 
			"property_survey_no_or_city_survey_no", 
			"mouje_gaon_name", 
			"road_name_for_property", 
			"place_division_gaon_for_property", 
			"pincode_for_property", 
			"zone_property_id", 
			"zone_property_value", 
			"property_type_as_per_application_id", 
			"property_type_as_per_application_value", 
			"is_construction_commence_ceriticate_available", 
			"commence_ceriticate_number", 
			"commence_ceriticate_date", 
			"property_usage", 
			"property_usage_type_id", 
			"property_usage_type_value", 
			"upload_architech_affidavit", 
			"upload_project_consultant_report", 
			"upload_property_location_map", 
			"rec_id", 
			"user_id", 
			"date", 
			"architect_name", 
			"hissa_number", 
			"timestamp", 
			"certificate", 
			"status", 
			"paid", 
			"property_taluka", 
			"upload_mep_consultant_or_architect_declaration", 
			"application_no", 
			"demand");
		if($value){
			$db->where($rec_id, urldecode($value)); //select record based on field name
		}
		else{
			$db->where("drainage_noc_mal_cc.id", $rec_id);; //select record based on primary key
		}
		$record = $db->getOne($tablename, $fields );
		if($record){
			$page_title = $this->view->page_title = "View  Drainage Noc Mal Cc";
		$this->view->report_filename = date('Y-m-d') . '-' . $page_title;
		$this->view->report_title = $page_title;
		$this->view->report_layout = "report_layout.php";
		$this->view->report_paper_size = "A4";
		$this->view->report_orientation = "portrait";
		}
		else{
			if($db->getLastError()){
				$this->set_page_error();
			}
			else{
				$this->set_page_error("No record found");
			}
		}
		return $this->render_view("drainage_noc_mal_cc/view.php", $record);
	}
	/**
     * Insert new record to the database table
	 * @param $formdata array() from $_POST
     * @return BaseView
     */
	function add($formdata = null){
		if($formdata){
			$db = $this->GetModel();
			$tablename = $this->tablename;
			$request = $this->request;
			//fillable fields
			$fields = $this->fields = array("applicant_name","upload_full_potential_plan","upload_floor_plan","house_building_society_name","house_or_block_number","floor","place_or_division_or_village","taluka","zone_id","mobile_no","email","architect_name","property_type_id","property_survey_no_or_city_survey_no","mouje_gaon_name","place_division_gaon_for_property","property_taluka","zone_property_id","property_type_as_per_application_id","property_usage","property_usage_type_id","wing","road_name","election_ward_no_id","computarized_property_no","road_name_for_property","pincode_for_property","upload_architech_affidavit","upload_project_consultant_report","upload_property_location_map","user_id","date","status");
			$postdata = $this->format_request_data($formdata);
			$this->rules_array = array(
				'applicant_name' => 'required',
				'house_building_society_name' => 'required',
				'house_or_block_number' => 'required',
				'floor' => 'required',
				'place_or_division_or_village' => 'required',
				'taluka' => 'required',
				'zone_id' => 'required',
				'mobile_no' => 'required|numeric|max_numeric,9999999999|min_numeric,1000000000',
				'email' => 'required|valid_email',
				'architect_name' => 'required',
				'property_type_id' => 'required',
				'property_survey_no_or_city_survey_no' => 'required',
				'mouje_gaon_name' => 'required',
				'place_division_gaon_for_property' => 'required',
				'property_taluka' => 'required',
				'zone_property_id' => 'required',
				'property_type_as_per_application_id' => 'required',
				'property_usage' => 'required',
				'property_usage_type_id' => 'required',
				'wing' => 'required',
				'road_name' => 'required',
				'election_ward_no_id' => 'required',
				'computarized_property_no' => 'required',
				'road_name_for_property' => 'required',
				'pincode_for_property' => 'required|numeric',
				'upload_architech_affidavit' => 'required',
				'upload_project_consultant_report' => 'required',
				'upload_property_location_map' => 'required',
			);
			$this->sanitize_array = array(
				'applicant_name' => 'sanitize_string',
				'house_building_society_name' => 'sanitize_string',
				'house_or_block_number' => 'sanitize_string',
				'floor' => 'sanitize_string',
				'place_or_division_or_village' => 'sanitize_string',
				'taluka' => 'sanitize_string',
				'zone_id' => 'sanitize_string',
				'mobile_no' => 'sanitize_string',
				'email' => 'sanitize_string',
				'architect_name' => 'sanitize_string',
				'property_type_id' => 'sanitize_string',
				'property_survey_no_or_city_survey_no' => 'sanitize_string',
				'mouje_gaon_name' => 'sanitize_string',
				'place_division_gaon_for_property' => 'sanitize_string',
				'property_taluka' => 'sanitize_string',
				'zone_property_id' => 'sanitize_string',
				'property_type_as_per_application_id' => 'sanitize_string',
				'property_usage' => 'sanitize_string',
				'property_usage_type_id' => 'sanitize_string',
				'wing' => 'sanitize_string',
				'road_name' => 'sanitize_string',
				'election_ward_no_id' => 'sanitize_string',
				'computarized_property_no' => 'sanitize_string',
				'road_name_for_property' => 'sanitize_string',
				'pincode_for_property' => 'sanitize_string',
				'upload_architech_affidavit' => 'sanitize_string',
				'upload_project_consultant_report' => 'sanitize_string',
				'upload_property_location_map' => 'sanitize_string',
			);
			$this->filter_vals = true; //set whether to remove empty fields
			$modeldata = $this->modeldata = $this->validate_form($postdata);
			$modeldata['user_id'] = USER_ID;
$modeldata['date'] = date_now();
$modeldata['status'] = "1";
			if($this->validated()){
				$rec_id = $this->rec_id = $db->insert($tablename, $modeldata);
  file_get_contents("https://singlewindowsystemkdmc.in/api/progress/$tablename/".USER_NAME."/pending/".urlencode($_SESSION['appl_type']));
$db->insert("application_mapping",["db_name"=>$tablename,"rec_id"=>$rec_id,"appl_type"=>$_SESSION['appl_type']]);
				if($rec_id){
		# Statement to execute after adding record
		//execute sql statement and return a single field value
$params = array($modeldata['election_ward_no_id']);
$value  = $db->rawQueryValue("SELECT ward_name FROM m_election_ward WHERE id = ?", $params);
$table_data = array(
    "election_ward_no_value" => $value[0]
);
$db->where("id", $rec_id);
$bool = $db->update("drainage_noc_mal_cc", $table_data);
//execute sql statement and return a single field value
$params1 = array($modeldata['zone_id']);
$value1  = $db->rawQueryValue("SELECT zone FROM zone_master WHERE id = ?", $params1);
$table_data1 = array(
    "zone_value" => $value1[0]
);
$db->where("id", $rec_id);
$bool = $db->update("drainage_noc_mal_cc", $table_data1);
//execute sql statement and return a single field value
$params2 = array($modeldata['property_type_id']);
$value2  = $db->rawQueryValue("SELECT property_type FROM master_property_type_jalmal WHERE id = ?", $params2);
$table_data2 = array(
    "property_type_value" => $value2[0]
);
$db->where("id", $rec_id);
$bool = $db->update("drainage_noc_mal_cc", $table_data2);
//execute sql statement and return a single field value
$params3 = array($modeldata['zone_property_id']);
$value3  = $db->rawQueryValue("SELECT zone FROM zone_master WHERE id = ?", $params3);
$table_data3 = array(
    "zone_property_value" => $value3[0]
);
$db->where("id", $rec_id);
$bool = $db->update("drainage_noc_mal_cc", $table_data3);
//execute sql statement and return a single field value
$params4 = array($modeldata['property_type_as_per_application_id']);
$value4  = $db->rawQueryValue("SELECT property_type FROM master_property_type_jalmal WHERE id = ?", $params4);
$table_data4 = array(
    "property_type_as_per_application_value" => $value4[0]
);
$db->where("id", $rec_id);
$bool = $db->update("drainage_noc_mal_cc", $table_data4);
//execute sql statement and return a single field value
$params5 = array($modeldata['property_usage_type_id']);
$value5  = $db->rawQueryValue("SELECT property_usage FROM master_property_usage WHERE id = ?", $params5);
$table_data5 = array(
    "property_usage_type_value" => $value5[0]
);
$db->where("id", $rec_id);
$bool = $db->update("drainage_noc_mal_cc", $table_data5);
$application_id = $rec_id; // now you have the actual application ID
if (date("m") >= 4) {
    $yr = date("y") . "-" . (date("y") + 1);
} else {
    $yr = (date("y") - 1) . "-" . date("y");
}
$receipt_no = "KDMC/DRAIN/MAL_CC/" . $application_id . "/" . $yr;
// Update the row with receipt_no
$db->where("id", $application_id);
$db->update("drainage_noc_mal_cc", ["application_no" => $receipt_no]);
		# End of after add statement
					$this->set_flash_msg("Record added successfully", "success");
					return	$this->redirect("drainage_noc_mal_cc");
				}
				else{
					$this->set_page_error();
				}
			}
		}
		$page_title = $this->view->page_title = "Add New Drainage Noc Mal Cc";
		$this->render_view("drainage_noc_mal_cc/add.php");
	}
	/**
     * Update table record with formdata
	 * @param $rec_id (select record by table primary key)
	 * @param $formdata array() from $_POST
     * @return array
     */
	function edit($rec_id = null, $formdata = null){
		$request = $this->request;
		$db = $this->GetModel();
		$this->rec_id = $rec_id;
		$tablename = $this->tablename;
		 //editable fields
		$fields = $this->fields = array("id","applicant_name","upload_full_potential_plan","house_building_society_name","house_or_block_number","floor","place_or_division_or_village","taluka","zone_id","mobile_no","email","architect_name","property_type_id","property_survey_no_or_city_survey_no","mouje_gaon_name","place_division_gaon_for_property","property_taluka","zone_property_id","property_type_as_per_application_id","property_usage","property_usage_type_id","wing","road_name","election_ward_no_id","computarized_property_no","road_name_for_property","pincode_for_property","upload_architech_affidavit","upload_project_consultant_report","upload_property_location_map","user_id","date","status");
		if($formdata){
			$postdata = $this->format_request_data($formdata);
			$this->rules_array = array(
				'applicant_name' => 'required',
				'house_building_society_name' => 'required',
				'house_or_block_number' => 'required',
				'floor' => 'required',
				'place_or_division_or_village' => 'required',
				'taluka' => 'required',
				'zone_id' => 'required',
				'mobile_no' => 'required|numeric|max_numeric,9999999999|min_numeric,1000000000',
				'email' => 'required|valid_email',
				'architect_name' => 'required',
				'property_type_id' => 'required',
				'property_survey_no_or_city_survey_no' => 'required',
				'mouje_gaon_name' => 'required',
				'place_division_gaon_for_property' => 'required',
				'property_taluka' => 'required',
				'zone_property_id' => 'required',
				'property_type_as_per_application_id' => 'required',
				'property_usage' => 'required',
				'property_usage_type_id' => 'required',
				'wing' => 'required',
				'road_name' => 'required',
				'election_ward_no_id' => 'required',
				'computarized_property_no' => 'required',
				'road_name_for_property' => 'required',
				'pincode_for_property' => 'required|numeric',
				'upload_architech_affidavit' => 'required',
				'upload_project_consultant_report' => 'required',
				'upload_property_location_map' => 'required',
			);
			$this->sanitize_array = array(
				'applicant_name' => 'sanitize_string',
				'house_building_society_name' => 'sanitize_string',
				'house_or_block_number' => 'sanitize_string',
				'floor' => 'sanitize_string',
				'place_or_division_or_village' => 'sanitize_string',
				'taluka' => 'sanitize_string',
				'zone_id' => 'sanitize_string',
				'mobile_no' => 'sanitize_string',
				'email' => 'sanitize_string',
				'architect_name' => 'sanitize_string',
				'property_type_id' => 'sanitize_string',
				'property_survey_no_or_city_survey_no' => 'sanitize_string',
				'mouje_gaon_name' => 'sanitize_string',
				'place_division_gaon_for_property' => 'sanitize_string',
				'property_taluka' => 'sanitize_string',
				'zone_property_id' => 'sanitize_string',
				'property_type_as_per_application_id' => 'sanitize_string',
				'property_usage' => 'sanitize_string',
				'property_usage_type_id' => 'sanitize_string',
				'wing' => 'sanitize_string',
				'road_name' => 'sanitize_string',
				'election_ward_no_id' => 'sanitize_string',
				'computarized_property_no' => 'sanitize_string',
				'road_name_for_property' => 'sanitize_string',
				'pincode_for_property' => 'sanitize_string',
				'upload_architech_affidavit' => 'sanitize_string',
				'upload_project_consultant_report' => 'sanitize_string',
				'upload_property_location_map' => 'sanitize_string',
			);
			$modeldata = $this->modeldata = $this->validate_form($postdata);
			$modeldata['user_id'] = USER_ID;
$modeldata['date'] = date_now();
$modeldata['status'] = "1"; 
$modeldata['inspection'] = "-1";
			if($this->validated()){
				$db->where("drainage_noc_mal_cc.id", $rec_id);;
				$bool = $db->update($tablename, $modeldata);
				$numRows = $db->getRowCount(); //number of affected rows. 0 = no record field updated
				if($bool && $numRows){
					$this->set_flash_msg("Record updated successfully", "success");
					return $this->redirect("drainage_noc_mal_cc");
				}
				else{
					if($db->getLastError()){
						$this->set_page_error();
					}
					elseif(!$numRows){
						//not an error, but no record was updated
						$page_error = "No record updated";
						$this->set_page_error($page_error);
						$this->set_flash_msg($page_error, "warning");
						return	$this->redirect("drainage_noc_mal_cc");
					}
				}
			}
		}
		$db->where("drainage_noc_mal_cc.id", $rec_id);;
		$data = $db->getOne($tablename, $fields);
		$page_title = $this->view->page_title = "Edit  Drainage Noc Mal Cc";
		if(!$data){
			$this->set_page_error();
		}
		return $this->render_view("drainage_noc_mal_cc/edit.php", $data);
	}
	/**
     * Delete record from the database
	 * Support multi delete by separating record id by comma.
     * @return BaseView
     */
	function delete($rec_id = null){
		Csrf::cross_check();
		$request = $this->request;
		$db = $this->GetModel();
		$tablename = $this->tablename;
		$this->rec_id = $rec_id;
		//form multiple delete, split record id separated by comma into array
		$arr_rec_id = array_map('trim', explode(",", $rec_id));
		$db->where("drainage_noc_mal_cc.id", $arr_rec_id, "in");
		$bool = $db->delete($tablename);
		if($bool){
			$this->set_flash_msg("Record deleted successfully", "success");
		}
		elseif($db->getLastError()){
			$page_error = $db->getLastError();
			$this->set_flash_msg($page_error, "danger");
		}
		return	$this->redirect("drainage_noc_mal_cc");
	}
	/**
     * View record detail 
	 * @param $rec_id (select record by table primary key) 
     * @param $value value (select record by value of field name(rec_id))
     * @return BaseView
     */
	function cert_view($rec_id = null, $value = null){
		$request = $this->request;
		$db = $this->GetModel();
		$rec_id = $this->rec_id = urldecode($rec_id);
		$tablename = $this->tablename;
		$fields = array("id", 
			"application_type_id", 
			"application_type_value", 
			"applicant_surname", 
			"applicant_name", 
			"applicant_father_or_spouse_name", 
			"title", 
			"house_building_society_name", 
			"house_or_block_number", 
			"wing", 
			"floor", 
			"road_name", 
			"place_or_division_or_village", 
			"taluka", 
			"pincode", 
			"zone_id", 
			"zone_value", 
			"election_ward_no_id", 
			"election_ward_no_value", 
			"mobile_no", 
			"email", 
			"title_property", 
			"property_type_id", 
			"property_type_value", 
			"computarized_property_no", 
			"title_for_application_related_information", 
			"property_survey_no_or_city_survey_no", 
			"mouje_gaon_name", 
			"road_name_for_property", 
			"place_division_gaon_for_property", 
			"pincode_for_property", 
			"zone_property_id", 
			"zone_property_value", 
			"property_type_as_per_application_id", 
			"property_type_as_per_application_value", 
			"is_construction_commence_ceriticate_available", 
			"commence_ceriticate_number", 
			"commence_ceriticate_date", 
			"property_usage", 
			"property_usage_type_id", 
			"property_usage_type_value", 
			"upload_architech_affidavit", 
			"upload_project_consultant_report", 
			"upload_property_location_map", 
			"rec_id", 
			"user_id", 
			"date", 
			"architect_name", 
			"hissa_number", 
			"timestamp", 
			"certificate", 
			"status", 
			"paid", 
			"property_taluka", 
			"upload_mep_consultant_or_architect_declaration", 
			"application_no", 
			"demand");
		if($value){
			$db->where($rec_id, urldecode($value)); //select record based on field name
		}
		else{
			$db->where("drainage_noc_mal_cc.id", $rec_id);; //select record based on primary key
		}
		$record = $db->getOne($tablename, $fields );
		if($record){
			$record['commence_ceriticate_date'] = human_date($record['commence_ceriticate_date']);
$record['date'] = human_date($record['date']);
// $record['timestamp'] = human_datetime($record['timestamp']);
			$page_title = $this->view->page_title = "View  Drainage Noc Mal Cc";
		$this->view->report_filename = date('Y-m-d') . '-' . $page_title;
		$this->view->report_title = $page_title;
		$this->view->report_layout = "report_layout.php";
		$this->view->report_paper_size = "A4";
		$this->view->report_orientation = "portrait";
		}
		else{
			if($db->getLastError()){
				$this->set_page_error();
			}
			else{
				$this->set_page_error("No record found");
			}
		}
		return $this->render_view("drainage_noc_mal_cc/cert_view.php", $record);
	}
	/**
     * Update table record with formdata
	 * @param $rec_id (select record by table primary key)
	 * @param $formdata array() from $_POST
     * @return array
     */
     
	function revert($rec_id = null, $formdata = null){
		$request = $this->request;
		$db = $this->GetModel();
		$this->rec_id = $rec_id;
		$tablename = $this->tablename;
		 //editable fields
		$fields = $this->fields = array("id","wing","road_name","election_ward_no_id","computarized_property_no","road_name_for_property","pincode_for_property","upload_architech_affidavit","upload_project_consultant_report","upload_property_location_map","status");
		if($formdata){
			$postdata = $this->format_request_data($formdata);
			$this->rules_array = array(
				'wing' => 'required',
				'road_name' => 'required',
				'election_ward_no_id' => 'required',
				'computarized_property_no' => 'required',
				'road_name_for_property' => 'required',
				'pincode_for_property' => 'required|numeric',
				'upload_architech_affidavit' => 'required',
				'upload_project_consultant_report' => 'required',
				'upload_property_location_map' => 'required',
			);
			$this->sanitize_array = array(
				'wing' => 'sanitize_string',
				'road_name' => 'sanitize_string',
				'election_ward_no_id' => 'sanitize_string',
				'computarized_property_no' => 'sanitize_string',
				'road_name_for_property' => 'sanitize_string',
				'pincode_for_property' => 'sanitize_string',
				'upload_architech_affidavit' => 'sanitize_string',
				'upload_project_consultant_report' => 'sanitize_string',
				'upload_property_location_map' => 'sanitize_string',
			);
			$modeldata = $this->modeldata = $this->validate_form($postdata);
			$modeldata['status'] = "1";
			if($this->validated()){
				$db->where("drainage_noc_mal_cc.id", $rec_id);;
				$bool = $db->update($tablename, $modeldata);
				$numRows = $db->getRowCount(); //number of affected rows. 0 = no record field updated
				if($bool && $numRows){
					$this->set_flash_msg("Record updated successfully", "success");
					return $this->redirect("drainage_noc_mal_cc");
				}
				else{
					if($db->getLastError()){
						$this->set_page_error();
					}
					elseif(!$numRows){
						//not an error, but no record was updated
						$page_error = "No record updated";
						$this->set_page_error($page_error);
						$this->set_flash_msg($page_error, "warning");
						return	$this->redirect("drainage_noc_mal_cc");
					}
				}
			}
		}
		$db->where("drainage_noc_mal_cc.id", $rec_id);;
		$data = $db->getOne($tablename, $fields);
		$page_title = $this->view->page_title = "Edit  Drainage Noc Mal Cc";
		if(!$data){
			$this->set_page_error();
		}
		return $this->render_view("drainage_noc_mal_cc/revert.php", $data);
	}
}
