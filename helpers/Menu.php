<?php
/**
 * Menu Items
 * All Project Menu
 * @category  Menu List
 */

class Menu{
	
	
			public static $navbartopleft = array(
		array(
			'path' => 'home', 
			'label' => 'Home', 
			'icon' => ''
		),
		
		array(
			'path' => 'api/offlineredirect', 
			'label' => 'Process Offline Application', 
			'icon' => ''
		),
		array(
			'path' => 'application_form', 
			'label' => 'Application Form', 
			'icon' => ''
		),
		
		array(
			'path' => 'user_info', 
			'label' => 'User Info', 
			'icon' => ''
		),
		
		array(
			'path' => 'drainage_noc_jal_cc', 
			'label' => 'Drainage Noc Jal CC', 
			'icon' => ''
		),
		
		array(
			'path' => 'drainage_noc_mal_cc', 
			'label' => 'Drainage Noc Mal CC', 
			'icon' => ''
		),
		
		array(
			'path' => 'drainage_noc_jal_oc', 
			'label' => 'Drainage Noc Jal OC', 
			'icon' => ''
		),
		
		array(
			'path' => 'drainage_noc_mal_oc', 
			'label' => 'Drainage Noc Mal OC', 
			'icon' => ''
		),
		
		array(
			'path' => 'master_property_structure_type_jalmal', 
			'label' => 'Masters', 
			'icon' => '',
'submenu' => array(
		array(
			'path' => 'master_property_type_jalmal', 
			'label' => 'Master Property Type Jalmal', 
			'icon' => ''
		),
		
		array(
			'path' => 'zone_master', 
			'label' => 'Master Zone', 
			'icon' => ''
		),
		
		array(
			'path' => 'master_property_structure_type_jalmal', 
			'label' => 'Master Property Structure Type Jalmal', 
			'icon' => ''
		),
		
		array(
			'path' => 'master_property_usage', 
			'label' => 'Master Property Usage', 
			'icon' => ''
		),
		
		array(
			'path' => 'm_election_ward', 
			'label' => 'M Election Ward', 
			'icon' => ''
		),
		
		array(
			'path' => 'm_zone_property', 
			'label' => 'M Zone Property', 
			'icon' => ''
		)
	)
		),
		
		array(
			'path' => 'payments', 
			'label' => 'Payments', 
			'icon' => ''
		),
		
		array(
			'path' => 'payments/challan', 
			'label' => 'Challan', 
			'icon' => ''
		),
		
		array(
			'path' => 'payments/detailed_challan', 
			'label' => 'Detailed Challan Report', 
			'icon' => ''
		),
		
		array(
			'path' => 'service_configuration', 
			'label' => 'Service Configuration', 
			'icon' => ''
		)
	);
		
	
	
			public static $type_of_septic = array(
		array(
			"value" => "SELF", 
			"label" => "SELF", 
		),
		array(
			"value" => "CORPORATION", 
			"label" => "CORPORATION", 
		),);
		
			public static $action = array(
		array(
			"value" => "ACCEPT", 
			"label" => "ACCEPT", 
		),
		array(
			"value" => "REVERT", 
			"label" => "REVERT", 
		),
		array(
			"value" => "REJECT", 
			"label" => "REJECT", 
		),);
		
			public static $demand = array(
		array(
			"value" => "YES", 
			"label" => "YES", 
		),
		array(
			"value" => "NO", 
			"label" => "NO", 
		),);
		
			public static $payment_mode = array(
		array(
			"value" => "DD", 
			"label" => "DD", 
		),);
		
}