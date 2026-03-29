<?php 

/**
 * SharedController Controller
 * @category  Controller / Model
 */
class SharedController extends BaseController{
	
	/**
     * user_info_zone_id_option_list Model Action
     * @return array
     */
	function user_info_zone_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT zone AS value,zone AS label FROM zone_master ORDER BY id ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * user_info_username_value_exist Model Action
     * @return array
     */
	function user_info_username_value_exist($val){
		$db = $this->GetModel();
		$db->where("username", $val);
		$exist = $db->has("user_info");
		return $exist;
	}

	/**
     * user_info_email_value_exist Model Action
     * @return array
     */
	function user_info_email_value_exist($val){
		$db = $this->GetModel();
		$db->where("email", $val);
		$exist = $db->has("user_info");
		return $exist;
	}

	/**
     * user_info_user_role_id_option_list Model Action
     * @return array
     */
	function user_info_user_role_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT role_id AS value, role_name AS label FROM roles";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_jal_cc_zone_id_option_list Model Action
     * @return array
     */
	function drainage_noc_jal_cc_zone_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,zone AS label FROM zone_master ORDER BY zone ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_jal_cc_election_ward_no_id_option_list Model Action
     * @return array
     */
	function drainage_noc_jal_cc_election_ward_no_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,ward_name AS label FROM m_election_ward ORDER BY id ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_jal_cc_property_type_id_option_list Model Action
     * @return array
     */
	function drainage_noc_jal_cc_property_type_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,property_type AS label FROM master_property_type_jalmal ORDER BY property_type ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_jal_cc_zone_property_id_option_list Model Action
     * @return array
     */
	function drainage_noc_jal_cc_zone_property_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,zone AS label FROM zone_master ORDER BY zone ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_jal_cc_property_type_as_per_application_id_option_list Model Action
     * @return array
     */
	function drainage_noc_jal_cc_property_type_as_per_application_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,property_type AS label FROM master_property_type_jalmal ORDER BY property_type ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_jal_cc_property_usage_type_id_option_list Model Action
     * @return array
     */
	function drainage_noc_jal_cc_property_usage_type_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,property_usage AS label FROM master_property_usage ORDER BY property_usage ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_jal_oc_zone_id_option_list Model Action
     * @return array
     */
	function drainage_noc_jal_oc_zone_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,zone AS label FROM zone_master ORDER BY zone ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_jal_oc_election_ward_no_id_option_list Model Action
     * @return array
     */
	function drainage_noc_jal_oc_election_ward_no_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,ward_name AS label FROM m_election_ward ORDER BY id ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_jal_oc_property_type_id_option_list Model Action
     * @return array
     */
	function drainage_noc_jal_oc_property_type_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,property_type AS label FROM master_property_type_jalmal ORDER BY property_type ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_jal_oc_zone_property_id_option_list Model Action
     * @return array
     */
	function drainage_noc_jal_oc_zone_property_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,zone AS label FROM zone_master ORDER BY zone ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_jal_oc_property_type_as_per_application_id_option_list Model Action
     * @return array
     */
	function drainage_noc_jal_oc_property_type_as_per_application_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,property_type AS label FROM master_property_type_jalmal ORDER BY property_type ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_jal_oc_property_usage_type_id_option_list Model Action
     * @return array
     */
	function drainage_noc_jal_oc_property_usage_type_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,property_usage AS label FROM master_property_usage ORDER BY property_usage ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_mal_cc_zone_id_option_list Model Action
     * @return array
     */
	function drainage_noc_mal_cc_zone_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,zone AS label FROM zone_master ORDER BY zone ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_mal_cc_election_ward_no_id_option_list Model Action
     * @return array
     */
	function drainage_noc_mal_cc_election_ward_no_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,ward_name AS label FROM m_election_ward ORDER BY id ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_mal_cc_property_type_id_option_list Model Action
     * @return array
     */
	function drainage_noc_mal_cc_property_type_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,property_type AS label FROM master_property_type_jalmal ORDER BY property_type ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_mal_cc_zone_property_id_option_list Model Action
     * @return array
     */
	function drainage_noc_mal_cc_zone_property_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,zone AS label FROM zone_master ORDER BY zone ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_mal_cc_property_type_as_per_application_id_option_list Model Action
     * @return array
     */
	function drainage_noc_mal_cc_property_type_as_per_application_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,property_type AS label FROM master_property_type_jalmal ORDER BY property_type ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_mal_cc_property_usage_type_id_option_list Model Action
     * @return array
     */
	function drainage_noc_mal_cc_property_usage_type_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,property_usage AS label FROM master_property_usage ORDER BY property_usage ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_mal_oc_zone_id_option_list Model Action
     * @return array
     */
	function drainage_noc_mal_oc_zone_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,zone AS label FROM zone_master ORDER BY zone ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_mal_oc_election_ward_no_id_option_list Model Action
     * @return array
     */
	function drainage_noc_mal_oc_election_ward_no_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,ward_name AS label FROM m_election_ward ORDER BY id ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_mal_oc_property_type_id_option_list Model Action
     * @return array
     */
	function drainage_noc_mal_oc_property_type_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,property_type AS label FROM master_property_type_jalmal ORDER BY property_type ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_mal_oc_zone_property_id_option_list Model Action
     * @return array
     */
	function drainage_noc_mal_oc_zone_property_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,zone AS label FROM zone_master ORDER BY zone ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_mal_oc_property_type_as_per_application_id_option_list Model Action
     * @return array
     */
	function drainage_noc_mal_oc_property_type_as_per_application_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,property_type AS label FROM master_property_type_jalmal ORDER BY property_type ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * drainage_noc_mal_oc_property_usage_type_id_option_list Model Action
     * @return array
     */
	function drainage_noc_mal_oc_property_usage_type_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id AS value,property_usage AS label FROM master_property_usage ORDER BY property_usage ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * getcount_drainagenocjalcc Model Action
     * @return Value
     */
	function getcount_drainagenocjalcc(){
		$db = $this->GetModel();
		if(USER_ROLE==3){
            $db->where("zone_value",explode(",",get_active_user("zone_id")),"IN");
            $db->where("(status>=1 or status='Completed' or status='Rejected')");
        }
        if(USER_ROLE==4){
            $db->where("zone_value",explode(",",get_active_user("zone_id")),"IN");
            $db->where("(status>=2 or status='Completed' or status='Rejected')");
        }
        if(USER_ROLE==5){
            // $db->where("zone_value",explode(",",get_active_user("zone_id")),"IN");
            $db->where("(status>=3 or status='Completed' or status='Rejected') ");
        } 
		$queryparams = null;
		$val = $db->getOne('drainage_noc_jal_cc', 'COUNT(*) AS num')['num'];
		
		if(is_array($val)){
			return $val[0];
		}
		return $val;
	}

	/**
     * getcount_drainagenocmalcc Model Action
     * @return Value
     */
	function getcount_drainagenocmalcc(){
		$db = $this->GetModel();
		if(USER_ROLE==3){
            $db->where("zone_value",explode(",",get_active_user("zone_id")),"IN"); 
            $db->where("(status>=1 or status='Completed' or status='Rejected')");
        }
        if(USER_ROLE==4){ 
            $db->where("zone_value",explode(",",get_active_user("zone_id")),"IN");
            $db->where("(status>=2 or status='Completed' or status='Rejected')");
        }
        if(USER_ROLE==5){
            // $db->where("zone_value",explode(",",get_active_user("zone_id")),"IN");
            $db->where("(status>=3 or status='Completed' or status='Rejected') ");
        }
		$sqltext = "SELECT COUNT(*) AS num FROM drainage_noc_mal_cc";
		$queryparams = null;
		$val = $db->getOne('drainage_noc_mal_cc', 'COUNT(*) AS num')['num'];
		
		if(is_array($val)){
			return $val[0];
		}
		return $val;
	}
    // New Functions added	
	function getcount_drainagenocjaloc(){
		$db = $this->GetModel();
		if(USER_ROLE==3){
            $db->where("zone_value",explode(",",get_active_user("zone_id")),"IN");
            $db->where("(status>=1 or status='Completed' or status='Rejected')");
        }
        if(USER_ROLE==4){
            $db->where("zone_value",explode(",",get_active_user("zone_id")),"IN");
            $db->where("(status>=2 or status='Completed' or status='Rejected')");
        }
        if(USER_ROLE==5){
            // $db->where("zone_value",explode(",",get_active_user("zone_id")),"IN");
            $db->where("(status>=3 or status='Completed' or status='Rejected') ");
        } 
		$queryparams = null;
		$val = $db->getOne('drainage_noc_jal_oc', 'COUNT(*) AS num')['num'];
		
		if(is_array($val)){
			return $val[0];
		}
		return $val;
	}
	
	// New Functions added	
	function getcount_drainagenocmaloc(){
		$db = $this->GetModel();
		if(USER_ROLE==3){
            $db->where("zone_value",explode(",",get_active_user("zone_id")),"IN");
            $db->where("(status>=1 or status='Completed' or status='Rejected')");
        }
        if(USER_ROLE==4){
            $db->where("zone_value",explode(",",get_active_user("zone_id")),"IN");
            $db->where("(status>=2 or status='Completed' or status='Rejected')");
        }
        if(USER_ROLE==5){
            // $db->where("zone_value",explode(",",get_active_user("zone_id")),"IN");
            $db->where("(status>=3 or status='Completed' or status='Rejected' or status='Reverted') ");
        } 
		$queryparams = null;
		$val = $db->getOne('drainage_noc_mal_oc', 'COUNT(*) AS num')['num'];
		
		if(is_array($val)){
			return $val[0];
		}
		return $val;
	}
	
	

}
