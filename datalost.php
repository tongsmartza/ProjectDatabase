<?php
	header("Access-Control-Allow-Origin: *");
	header("Content-Type: application/json; charset=UTF-8");

	$conn = new mysqli("localhost","root","","project1");

	$result = $conn->query("SELECT LostID , Username , TypeItem , Place , DateLost , Detail FROM lostdetail;");

	$outp = "[";
	while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
		if($outp != "[") {$outp .=",";}
		$outp .= '{"LostID":"' . $rs["LostID"] . '",';
		$outp .= '"Username":"' . $rs["Username"] . '",';
		$outp .= '"TypeItem":"' . $rs["TypeItem"] . '",';
		$outp .= '"Place":"' . $rs["Place"] . '",';
		$outp .= '"DateLost":"' . $rs["DateLost"] . '",';
		$outp .= '"Detail":"' . $rs["Detail"] . '"}';

	}

	$outp .="]";

	$conn->close();
	echo($outp);
?>
