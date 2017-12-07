<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$conn = new mysqli("127.0.0.1", "root", "", "project1");

$result = $conn->query("SELECT * FROM personaldetail;");

$outp = "[";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
    if ($outp != "[") {$outp .= ",";}
    $outp .= '{"Username":"'  . $rs["Username"] . '",';
    $outp .= '"StudentID":"'   . $rs["StudentID"]        . '",';
    $outp .= '"EmployeeID":"'   . $rs["EmployeeID"]        . '",';
    $outp .= '"Firstname":"'   . $rs["Firstname"]        . '",';
    $outp .= '"Lastname":"'   . $rs["Lastname"]        . '",';
    $outp .= '"DepartmentName":"'   . $rs["DepartmentName"]        . '",';
    $outp .= '"Phone":"'   . $rs["Phone"]        . '",';
    $outp .= '"Facebook":"'   . $rs["Facebook"]        . '",';
    $outp .= '"LineID":"'. $rs["LineID"]     . '"}'; 
}
$outp .="]";

$conn->close();

echo($outp);
?>