<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$conn = new mysqli("localhost", "root", "", "project1");

$result = $conn->query("SELECT SearchID,Username,TypeSearch,DateSearch,TimeSearch,KeywordDetail FROM searchdetail;");

$outp = "[";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
    if ($outp != "[") {$outp .= ",";}
    $outp .= '{"SearchID":"'  . $rs["SearchID"] . '",';
    $outp .= '"Username":"'   . $rs["Username"] . '",';
    $outp .= '"TypeSearch":"'   . $rs["TypeSearch"] . '",';
    $outp .= '"DateSearch":"'. $rs["DateSearch"] . '",'; 
    $outp .= '"TimeSearch":"'. $rs["TimeSearch"] . '",';
    $outp .= '"KeywordDetail":"'. $rs["KeywordDetail"] . '"}';

}
$outp .="]";

$conn->close();

echo($outp);
?>