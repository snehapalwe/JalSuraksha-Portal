<?php 
/**
 * Application_form Page Controller
 * @category  Controller
 */
class Application_formController extends SecureController{
	function __construct(){
		parent::__construct();
		$this->tablename = "application_form";
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
			"applicant_name", 
			"applicant_address", 
			"drainage_connection_details", 
			"type_of_septic", 
			"no_of_flats", 
			"demand_applicable", 
			"upload_property_documents", 
			"upload_building_plan", 
			"status", 
			"paid", 
			"user_id", 
			"date", 
			"timestamp");
		$pagination = $this->get_pagination(MAX_RECORD_COUNT); // get current pagination e.g array(page_number, page_limit)
	#Statement to execute before list record
	if(USER_ROLE==2){
    $db->where("user_id",USER_ID);
}
if(USER_ROLE==3){
    $db->where("(status>=1 or status='Completed' or status='Rejected')");
}
if(USER_ROLE==4){
    $db->where("(status>=2 or status='Completed' or status='Rejected')");
}
if(USER_ROLE==5){
    $db->where("(status>=3 or status='Completed' or status='Rejected')");
}
	# End of before list statement
		//search table record
		if(!empty($request->search)){
			$text = trim($request->search); 
			$search_condition = "(
				application_form.id LIKE ? OR 
				application_form.applicant_name LIKE ? OR 
				application_form.applicant_address LIKE ? OR 
				application_form.drainage_connection_details LIKE ? OR 
				application_form.type_of_septic LIKE ? OR 
				application_form.no_of_flats LIKE ? OR 
				application_form.demand_applicable LIKE ? OR 
				application_form.upload_property_documents LIKE ? OR 
				application_form.upload_building_plan LIKE ? OR 
				application_form.int_no LIKE ? OR 
				application_form.yr LIKE ? OR 
				application_form.application_no LIKE ? OR 
				application_form.status LIKE ? OR 
				application_form.paid LIKE ? OR 
				application_form.user_id LIKE ? OR 
				application_form.date LIKE ? OR 
				application_form.timestamp LIKE ?
			)";
			$search_params = array(
				"%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%"
			);
			//setting search conditions
			$db->where($search_condition, $search_params);
			 //template to use when ajax search
			$this->view->search_template = "application_form/search.php";
		}
		if(!empty($request->orderby)){
			$orderby = $request->orderby;
			$ordertype = (!empty($request->ordertype) ? $request->ordertype : ORDER_TYPE);
			$db->orderBy($orderby, $ordertype);
		}
		else{
			$db->orderBy("application_form.id", ORDER_TYPE);
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
		$page_title = $this->view->page_title = "Application Form";
		$this->render_view("application_form/list.php", $data); //render the full page
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
			"applicant_name", 
			"applicant_address", 
			"drainage_connection_details", 
			"type_of_septic", 
			"no_of_flats", 
			"demand_applicable", 
			"upload_property_documents", 
			"upload_building_plan", 
			"int_no", 
			"yr", 
			"application_no", 
			"date", 
			"timestamp", 
			"status", 
			"paid", 
			"user_id");
		if($value){
			$db->where($rec_id, urldecode($value)); //select record based on field name
		}
		else{
			$db->where("application_form.id", $rec_id);; //select record based on primary key
		}
		$record = $db->getOne($tablename, $fields );
		if($record){
			$record['date'] = human_date($record['date']);
$record['timestamp'] = human_datetime($record['timestamp']);
			$page_title = $this->view->page_title = "View  Application Form";
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
		return $this->render_view("application_form/view.php", $record);
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
			$fields = $this->fields = array("applicant_name","applicant_address","drainage_connection_details","type_of_septic","no_of_flats","demand_applicable","upload_property_documents","upload_building_plan","status","user_id");
			$postdata = $this->format_request_data($formdata);
			$this->rules_array = array(
				'applicant_name' => 'required',
				'applicant_address' => 'required',
				'drainage_connection_details' => 'required',
				'type_of_septic' => 'required',
				'demand_applicable' => 'required',
				'upload_property_documents' => 'required',
				'upload_building_plan' => 'required',
			);
			$this->sanitize_array = array(
				'applicant_name' => 'sanitize_string',
				'applicant_address' => 'sanitize_string',
				'drainage_connection_details' => 'sanitize_string',
				'type_of_septic' => 'sanitize_string',
				'no_of_flats' => 'sanitize_string',
				'demand_applicable' => 'sanitize_string',
				'upload_property_documents' => 'sanitize_string',
				'upload_building_plan' => 'sanitize_string',
			);
			$this->filter_vals = true; //set whether to remove empty fields
			$modeldata = $this->modeldata = $this->validate_form($postdata);
			$modeldata['status'] = "1";
$modeldata['user_id'] = USER_ID;
			if($this->validated()){
				$rec_id = $this->rec_id = $db->insert($tablename, $modeldata);
				if($rec_id){
					$this->set_flash_msg("Record added successfully", "success");
					return	$this->redirect("application_form");
				}
				else{
					$this->set_page_error();
				}
			}
		}
		$page_title = $this->view->page_title = "Add New Application Form";
		$this->render_view("application_form/add.php");
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
		$fields = $this->fields = array("id","applicant_name","applicant_address","drainage_connection_details","type_of_septic","no_of_flats","demand_applicable","upload_property_documents","upload_building_plan","user_id");
		if($formdata){
			$postdata = $this->format_request_data($formdata);
			$this->rules_array = array(
				'applicant_name' => 'required',
				'applicant_address' => 'required',
				'drainage_connection_details' => 'required',
				'type_of_septic' => 'required',
				'demand_applicable' => 'required',
				'upload_property_documents' => 'required',
				'upload_building_plan' => 'required',
			);
			$this->sanitize_array = array(
				'applicant_name' => 'sanitize_string',
				'applicant_address' => 'sanitize_string',
				'drainage_connection_details' => 'sanitize_string',
				'type_of_septic' => 'sanitize_string',
				'no_of_flats' => 'sanitize_string',
				'demand_applicable' => 'sanitize_string',
				'upload_property_documents' => 'sanitize_string',
				'upload_building_plan' => 'sanitize_string',
			);
			$modeldata = $this->modeldata = $this->validate_form($postdata);
			$modeldata['user_id'] = USER_ID;
			if($this->validated()){
				$db->where("application_form.id", $rec_id);;
				$bool = $db->update($tablename, $modeldata);
				$numRows = $db->getRowCount(); //number of affected rows. 0 = no record field updated
				if($bool && $numRows){
					$this->set_flash_msg("Record updated successfully", "success");
					return $this->redirect("application_form");
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
						return	$this->redirect("application_form");
					}
				}
			}
		}
		$db->where("application_form.id", $rec_id);;
		$data = $db->getOne($tablename, $fields);
		$page_title = $this->view->page_title = "Edit  Application Form";
		if(!$data){
			$this->set_page_error();
		}
		return $this->render_view("application_form/edit.php", $data);
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
		$db->where("application_form.id", $arr_rec_id, "in");
		$bool = $db->delete($tablename);
		if($bool){
			$this->set_flash_msg("Record deleted successfully", "success");
		}
		elseif($db->getLastError()){
			$page_error = $db->getLastError();
			$this->set_flash_msg($page_error, "danger");
		}
		return	$this->redirect("application_form");
	}
}
