<?php
    $conn = mysqli_connect("127.0.0.1", "root", "", "project1");
    session_start();
    $key = $_SESSION['Username'];
    $result = mysqli_query($conn, "SELECT * FROM personaldetail WHERE Username='$key';");
    $data = mysqli_fetch_assoc($result);
    $result2 = mysqli_query($conn, "SELECT * FROM picdetail WHERE PicID = '".$data['PicID']."';");
    $data2 =mysqli_fetch_assoc($result2);

    echo '' .$data2['PicID'];
    //$result2 = mysqli_query($conn, "SELECT * FROM picdetail WHERE PicID =")
    
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
                padding: 10px;
            }

    /* Left and right column */
    .column.left {
                width: 50%;
            }

    /* Middle column */
    .column.right {
                width: 50%;
            }

    /* Clear floats after the columns */
    .row:after {
                content: "";
                display: table;
                clear: both;
            }
    .column.right h2 {
                /*text-align: center;*/
                font-family: verdana;
                font-size: 30px;
    }
    .column.right h3 {
                /*text-align: center;*/
                font-family: verdana;
                font-size: 20px;
    }

    img {
    display: block;
    margin:  auto;
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
    .footer {
                background-color: #f1f1f1;
                padding: 10px;
                text-align: center;
            }
    .welcome {
                text-align: center;
                font-family: verdana;
                font-size: 25px;

    }
    .uplode {

                background-color: #BDBDBD;
                color: white;
                padding: 16px;
                font-size: 16px;
                border: none;
                cursor: pointer;
            }
    .uplode a {
                float: left;
                display: block;
                color: #f2f2f2;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }
    .uplode a:hover {
                
                background-color: #ddd;
                color: black;
            }
    h1 
            {
                border-bottom: 3px solid #cc9900;
                color: #996600;
                font-size: 30px;
            }
    table, th , td 
            {
                border: 1px solid grey;
                border-collapse: collapse;
                padding: 5px;
            }
    table tr:nth-child(odd) 
            {
                background-color: #f1f1f1;
            }
    table tr:nth-child(even) 
            {
                background-color: #ffffff;
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
        <a href="HomeWithLogin.html">หน้าหลัก</a>
        <a href="#">ค้นหาของ</a>
        <a href="#">แจ้งของหาย</a>
        <a href="#">แจ้งหาเจ้าของ</a>
        <a href="#">คำถามที่พบบ่อย</a>
        <a href="#">เกี่ยวกับเรา</a>
    </div>
</head>
<body>
    <div class="row">
  <div class="column left welcome">

    <h2>Username</h2>
    <img src=" <?php echo ''.$data2['Localfile']; ?> " alt="Nakis" width="270" height="270">
    <br>
    
  </div>


  <div class="column right">
    <h2>ข้อมูลส่วนตัว</h2><br>
    <pre><h3>ชื่อ - นามสกุล     <?php echo $data['Firstname']; ?>     <?php echo $data['Lastname']; ?></h3></pre>
    <pre><h3>รหัสนักศึกษา       <?php echo $data['StudentID']; ?><?php echo $data['EmployeeID']; ?></h3></pre>
    <pre><h3><?php echo $data['DepartmentName']; ?></h3></pre>
    <h2>ข้อมูลการติดต่อ</h2><br>
    <pre><h3>เบอร์โทรศัพท์     <?php echo $data['Phone']; ?></h3></pre>
    <pre><h3>Facebook       <?php echo $data['Facebook']; ?></h3></pre>
    <pre><h3>Line       <?php echo $data['LineID']; ?></h3></pre>   
  </div>
  
</div>


<div class="footer">
  <p>Footer</p>

</div>
</body>
</html> 
