<?php
class ApiController extends BaseController
{
    /**
     * call model action to retrieve data
     * @return json data 
     */
     
	 function save_data($table){ 
	    $db=$this->GetModel();
	    foreach($_POST as $field=>$value){
	        if(is_array($field) || is_array($value)){
	            continue;
	        }
        $data = [
            "value" => $value
        ];
    
        $db->where("user_id", USER_ID); 
        $db->where("tablename", $table);
        $db->where("field", $field);
    
        if ($db->getOne("temp_data")) { 
    
        $db->where("user_id", USER_ID); 
        $db->where("tablename", $table);
        $db->where("field", $field);
            $db->update("temp_data", $data);
        } else {
            print_r([
                "user_id"  => USER_ID,
                "tablename"=> $table,
                "field"    => $field,
                "value"    => $value,
            ]);
            $db->insert("temp_data", [
                "user_id"  => USER_ID,
                "tablename"=> $table,
                "field"    => $field,
                "value"    => $value,
            ]);
        }
        }
	 }
	 function get_data($table){
	     $db = $this->GetModel();

$db->where("user_id", USER_ID);
$db->where("tablename", $table);

$rows = $db->get("temp_data", 9999, "field, value");

$data = [];

foreach ($rows as $row) {
    if ($row['value'] !== '' && $row['value'] !== null) {
        $data[$row['field']] = $row['value'];
    }
}

render_json($data);

     
	 }
	 function offlineredirect(){
	     $allow=1;
	     if($allow){
	         $_SESSION['home']=SITE_ADDR;
	         echo "<script>location.href='https://singlewindowsystemkdmc.in/offline_noc/integratelogin/?mob=drainage&link=application_form';</script>";
	     }else{
	         echo "<script>alert('You are not authorized');location.href='".SITE_ADDR."'";
	     }
	 }
	
	 function jal_cc_report(){
	    $db=$this->GetModel();
	   
	   
	    
	    $rec=$db->get("drainage_noc_jal_cc",99999,"*, DATEDIFF(CURDATE(), date) AS diff_days");
	    
	    $auth1=0;
	    $auth2=0;
	    $auth3=0;
	    $complete=0; 
	    $rejected=0;$reverted=0;
	    
	    
	    
	    $p_wt_sla=0;
	    $p_w_sla=0;
	    
	    $c_wt_sla=0;
	    $c_w_sla=0;
	    $citizen=0;
	    foreach($rec as $r){
	        if($r['status']+0==1){
	            $auth1++;
	            if($r['diff_days']+0>10){$p_wt_sla++;}else{$p_w_sla++;}
	        }    
	        if($r['status']+0==2){
	             if($r['paid'] > 0 && $r['demand'] != "PAID" && $r['demand'] == "YES"){
	                 $citizen++;
	             }else{
    	            $auth2++;
    	            if($r['diff_days']+0>10){$p_wt_sla++;}else{$p_w_sla++;}
	             }
	        }    
	        if($r['status']+0==3){
	            $auth3++;
	            if($r['diff_days']+0>10){$p_wt_sla++;}else{$p_w_sla++;}
	        }     
	        if($r['status']+0==4){
	            if($r['certificate']==""){ 
	                $auth3++;
	                if($r['diff_days']+0>10){$p_wt_sla++;}else{$p_w_sla++;}
	            }else{ 
	                $complete++;
	                if($r['diff_days']+0>10){$c_wt_sla++;}else{$c_w_sla++;}
	            }
	        }      
	        if($r['status']+0==-1){
	            $rejected++;
	        }
if($r['status']+0=='Reverted'){
	            $reverted++;
	        } 
	    }
	    
	    render_json([
	            'auth_1'=>$auth1,
	            'auth_2'=>$auth2,
	            'auth_3'=>$auth3,
	            'complete'=>$complete,
	            'citizenpay'=>$citizen,
	            'rejected'=>$rejected,'reverted'=>$reverted,
	            "sla_p"=>[$p_w_sla,$p_wt_sla],
	            "sla_c"=>[$c_w_sla,$c_wt_sla], 
	        ]);
	    
	 } 
	 function jal_oc_report(){
	    $db=$this->GetModel();
	   
	   
	    
	    $rec=$db->get("drainage_noc_jal_oc",99999,"*, DATEDIFF(CURDATE(), date) AS diff_days");
	    
	    $auth1=0;
	    $auth2=0;
	    $auth3=0;
	    $complete=0; 
	    $rejected=0;$reverted=0;
	    
	    
	    $p_wt_sla=0;
	    $p_w_sla=0;
	    
	    $c_wt_sla=0;
	    $c_w_sla=0;
	    $citizen=0;
	    foreach($rec as $r){
	        if($r['status']+0==1){
	            $auth1++;
	            if($r['diff_days']+0>10){$p_wt_sla++;}else{$p_w_sla++;}
	        }    
	        if($r['status']+0==2){
	             if($r['paid'] > 0 && $r['demand'] != "PAID" && $r['demand'] == "YES"){
	                 $citizen++;
	             }else{
    	            $auth2++;
    	            if($r['diff_days']+0>10){$p_wt_sla++;}else{$p_w_sla++;}
	             }
	        }    
	        if($r['status']+0==3){
	            $auth3++;
	            if($r['diff_days']+0>10){$p_wt_sla++;}else{$p_w_sla++;}
	        }     
	        if($r['status']+0==4){
	            if($r['certificate']==""){ 
	                $auth3++;
	                if($r['diff_days']+0>10){$p_wt_sla++;}else{$p_w_sla++;}
	            }else{ 
	                $complete++;
	                if($r['diff_days']+0>10){$c_wt_sla++;}else{$c_w_sla++;}
	            }
	        }      
	        if($r['status']+0==-1){
	            $rejected++;
	        }
if($r['status']+0=='Reverted'){
	            $reverted++;
	        } 
	    }
	    
	    render_json([
	            'auth_1'=>$auth1,
	            'auth_2'=>$auth2,
	            'auth_3'=>$auth3,
	            'complete'=>$complete,
	            'citizenpay'=>$citizen,
	            'rejected'=>$rejected,'reverted'=>$reverted,
	            "sla_p"=>[$p_w_sla,$p_wt_sla],
	            "sla_c"=>[$c_w_sla,$c_wt_sla], 
	        ]);
	    
	 } 
	 function mal_cc_report(){
	    $db=$this->GetModel();
	   
	   $rec = $db->get("drainage_noc_mal_cc", 99999, "*, DATEDIFF(CURDATE(), date) AS diff_days");

	    
	    $auth1=0;
	    $auth2=0;
	    $auth3=0;
	    $complete=0; 
	    $rejected=0;$reverted=0;
	    
	    
	    $p_wt_sla=0;
	    $p_w_sla=0;
	    
	    $c_wt_sla=0;
	    $c_w_sla=0;
	    $citizen=0;
	    foreach($rec as $r){
	        if($r['status']+0==1){
	            $auth1++;
	            if($r['diff_days']+0>10){$p_wt_sla++;}else{$p_w_sla++;}
	        }    
	        if($r['status']+0==2){
	             if($r['paid'] > 0 && $r['demand'] != "PAID" && $r['demand'] == "YES"){
	                 $citizen++;
	             }else{
    	            $auth2++;
    	            if($r['diff_days']+0>10){$p_wt_sla++;}else{$p_w_sla++;}
	             }
	        }  
	        if($r['status']+0==3){
	            $auth3++;
	            if($r['diff_days']+0>10){$p_wt_sla++;}else{$p_w_sla++;}
	        }     
	        if($r['status']+0==4){
	            if($r['certificate']==""){ 
	                $auth3++;
	                if($r['diff_days']+0>10){$p_wt_sla++;}else{$p_w_sla++;}
	            }else{ 
	                $complete++;
	                if($r['diff_days']+0>10){$c_wt_sla++;}else{$c_w_sla++;}
	            }
	        }      
	        if($r['status']+0==-1){
	            $rejected++;
	        }
if($r['status']+0=='Reverted'){
	            $reverted++;
	        } 
	    }
	    
	    render_json([
	            'auth_1'=>$auth1,
	            'auth_2'=>$auth2,
	            'auth_3'=>$auth3,
	            'complete'=>$complete,
	            'citizenpay'=>$citizen,
	            'rejected'=>$rejected,'reverted'=>$reverted,
	            "sla_p"=>[$p_w_sla,$p_wt_sla],
	            "sla_c"=>[$c_w_sla,$c_wt_sla], 
	        ]);
	    
	 } 
	 function mal_oc_report(){
	    $db=$this->GetModel(); 
	   
	   
	    
	    $rec=$db->get("drainage_noc_mal_oc",99999,"*, DATEDIFF(CURDATE(), date) AS diff_days");
	    
	    $auth1=0;
	    $auth2=0;
	    $auth3=0;
	    $complete=0; 
	    $rejected=0;$reverted=0;
	    
	    
	    $p_wt_sla=0;
	    $p_w_sla=0;
	    
	    $c_wt_sla=0;
	    $c_w_sla=0;
	    $citizen=0;
	    foreach($rec as $r){
	        if($r['status']+0==1){
	            $auth1++;
	            if($r['diff_days']+0>10){$p_wt_sla++;}else{$p_w_sla++;}
	        }     
	        if($r['status']+0==2){
	             if($r['paid'] > 0 && $r['demand'] != "PAID" && $r['demand'] == "YES"){
	                 $citizen++;
	             }else{
    	            $auth2++;
    	            if($r['diff_days']+0>10){$p_wt_sla++;}else{$p_w_sla++;}
	             }
	        }  
	        if($r['status']+0==3){
	            $auth3++;
	            if($r['diff_days']+0>10){$p_wt_sla++;}else{$p_w_sla++;}
	        }     
	        if($r['status']+0==4){
	            if($r['certificate']==""){ 
	                $auth3++;
	                if($r['diff_days']+0>10){$p_wt_sla++;}else{$p_w_sla++;}
	            }else{ 
	                $complete++;
	                if($r['diff_days']+0>10){$c_wt_sla++;}else{$c_w_sla++;}
	            }
	        }      
	        if($r['status']+0==-1){
	            $rejected++;
	        }
if($r['status']+0=='Reverted'){
	            $reverted++;
	        } 
	    }
	    
	    render_json([
	            'auth_1'=>$auth1,
	            'auth_2'=>$auth2,
	            'auth_3'=>$auth3,
	            'complete'=>$complete,
	            'citizenpay'=>$citizen,
	            'rejected'=>$rejected,'reverted'=>$reverted,
	            "sla_p"=>[$p_w_sla,$p_wt_sla],
	            "sla_c"=>[$c_w_sla,$c_wt_sla], 
	        ]);
	    
	 } 
	 
    function paymentsredirect($id){
	    $db=$this->GetModel();
	    $db->where("id",$id);
	    $pay=$db->getOne("payments");
	    
	    ?>
	    <script>
	        location.href="<?php echo SITE_ADDR ?>../payment_gateway/?proj=DRAINAGE&service=<?php echo $pay['db_name'] ?>&id=<?php echo $id ?>&amount=<?php echo $pay['amount'] ?>&checksum=<?php echo hash("sha256",date("YmdHis")."DRAINAGE".$_GET['amount']) ?>";
	    </script>
	    <?php
        
    }
    function make_paymentcc($txid,$id,$amt,$name){
	    $db=$this->GetModel();
        
	    $db->where("id",$id);
	    $pay=$db->getOne("payments");
	    $db->where("id",$id);
	    $db->update("payments",[
	        "amount"=>$amt,
"payment_person"=>$name." TXN ID - ".$txid,
"payment_mode"=>"ONLINE", 
	        ]);
	        $db->where("id",$pay['rec_id']);
$db->update($pay['db_name'],["paid"=>$id, "demand" => "PAID"]);
 
    }
	function update_label($cahe=0){
	    $db=$this->GetModel();
		$lables=$db->get("label_names",99999,"*");
		$pages=['add','list','edit'];
		foreach($lables as $l){
			foreach($pages as $p){
				if(file_exists("app/views/partials/".$l['db_name']."/".$p."_old.php") && $cahe==0){ 
					$file="app/views/partials/".$l['db_name']."/".$p."_old.php"; 
				}else{
					$file="app/views/partials/".$l['db_name']."/".$p.".php"; 
				}
	
				$content=file_get_contents($file);
				$fval=str_replace("_"," ",$l['field']);
				  $fval=ucwords(strtolower($fval), '\',. ');
	
				$newval=$l['label_name'];
	
				if($p=="list"){  
					$contentnew=str_replace('<th  class="td-'.$l['field'].'"> '.$fval.'</th>',
					'<th  class="td-'.$l['field'].'"> '.$newval.'</th>',$content);
					$contentnew=str_replace($fval.':',$newval.':',$content);
				}else{ 

					$contentnew=str_replace('<label class="control-label" for="'.$l['field'].'">'.$fval.' <span class="text-danger">*</span></label>',
					'<label class="control-label" for="'.$l['field'].'">'.$newval.' <span class="text-danger">*</span></label>',$content);
					$contentnew=str_replace('<label class="control-label" for="'.$l['field'].'">'.$fval.' </label>',
					'<label class="control-label" for="'.$l['field'].'">'.$newval.' </label>',$contentnew);

				}
	
				file_put_contents("app/views/partials/".$l['db_name']."/".$p."_old.php",$content);
				file_put_contents("app/views/partials/".$l['db_name']."/".$p.".php",$contentnew);
	            echo "<br><hr>app/views/partials/".$l['db_name']."/".$p.".php";
			}
			
		}
		echo "Done"; 
	}
	
 
function viewreason($dbname, $id){
        $db = $this->GetModel();
        $db->where("rec_id", $id);
        $db->where("db_name", $dbname);   // <-- Added this line
        $db->orderby('id','DESC');
 
        $row = $db->getOne('accept_reject', "*");
        $reason = $row['remark'] ?? 'No Remark Found';
        ?>
        <html>
        <body>
            <table class="table">
                <!-- <tr>
                    <th>Rec ID</th>
                    <td><?php echo $id ?></td>
                </tr> -->
                <!-- <tr>
                    <th>DB Name</th>
                    <td><?php echo $dbname ?></td>
                </tr> -->
                <tr>
                    <th>Remark</th>
                    <td><?php echo $reason ?></td>
                </tr>
            </table>
        </body>
        </html>
        <?php
    }

function final_report() {
    $db = $this->GetModel();

    // get selected table (default = drainage_noc_jal_cc)
    $table = isset($_GET['form']) ? $_GET['form'] : 'drainage_noc_jal_cc';

    // safety check (only allow these 4 tables)
    $allowedTables = [
        'drainage_noc_jal_cc',
        'drainage_noc_jal_oc',
        'drainage_noc_mal_cc',
        'drainage_noc_mal_oc'
    ];
    if (!in_array($table, $allowedTables)) {
        $table = 'drainage_noc_jal_cc';
    }

    // fetch main report
    $rec = $db->rawQuery("
        SELECT
            SUM(CASE WHEN status = 1 THEN 1 ELSE 0 END) AS auth1,
            SUM(CASE WHEN status = 2 and (demand!='YES') THEN 1 ELSE 0 END) AS auth2,
            SUM(CASE WHEN status = 2 and demand='YES' THEN 1 ELSE 0 END) AS auth2_pay,
            SUM(CASE WHEN status = 3  THEN 1 ELSE 0 END) AS auth3,
            SUM(CASE WHEN status = 4  and certificate='' THEN 1 ELSE 0 END) AS auth3cup,
            SUM(CASE WHEN status = 4 and certificate!='' THEN 1 ELSE 0 END) AS completed,
            SUM(CASE WHEN status = 'Reverted' THEN 1 ELSE 0 END) AS reverted,
            SUM(CASE WHEN status = 'Rejected' THEN 1 ELSE 0 END) AS rejected
        FROM $table
    ")[0];

    // daily applications
    $dailyData = $db->rawQuery("
        SELECT DATE(date) AS date, COUNT(*) AS total
        FROM $table
        GROUP BY DATE(date)
        ORDER BY DATE(date) DESC
    ");

    $dates = [];
    $totals = [];
    foreach ($dailyData as $row) {
        $dates[] = $row['date'];
        $totals[] = $row['total'];
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>KDMC DRAINAGE DEPARTMENT REPORT</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap & Chart.js -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

  <style>
      /* (keeping your full CSS here, unchanged for styling) */
    @import url('https://fonts.googleapis.com/css2?family=Signika+Negative:wght@300..700&display=swap');

    * {
      font-family: "Signika Negative", serif;
      font-optical-sizing: auto;
      font-weight: 400;
      font-style: normal;
    }
    
    body {
      background: linear-gradient(135deg, #eef2f3, #dfe9f3);
      color: #212529;
      min-height: 100vh;
    }
    
    /* ===== Dashboard Title Styling ===== */
    .dashboard-title {
        font-family: "Signika Negative", sans-serif;
        font-size: 2rem;
        font-weight: 700;
        text-align: center;
        color: #a0522d; /* fallback brown */
        margin-bottom: 2rem;
        margin-top: 2px;
        padding-top: 20px;
        position: relative;
        display: block;
        background: linear-gradient(90deg, #a0522d, #8b4513); /* brown gradient */
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }
    
    /* Animated underline */
    .dashboard-title::after {
        content: '';
        display: block;
        width: 0;
        height: 4px;
        margin: 6px auto 0;
        background: linear-gradient(90deg, #a0522d, #8b4513); /* brown gradient */
        border-radius: 2px;
        transition: width 0.4s ease-in-out;
    }
    .dashboard-title:hover::after {
        width: 50%;
    }

    /* ===== Status Table Styling ===== */
    .status-table {
        font-family: "Signika Negative", sans-serif;
        font-size: 14px;
        border-radius: 10px;
        overflow: hidden;
        background: #fff;
        box-shadow: 0 4px 12px rgba(0,0,0,0.08);
        border: 2px solid #28a745;
    }
    
    .status-table thead {
        background: linear-gradient(90deg, #28a745, #218838);
        color: #fff;
        text-transform: uppercase;
        font-weight: 600;
    }
    
    .status-table th, .status-table td {
        padding: 12px 15px;
        border: 1px solid #c8e6c9;
        transition: all 0.3s ease;
        font-weight: bold;
    }
    
    .status-table tbody tr:nth-child(even) {
        background-color: #f3f8f4;
    }
    .status-table tbody tr:hover {
        background: #d4edda;
        transform: scale(1.01);
        box-shadow: 0 4px 12px rgba(0,0,0,0.08);
        transition: all 0.3s ease;
    }
    
    /* Badges */
    .status-table td span.badge {
        display: inline-block;
        min-width: 40px;
        padding: 5px 10px;
        border-radius: 20px;
        color: #fff;
        font-weight: 600;
        font-size: 16px;
        box-shadow: 0 2px 6px rgba(0,0,0,0.15);
    }
    .status-table td span.citizen { background-color: #007bff; }
    .status-table td span.cg { background-color: #6f42c1; }
    .status-table td span.gs { background-color: #fa00b8; }
    .status-table td span.gs-tippni { background-color: #ffc107; color: #212529; }
    .status-table td span.dmc { background-color: #17a2b8; }
    .status-table td span.completed { background-color: #28a745; }
    .status-table td span.orbg { background-color: #ff8b0f; }
    .status-table td span.rejected { background-color: #dc3545; }
    .status-table td span.cancelled { background-color: #6c757d; }
    
    /* ===== Animations ===== */
    .fade-up {
      opacity: 0;
      transform: translateY(25px);
      transition: all 0.8s ease-out;
    }
    .fade-up.show {
      opacity: 1;
      transform: translateY(0);
    }
    .status-table tbody tr {
      opacity: 0;
      transform: translateY(15px);
      animation: fadeInUpRow 0.6s ease forwards;
    }
    .status-table tbody tr:nth-child(1) { animation-delay: 0.1s; }
    .status-table tbody tr:nth-child(2) { animation-delay: 0.2s; }
    .status-table tbody tr:nth-child(3) { animation-delay: 0.3s; }
    .status-table tbody tr:nth-child(4) { animation-delay: 0.4s; }
    .status-table tbody tr:nth-child(5) { animation-delay: 0.5s; }
    .status-table tbody tr:nth-child(6) { animation-delay: 0.6s; }
    .status-table tbody tr:nth-child(7) { animation-delay: 0.7s; }
    .status-table tbody tr:nth-child(8) { animation-delay: 0.8s; }
    
    @keyframes fadeInUpRow {
      from { opacity: 0; transform: translateY(15px); }
      to { opacity: 1; transform: translateY(0); }
    }
    .dashboard-title2 {
        font-family: "Signika Negative", sans-serif;
        font-size: 1.5rem; /* smaller than main title */
        font-weight: 700;
        text-align: center;
        color: #a0522d; /* fallback brown */
        margin-top: 2px;
        padding-top: 10px;
        position: relative;
        display: block;
        background: linear-gradient(90deg, #a0522d, #8b4513);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }
    
    /* Animated underline */
    .dashboard-title2::after {
        content: '';
        display: block;
        width: 0;
        height: 3px; /* slightly thinner than main title underline */
        margin: 4px auto 0;
        background: linear-gradient(90deg, #a0522d, #8b4513);
        border-radius: 2px;
        transition: width 0.4s ease-in-out;
    }
    .dashboard-title2:hover::after {
        width: 10%; /* smaller hover underline */
    }
    
    /* Optional: smaller font for <small> inside title2 */
    .dashboard-title2 small {
        font-size: 0.8rem; /* adjust as needed */
        display: block;
        color: #8b4513;
    }
    
   /* Custom Navbar Color */
    .my-navbar {
        background-color: #4DA9F7; /* your desired light blue */
        color: white; /* Text color */
    }
    
    /* Navbar links */
    .my-navbar .nav-link {
        color: white; /* default link color */
        transition: color 0.3s ease;
    }
    
    .my-navbar .nav-link:hover {
        color: #ffd700; /* optional hover color (gold) */
    }
    
    .my-navbar .nav-link.active {
        color: yellow; /* active link color */
    }
    
    /* Optional: brand color */
    .my-navbar .navbar-brand {
        color: white;
        font-weight: bold;
    }
    .orbg{

    }
  </style>
</head>
<body>

<!-- Navbar Menu -->
<nav class="navbar navbar-expand-lg navbar-dark shadow-sm my-navbar">
  <div class="container-fluid">
    <a class="navbar-brand fw-bold" href="#">KDMC Drainage NOC Reports</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
            data-bs-target="#navbarNav" aria-controls="navbarNav" 
            aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <?php
        foreach ($allowedTables as $tbl) {
            $active = ($table == $tbl) ? "active" : "";
            $label = strtoupper(str_replace("_"," ",str_replace("drainage_noc_", "", $tbl))); // show as JAL_CC, etc
            echo "<li class='nav-item'>
                    <a class='nav-link $active' href='?form=$tbl'>$label</a>
                  </li>";
        }
        ?>
      </ul>
    </div>
  </div>
</nav>

<h1 class="dashboard-title2">   
  <small style="font-size:18px;">(<?= strtoupper(str_replace("_"," ",str_replace("drainage_noc_", "", $table))) ?>)</small>
</h1>
<h1 class="dashboard-title">DRAINAGE DEPARTMENT KDMC REPORT</h1>
<!-- Data Table -->
<div class="container mb-4">
  <div class="table-responsive">
      <table class="table status-table text-center align-middle">
          <thead>
              <tr>
                  <th>Auth Level 1</th>
                  <th>Auth Level 2</th>
                  <th>Citizen Payment Pending</th>
                  <th>Auth Level 3</th>
                  <th>Auth Level 3 Certificate Upload Pending</th>
                  <th>Completed</th>
                  <th>Reverted</th>
                  <th>Rejected</th>
              </tr>
          </thead>
          <tbody>
              <tr>
                  <td><span class="badge cg"><?= $rec['auth1'] ?></span></td>
                  <td><span class="badge gs"><?= $rec['auth2'] ?></span></td>
                  <td><span class="badge orbg"><?= $rec['auth2_pay'] ?></span></td>
                  <td><span class="badge gs-tippni"><?= $rec['auth3'] ?></span></td>
                  <td><span class="badge dmc"><?= $rec['auth3cup'] ?></span></td>
                  <td><span class="badge completed"><?= $rec['completed'] ?></span></td>
                  <td><span class="badge cancelled"><?= $rec['reverted'] ?></span></td>
                  <td><span class="badge rejected"><?= $rec['rejected'] ?></span></td>
              </tr>
          </tbody>
      </table>
  </div>
</div>

<!-- Charts -->
<div class="container">
  <div class="row fade-up">
      <div class="col-2"></div>
      <div class="col-md-4 mb-4">
          <canvas id="barChart" height="300"></canvas>
      </div>
      <div class="col-md-4 mb-4">
          <canvas id="pieChart" height="300"></canvas>
      </div>
  </div>
  <div class="row fade-up d-none">
      <div class="col-2"></div>
      <div class="col-8">
          <h4 class="text-center text-success mb-3">Daily Applications Trend</h4>
          <canvas id="dailyChart" height="120"></canvas>
      </div>
  </div>
</div>

<script>
  const dailyLabels = <?= json_encode($dates) ?>;
  const dailyCounts = <?= json_encode($totals) ?>;
  const labels = ['Auth 1', 'Auth 2','Citizen Payment Pending', 'Auth 3', 'Auth 3 Certificate Upload Pending',  'Completed','Reverted', 'Rejected' ];

  const values = [
      <?= $rec['auth1'] ?>,
      <?= $rec['auth2'] ?>,
      <?= $rec['auth2_pay'] ?>,
      <?= $rec['auth3'] ?>, 
      <?= $rec['auth3cup'] ?>, 
      <?= $rec['completed'] ?>,
      <?= $rec['reverted'] ?>,
      <?= $rec['rejected'] ?>
  ];
//   const baseColors = ['#007bff', '#20c997', '#17a2b8', '#28a745' , '#dc3545' ];
  
     const baseColors = [
       "#6f42c1","#fa00b8","#ff8b0f","#ffc107","#17a2b8","#28a745", "#ff9da7", "#dc3545"
    ];

    Chart.defaults.font.family = "'Signika Negative', sans-serif";
    Chart.defaults.font.size = 14;
    
  // Line Chart
  new Chart(document.getElementById('dailyChart'), {
      type: 'line',
      data: { labels: dailyLabels, datasets: [{
          label: 'Applications per Day',
          data: dailyCounts,
          borderColor: '#28a745',
          backgroundColor: '#28a745',
          tension: 0.3,
          pointRadius: 4
      }]},
      options: { responsive: true }
  });

  // Pie Chart
  new Chart(document.getElementById('pieChart'), {
      type: 'pie',
      data: { labels: labels, datasets: [{ data: values, backgroundColor: baseColors }] },
      options: { responsive: true }
  });

  // Bar Chart
  new Chart(document.getElementById('barChart'), {
      type: 'bar',
      data: { labels: labels, datasets: [{ data: values, backgroundColor: baseColors }] },
      options: { responsive: true },
      
        options: {
            plugins: {
                title: {
                    display: true,
                    text: "Status Counts",
                    font: { size: 18, weight: "bold" },
                    padding: { bottom: 20 }
                },
                legend: { display: false },
                tooltip: {
                    backgroundColor: "#000",
                    padding: 10,
                    bodyFont: { size: 13 },
                    callbacks: {
                        label: function(context) {
                            return `${context.label}: ${context.parsed.y}`;
                        }
                    }
                }
            },
            interaction: { mode: "index", intersect: false },
            scales: {
                x: {
                    ticks: { font: { size: 13 } }
                },
                y: {
                    beginAtZero: true,
                    ticks: { stepSize: 1, font: { size: 13 } },
                    grid: { color: "rgba(0,0,0,0.05)" }
                }
            },
            animation: {
                duration: 1200,
                easing: "easeOutBounce"
            }
        }
  });
  
  document.addEventListener('DOMContentLoaded', () => {
      const faders = document.querySelectorAll('.fade-up');
      const observer = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
          if (entry.isIntersecting) {
            entry.target.classList.add('show');
            observer.unobserve(entry.target);
          }
        });
      }, { threshold: 0.25 });
      faders.forEach(el => observer.observe(el));
    });
</script>

</body>
</html>

<?php
}
 
 
}
