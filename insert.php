<html><body>
Welcome <?php echo $_POST["Username"]; ?><br>
Your Search is: <?php echo $_POST["TypeSearch"]; ?><br>

Your KeywordDetail is: <?php echo $_POST["KeywordDetail"]; ?><br>
</body></html>


<?php
$con=mysqli_connect ("localhost","root","","project1");
// Check connection
if (mysqli_connect_errno()) {
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
// escape variables for security

$Username= mysqli_real_escape_string($con, $_POST['Username']);
$TypeSearch= mysqli_real_escape_string($con, $_POST['TypeSearch']);
$KeywordDetail = mysqli_real_escape_string($con, $_POST['KeywordDetail']);

$sql="INSERT INTO searchdetail (Username, TypeSearch, KeywordDetail)
VALUES ('$Username', '$TypeSearch', '$KeywordDetail')";
if (!mysqli_query($con,$sql)) {
die('Error: ' . mysqli_error($con));
}
echo "1 record added";
mysqli_close($con);
?>

