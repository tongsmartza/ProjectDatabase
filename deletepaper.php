<button onclick=\"deletePaper('"+arr[i].paperID+"')\">Delete</button>

<?php

$conn = new mysqli("localhost", "root", "", "serchdetail");
if (mysqli_connect_errno()) {
echo "Failed to connect to MySQL: " .
mysqli_connect_error();
}
mysqli_query($conn,"DELETE FROM searchdetail WHERE SearchID='".$_GET['SearchID']."'");
mysqli_close($conn);

echo("Delete data");
?>