<html>
<head>
	<title>Responding</title>
</head>
<body>
	ประเภทของที่หาย <?php echo $_POST["losttype"]; ?> 
	สถานที่ทำหาย <?php echo $_POST["place"]; ?> <br>
	รายละเอียด <?php echo $_POST["detail"]; ?> <br>
</body>

<?php
	$con=mysqli_connect("localhost","root","","project");

	// Check connection
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
	// escape variables for security$line= mysqli_real_escape_string($con, $_POST['LineID']);
	$username= "SELECT Username FROM personaldetail;";

	$losttype= mysqli_real_escape_string($con, $_POST['losttype']);
	$place= mysqli_real_escape_string($con, $_POST['place']);
	$detail= mysqli_real_escape_string($con, $_POST['detail']);
	$sql="INSERT INTO lostdetail (TypeItem , Place, DateLost, Detail)
	VALUES ('$losttype','$place','NOW()','$detail')";
	if (!mysqli_query($con,$sql)) {
	die('Error: ' . mysqli_error($con));
	}
	echo "1 record added";
	mysqli_close($con);
?>
</html>
