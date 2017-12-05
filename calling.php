<?php
	header("Access-Control-Allow-Origin: *");
	header("Content-Type: application/json; charset=UTF-8");

	$conn = new mysqli("localhost","root","","project");

	$result = $conn->query("SELECT Username, StudentID, Firstname, Lastname, DepartmentName FROM personaldetail;");

	$outp = "[";
	while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
		if($outp != "[") {$outp .=",";}
		$outp .= '{"Username":"' . $rs["Username"] . '",';
		$outp .= '"StudentID":"' . $rs["StudentID"] . '",';
		$outp .= '"FirstName":"' . $rs["Firstname"] . '",';
		$outp .= '"LastName":"' . $rs["Lastname"] . '",';
		$outp .= '"Department":"' . $rs["DepartmentName"] . '"}';
	}

	$outp .="]";

	$conn->close();
	echo($outp);
?>


