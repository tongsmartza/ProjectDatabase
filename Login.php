<?php
	$conn = mysqli_connect("127.0.0.1", "root", "", "project1");
	session_start();
	$Username =trim($_POST['Username']);
	$Password =trim($_POST['Password']);
	
	$result = mysqli_query($conn, "SELECT * FROM personaldetail WHERE Username ='$Username' and Password = '$Password'");
	$count = mysqli_num_rows($result);
	$data = mysqli_fetch_assoc($result);
	if ($count == 1) {
		$_SESSION['Username'] = $Username;
		header("refresh:0.1;HomeWithLogin.php");
		exit(0);
		//navigate('HomeWithLogin.php');
	}
	if ($count == 0) {
		header("refresh:0.1;HomeWithoutLogin.html");
		exit(0);
		//navigate('HomeWithoutLogin.html');
	}
?>