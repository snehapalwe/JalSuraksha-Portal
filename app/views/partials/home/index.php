<?php 
$page_id = null;
$comp_model = new SharedController;
$current_page = $this->set_current_page_link();
?>
<div>
    <div  class="bg-light p-3 mb-3">
        <div class="container">
            <div class="row ">
                <div class="col-md-12 comp-grid">
                    <h4 >The Dashboard</h4>
                </div>
            </div>
        </div>
    </div>
    <div  class="">
        <div class="container">
            <div class="row ">
                <div class="col-md-12 comp-grid">
                    <div class=""><div></div>
                        <?php
                    ?></div>
                </div>
            </div>
        </div>
    </div>
    <div  class="">
        <div class="container">
            <div class="row ">
                <div class="col-md-12 comp-grid">
                    <div class=""><div></div>
                    <?php if(USER_ROLE!=2)
                    { ?></div>
                    <?php $rec_count = $comp_model->getcount_drainagenocjalcc();  ?>
                    <a class="animated zoomIn record-count alert alert-warning"  href="<?php print_link("drainage_noc_jal_cc/") ?>">
                        <div class="row">
                            <div class="col-2">
                                <i class="fa fa-globe"></i>
                            </div>
                            <div class="col-10">
                                <div class="flex-column justify-content align-center">
                                    <div class="title">DRAINAGE NOC JAL CC</div>
                                    <small class=""></small>
                                </div>
                            </div>
                            <h4 class="value"><strong><?php echo $rec_count; ?></strong></h4>
                        </div>
                    </a>
                    <?php $rec_count = $comp_model->getcount_drainagenocmalcc();  ?>
                    <a class="animated zoomIn record-count alert alert-success"  href="<?php print_link("drainage_noc_mal_cc/") ?>">
                        <div class="row">
                            <div class="col-2">
                                <i class="fa fa-globe"></i>
                            </div>
                            <div class="col-10">
                                <div class="flex-column justify-content align-center">
                                    <div class="title">DRAINAGE NOC MAL CC</div>
                                    <small class=""></small>
                                </div>
                            </div>
                            <h4 class="value"><strong><?php echo $rec_count; ?></strong></h4>
                        </div>
                    </a>
                    <?php $rec_count = $comp_model->getcount_drainagenocjaloc();  ?>
                    <a class="animated zoomIn record-count alert alert-warning"  href="<?php print_link("drainage_noc_jal_oc/") ?>">
                        <div class="row">
                            <div class="col-2">
                                <i class="fa fa-globe"></i>
                            </div>
                            <div class="col-10">
                                <div class="flex-column justify-content align-center">
                                    <div class="title">DRAINAGE NOC JAL OC</div>
                                    <small class=""></small>
                                </div>
                            </div>
                            <h4 class="value"><strong><?php echo $rec_count; ?></strong></h4>
                        </div>
                    </a>
                    <?php $rec_count = $comp_model->getcount_drainagenocmaloc();  ?>
                    <a class="animated zoomIn record-count alert alert-success"  href="<?php print_link("drainage_noc_mal_oc/") ?>">
                        <div class="row">
                            <div class="col-2">
                                <i class="fa fa-globe"></i>
                            </div>
                            <div class="col-10">
                                <div class="flex-column justify-content align-center">
                                    <div class="title">DRAINAGE NOC MAL OC</div>
                                    <small class=""></small>
                                </div>
                            </div>
                            <h4 class="value"><strong><?php echo $rec_count; ?></strong></h4>
                        </div>
                    </a>
                    <div class=""><div></div>
                    <?php }if(USER_ROLE != 2  )
                    { ?></div>
                    <!-- New Dashboard Drainage -->
                    <br>
                    <div class=""><h2 style="font-size: 20px; font-weight: 600; margin-bottom: 10px; margin-top: 10px; color: #003366;">
                        Overall Summary Report
                    </h2>
                    <?php 
                        $jei = new User_infoController();
                        $db = $jei->GetModel();
                        // Fetch logged-in user's details
                        $user_id = get_active_user("id"); 
                        $user_name = get_active_user("name"); 
                        // Define services with respective table names
                        $services = [
                        "DRAINAGE NOC JAL CC" => "drainage_noc_jal_cc",
                        "DRAINAGE NOC MAL CC" => "drainage_noc_mal_cc",
                        "DRAINAGE NOC JAL OC" => "drainage_noc_jal_oc",
                        "DRAINAGE NOC MAL OC" => "drainage_noc_mal_oc"
                        ];
                    ?>
                    <div class="stock-report-table-container"> 
                        <table class="stock-report-table">
                            <tr>
                                <th>Sr.No</th>
                                <th>Name of Service</th>
                                <th>Total Applications Received</th>
                                <th>Pending at Auth1</th>
                                <th>Pending at Auth2</th>
                                <th>Pending at Auth3</th>
                                <th>Pending at Citizen Payment</th>
                                <th>Completed Applications</th>
                                <th>Reverted Applications</th>
                                <th>Rejected Applications</th>
                            </tr>
                            <?php
                            $i = 0;
                            foreach ($services as $service_name => $table_name) {
                            $i++;
                            // Fetch total count
                            $count = $db->getOne($table_name, "count(id) as num")['num'] ?? 0;
                            
                            // Fetch pending auth1 approval count
                            $db->where("status", "0");
                            $count_pending_at_citizen = $db->getOne($table_name, "count(id) as num")['num'] ?? 0;
                            
                            // Fetch pending auth1 approval count
                            $db->where("status", "1");
                            $count_pending_at_auth1 = $db->getOne($table_name, "count(id) as num")['num'] ?? 0;
                            
                            // Fetch pending auth1 approval count 
                            $count_pending_at_auth2 = $db->getOne($table_name, "SUM(CASE WHEN status = 2 and (demand!='YES') THEN 1 ELSE 0 END) AS num")['num'] ?? 0;
                            $count_pending_at_auth2_cp = $db->getOne($table_name, "SUM(CASE WHEN status = 2 and demand='YES' THEN 1 ELSE 0 END) AS num")['num'] ?? 0;
                            
                            // Fetch pending auth1 approval count
                            $db->where("status=3 or (status=4 and certificate='')");
                            $count_pending_at_auth3 = $db->getOne($table_name, "count(id) as num")['num'] ?? 0;
                            
                            // Fetch completed count
                            $db->where("status", "4");
                            $db->where("certificate", "","!=");
                            $count_completed = $db->getOne($table_name, "count(id) as num")['num'] ?? 0;
                            
                            // Fetch rejected count
                            $db->where("status", "Rejected");
                            $count_rejected = $db->getOne($table_name, "count(id) as num")['num'] ?? 0;
                            
                            // Fetch reverted count
                            $db->where("status", "Reverted");
                            $count_reverted = $db->getOne($table_name, "count(id) as num")['num'] ?? 0;
                        
                            $count_total=$count-$count_pending_at_citizen;
                            echo "<tr>";
                                echo "<td>" . $i . "</td>"; 
                                echo "<td>" . $service_name . "</td>";               
                                echo "<td><span style='background-color: #ffc107; color: #212529; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>" . $count_total . "</span></td>";
                                echo "<td><span style='background-color: #bee5eb; color: #000; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>" . $count_pending_at_auth1 . "</span></td>";
                                echo "<td><span style='background-color: #d1ecf1; color: #000; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>" . $count_pending_at_auth2 . "</span></td>";
                                echo "<td><span style='background-color: #e2d9f3; color: #000; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>" . $count_pending_at_auth3 . "</span></td>";
                                echo "<td><span style='background-color: #e2d9f3; color: #000; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>" . $count_pending_at_auth2_cp . "</span></td>";
                                echo "<td><span style='background-color: #28a745; color: #fff; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>" . $count_completed . "</span></td>";
                                echo "<td><span style='background-color: #fd7e14; color: #fff; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>" . $count_reverted . "</span></td>";
                                echo "<td><span style='background-color: #dc3545; color: #fff; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>" . $count_rejected . "</span></td>";
                            echo "</tr>"; 
                            }
                            ?>
                        </table>
                    </div>
                </br>
            </br>
        </div>
        <!-- End of New Div -->
        <!-- Ward wise Dashboard-->
                <div class=""><h2 style="font-size: 20px; font-weight: 600; margin-bottom: 10px; margin-top: 10px; color: #003366;">
                    Ward wise Report
                </h2>
                <form method="GET" style="margin-bottom: 20px;">
                    <label for="from_date">From: </label>
                    <input type="date" id="from_date" name="from_date" value="<?= $_GET['from_date'] ?? '' ?>" required>
                        <label for="to_date" style="margin-left: 10px;">To: </label>
                        <input type="date" id="to_date" name="to_date" value="<?= $_GET['to_date'] ?? '' ?>" required>
                            <button type="submit" style="margin-left: 10px;">Filter</button>
                        </form>
                        <style>
                            form {
                            background: #f9f9f9;
                            padding: 15px;
                            border: 1px solid #ccc;
                            border-radius: 5px;
                            display: inline-block;
                            margin-bottom: 20px;
                            }
                            form label {
                            font-weight: bold;
                            color: #003366;
                            margin-right: 5px;
                            }
                            form input[type="date"] {
                            padding: 5px 10px;
                            margin-right: 10px;
                            border: 1px solid #ccc;
                            border-radius: 3px;
                            }
                            form button {
                            background-color: #003366;
                            color: #fff;
                            padding: 6px 12px;
                            border: none;
                            border-radius: 3px;
                            cursor: pointer;
                            }
                            form button:hover {
                            background-color: #005b9a;
                            }
                            button {
                            padding: 6px 12px;
                            background-color: #28a745;
                            border: none;
                            color: white;
                            border-radius: 4px;
                            font-weight: bold;
                            cursor: pointer;
                            }
                            button:hover {
                            background-color: #218838;
                            }
                        </style>
                        <?php 
                        $from_date = $_GET['from_date'] ?? '';
                        $to_date = $_GET['to_date'] ?? '';
                        $jei = new User_infoController();
                        $db = $jei->GetModel();
                        // Fetch logged-in user's details
                        $user_id = get_active_user("id"); 
                        $user_name = get_active_user("name"); 
                        // Define services with respective table names
                        $services = [
                            "DRAINAGE NOC JAL CC" => "drainage_noc_jal_cc",
                            "DRAINAGE NOC MAL CC" => "drainage_noc_mal_cc",
                            "DRAINAGE NOC JAL OC" => "drainage_noc_jal_oc",
                            "DRAINAGE NOC MAL OC" => "drainage_noc_mal_oc"
                        ];
                        ?>
                        <div class="wide-report-table-container"> 
                            <table class="wide-report-table">
                                <tr>
                                    <th>Sr.No</th>
                                    <th>Name of Service</th>
                                    <th>Total Applications Received</th>
                                    <!--<th>Pending at Citizen</th>-->
                                    <th>Pending at Auth1</th>
                                    <th>Pending at Auth2</th>
                                     <th>Pending at Auth2-A</th> 
                                     <th>Pending at Auth2-B</th> 
                                     <th>Pending at Auth2-C</th> 
                                     <th>Pending at Auth2-D</th> 
                                     <th>Pending at Auth2-E</th> 
                                     <th>Pending at Auth2-F</th> 
                                     <th>Pending at Auth2-G</th> 
                                     <th>Pending at Auth2-H</th> 
                                     <th>Pending at Auth2-I</th>
                                     <th>Pending at Auth2-J</th>
                                    <th>Pending at Auth3</th>
                                    <!--<th>Pending at Auth4</th>-->
                                    <th>Completed Applications</th>
                                    <th>Rejected Applications</th>
                                    <th>Reverted Applications</th>
                                </tr>
                                <?php
                                $i = 0;
                                $zones = ['A','B','C','D','E','F','G','H','I','J'];
                                foreach ($services as $service_name => $table_name) {
                                $i++;
                                // Fetch counts
                                if ($from_date && $to_date) {
                                $db->where("DATE(timestamp)", $from_date, ">=");
                                $db->where("DATE(timestamp)", $to_date, "<=");
                                }
                                $count = $db->getOne($table_name, "count(id) as num")['num'] ?? 0;
                                if ($from_date && $to_date) {
                                $db->where("DATE(timestamp)", $from_date, ">=");
                                $db->where("DATE(timestamp)", $to_date, "<=");
                                }
                                $db->where("status", "0");
                                // Total count without pending at citizen
                                if ($from_date && $to_date) {
                                $db->where("DATE(timestamp)", $from_date, ">=");
                                $db->where("DATE(timestamp)", $to_date, "<=");
                                }
                                $count_pending_at_citizen = $db->getOne($table_name, "count(id) as num")['num'] ?? 0;
                                $count_total=$count-$count_pending_at_citizen;
                                $db->where("status", "1");
                                if ($from_date && $to_date) {
                                $db->where("DATE(timestamp)", $from_date, ">=");
                                $db->where("DATE(timestamp)", $to_date, "<=");
                                }
                                $count_pending_at_auth1 = $db->getOne($table_name, "count(id) as num")['num'] ?? 0;
                                $db->where("status", "2");
                                if ($from_date && $to_date) {
                                $db->where("DATE(timestamp)", $from_date, ">=");
                                $db->where("DATE(timestamp)", $to_date, "<=");
                                }
                                $count_pending_at_auth2 = $db->getOne($table_name, "count(id) as num")['num'] ?? 0;
                                // Zone-wise Auth2 counts
                                $auth2_zone_counts = [];
                                foreach ($zones as $zone) {
                                $db->where("status", "2");
                                $db->where("zone_value", $zone);
                                if ($from_date && $to_date) {
                                $db->where("DATE(timestamp)", $from_date, ">=");
                                $db->where("DATE(timestamp)", $to_date, "<=");
                                }
                                $auth2_zone_counts[$zone] = $db->getOne($table_name, "count(id) as num")['num'] ?? 0;
                                }
                            $db->where("(status=3 or (status=4 and certificate=''))");
                                if ($from_date && $to_date) {
                                $db->where("DATE(timestamp)", $from_date, ">=");
                                $db->where("DATE(timestamp)", $to_date, "<=");
                                }
                                $count_pending_at_auth3 = $db->getOne($table_name, "count(id) as num")['num'] ?? 0;
                                // $db->where("status", "4");
                                // if ($from_date && $to_date) {
                                // $db->where("DATE(timestamp)", $from_date, ">=");
                                // $db->where("DATE(timestamp)", $to_date, "<=");
                                // }
                                // $count_pending_at_auth4 = $db->getOne($table_name, "count(id) as num")['num'] ?? 0;
                            $db->where("(status=4 and certificate!='')");
                                if ($from_date && $to_date) {
                                $db->where("DATE(timestamp)", $from_date, ">=");
                                $db->where("DATE(timestamp)", $to_date, "<=");
                                }
                                $count_completed = $db->getOne($table_name, "count(id) as num")['num'] ?? 0;
                                $db->where("status", "Rejected");
                                if ($from_date && $to_date) {
                                $db->where("DATE(timestamp)", $from_date, ">=");
                                $db->where("DATE(timestamp)", $to_date, "<=");
                                }
                                $count_rejected = $db->getOne($table_name, "count(id) as num")['num'] ?? 0;
                                $db->where("status", "Reverted");
                                if ($from_date && $to_date) {
                                $db->where("DATE(timestamp)", $from_date, ">=");
                                $db->where("DATE(timestamp)", $to_date, "<=");
                                }
                                $count_rev = $db->getOne($table_name, "count(id) as num")['num'] ?? 0;
                                // Output table row
                                echo "<tr>";
                                    echo "<td>$i</td>";
                                    echo "<td>$service_name</td>";
                                    echo "<td><span style='background-color: #ffc107; color: #212529; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>$count_total</span></td>";
                                    // echo "<td><span style='background-color: #e2e3e5; color: #000; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>$count_pending_at_citizen</span></td>";
                                    echo "<td><span style='background-color: #bee5eb; color: #000; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>$count_pending_at_auth1</span></td>";
                                    echo "<td><span style='background-color: #d1ecf1; color: #000; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>$count_pending_at_auth2</span></td>";
                                    foreach ($zones as $zone) {
                                        echo "<td><span style='background-color: #d1ecf1; color: #000; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>" . $auth2_zone_counts[$zone] . "</span></td>";
                                    }
                                    echo "<td><span style='background-color: #e2d9f3; color: #000; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>$count_pending_at_auth3</span></td>";
                                    // echo "<td><span style='background-color: #ffe5b4; color: #000; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>$count_pending_at_auth4</span></td>";
                                    echo "<td><span style='background-color: #B8FFB8; color: #000; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>$count_completed</span></td>";
                                    echo "<td><span style='background-color: #FFB8B8; color: #000; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>$count_rejected</span></td>";
                                    echo "<td><span style='background-color: #FFB8B8; color: #000; padding: 2px 6px; border-radius: 3px; font-weight: bold;'>$count_rev</span></td>";
                                echo "</tr>";
                                }
                                ?>
                            </table>
                            <br><br>
                                <button onclick="exportTableToExcel('reportTable', 'ward_report')" style="margin-right: 10px;">Export to Excel</button>
                                <!--<button onclick="printTable()" style="margin-right: 10px;">Export to PDF</button>-->
                                <script>
                                    function exportTableToExcel(tableID, filename = '') {
                                    const tableSelect = document.querySelector('.wide-report-table-container table');
                                    const tableHTML = tableSelect.outerHTML;
                                    const blob = new Blob(
                                    ['\ufeff' + tableHTML],
                                    { type: 'application/vnd.ms-excel;charset=utf-8;' }
                                    );
                                    const downloadLink = document.createElement('a');
                                    const url = URL.createObjectURL(blob);
                                    downloadLink.href = url;
                                    downloadLink.download = filename ? filename + '.xls' : 'ward_report.xls';
                                    downloadLink.click();
                                    URL.revokeObjectURL(url);
                                    }
                                    function printTable() {
                                    const divToPrint = document.querySelector('.wide-report-table-container').innerHTML;
                                    const newWin = window.open('', '_blank');
                                    newWin.document.write('<html><head><title>PDF Export</title></head><body>');
                                        newWin.document.write('<h2>Ward Wise Report</h2>');
                                        newWin.document.write(divToPrint);
                                    newWin.document.write('</body></html>');
                                    newWin.document.close();
                                    newWin.print();
                                    }
                                </script>
                            </div>
                        </br>
                    </br>
                </div>
                <!-- End of New Div -->
                <div class=""><div></div>
                    <?php } ?></div>
                </div>
            </div>
        </div>
    </div>
</div>
