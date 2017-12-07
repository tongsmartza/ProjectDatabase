<?php
    $conn = mysqli_connect("127.0.0.1", "root", "", "project1");
    session_start();
    
    // $result = mysqli_query($conn, "SELECT * FROM personaldetail");
    // $data = mysqli_fetch_assoc($result);
?>
<!DOCTYPE html>
<html>

<style type="text/css">

    body {
                background-color: #f1f1f1;
                margin: 0;
            }
	* {
   			    box-sizing: border-box;
		    }
			/* Style the header */
	.header {
                background-color: #f1f1f1;
                padding: 20px;
                text-align: center;
			}

			/* Style the top navigation bar */
	.topnav {
				position: -webkit-sticky;
			  	position: sticky;
			  	top: 0;
    			overflow: hidden;
    			background-color: #333;
			}

            /* Style the topnav links */
    .topnav a {
                float: left;
                display: block;
                color: #f2f2f2;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            /* Change color on hover */
    .topnav a:hover {
    			
                background-color: #ddd;
                color: black;
            }
	

	.column {
                float: left;
                width: 33.33%;
                padding: 15px;
            }

    /* Clear floats after the columns */
    .row:after {
                content: "";
                display: table;
                clear: both;
            }
    
     /* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
    @media (max-width:600px) {
        .column {
                    width: 100%;
                }       
            }
    .dropbtn {

                background-color: #BDBDBD;
                color: white;
                padding: 16px;
                font-size: 16px;
                border: none;
                cursor: pointer;
            }
    .dropdown {
                position: relative;
                display: inline-block;
            }

	.dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

    .dropdown-content b {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

    .dropdown-content b:hover {background-color: #f1f1f1}

    .dropdown:hover .dropdown-content {
                display: block;
            }
    .dropdown:hover .dropbtn {
                background-color: #BDBDBD;
            }
</style>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<div class="header">
  		<h1>Find My Lost</h1>
	</div>

    <div class="dropdown" style="float:right; width: 10%" >
        <!-- <dropdown style="float:right"> -->
            <button class="dropbtn"><?php echo $_SESSION['Username']; ?></button>
                  <div class="dropdown-content">
                    <b onclick="location.href='MyProfile.php'">ข้อมูลส่วนตัว</b>
                    <b onclick="location.href='#'">ประวัติของ</b>
                    <b onclick="location.href='HomeWithoutLogin.html'">ออกจากระบบ</b>
                  </div>
        </div>

	<div class="topnav">
        <a href="HomeWithLogin.php">หน้าหลัก</a>
        <a href="search.html">ค้นหาของ</a>
        <a href="Findform.php">แจ้งของหาย</a>
        <a href="Foundform.php">แจ้งหาเจ้าของ</a>
        <a href="Q&AWithLogin.php">คำถามที่พบบ่อย</a>
        <a href="AboutUsWithLogin.php">เกี่ยวกับเรา</a>
    </div>
</head>
<body>
    <div class="row">
        <div class="column">
            <h2>อันดับประเทศของที่หายมากที่สุด</h2>
                <p>- กระเป๋าสตางค์</p>
            </div>
        <div class="column">
            <h2>ของที่หายในเดือนธันวาคม</h2>
                <p>- เม้าเกมส์มิ่ง</p>
            </div>
        <div class="column">
            <h2>อันดับอาคารที่มีของหายมากที่สุด</h2>
                <p>- อาคารวิศวะวัฒนะ</p>
            </div>
        </div>
</body>
</html> 
