<html>
<head>
	<title>Responding</title>
</head>
<body>
	Welcome <?php echo $_POST["FirstName"]; ?> 
	<?php echo $_POST["LastName"]; ?> <br>
	ID <?php echo $_POST["StudentID"]; ?> <br>
	Facalty <?php echo $_POST["Facalty"]; ?> <br>
	Department <?php echo $_POST["DepartmentName"]; ?> <br>
	<br><br>
</body>

<?php
	$con=mysqli_connect("localhost","root","","project");
	// Check connection
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
	// escape variables for security
	$id = mysqli_real_escape_string($con, $_POST['StudentID']);
	$name= mysqli_real_escape_string($con, $_POST['FirstName']);
	$lastname= mysqli_real_escape_string($con, $_POST['LastName']);
	$facalty= mysqli_real_escape_string($con, $_POST['Facalty']);
	$department= mysqli_real_escape_string($con, $_POST['DepartmentName']);
	$telno = mysqli_real_escape_string($con, $_POST['Phone']);
	$facebook = mysqli_real_escape_string($con, $_POST['Facebook']);
	$line= mysqli_real_escape_string($con, $_POST['LineID']);
	$sql="INSERT INTO personaldetail (id, name, lastname, facalty, department, telno, facebook, lineid)
	VALUES ('$id','$name','$lastname','$facalty','$department','$telno','$facebook','$line')";
	if (!mysqli_query($con,$sql)) {
	die('Error: ' . mysqli_error($con));
	}
	echo "1 record added";
	mysqli_close($con);
?>
</html>
