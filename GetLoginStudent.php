<html><body>
<h2>Your Data SUBMIT</h2><BR>
	Username <?php echo $_POST["Username"]?> <BR>
	StudentID <?php echo $_POST["StudentID"]?> <BR>
	FirstName <?php echo $_POST["FirstName"]?> <BR>
	LastName <?php echo $_POST["LastName"]?> <BR>
	Facalty <?php echo $_POST["Facalty"]?> <BR>
	DepartmentName <?php echo $_POST["DepartmentName"]?> <BR>
	Phone <?php echo $_POST["Phone"]?> <BR>
	Facebook <?php echo $_POST["Facebook"]?> <BR>
	LineID <?php echo $_POST["LineID"]?> <BR>

	<button onclick="location.href='HomeWithoutLogin.html'">กลับสู่หน้าหลัก
	</button><br>
</body></html>

<?php
$con=mysqli_connect("localhost","root","","project1");
if(mysqli_connect_errno()){echo "Failed to connect to MySQL:". 
	mysqli_connect_error();}
$Username = mysqli_real_escape_string($con,$_POST['Username']);
$StudentID = mysqli_real_escape_string($con,$_POST['StudentID']);
$FirstName = mysqli_real_escape_string($con,$_POST['FirstName']);
$LastName = mysqli_real_escape_string($con,$_POST['LastName']);
$Password = mysqli_real_escape_string($con,$_POST['Password']);
$Facalty = mysqli_real_escape_string($con,$_POST['Facalty']);
$DepartmentName = mysqli_real_escape_string($con,$_POST['DepartmentName']);
$Phone = mysqli_real_escape_string($con,$_POST['Phone']);
$Facebook = mysqli_real_escape_string($con,$_POST['Facebook']);
$LineID = mysqli_real_escape_string($con,$_POST['LineID']);
$upload = mysqli_real_escape_string($con,$_POST['fileUpload']);

$sql = "INSERT INTO personaldetail (Username,StudentID,FirstName,LastName,Password,DepartmentName,Phone,Facebook,LineID)
VALUES ('$Username','$StudentID','$FirstName','$LastName','$Password','$DepartmentName','$Phone','$Facebook','$LineID');";

$sql2 = "INSERT INTO picdetail (Localfile,Username)
VALUES ('$upload','$Username');";

if(!mysqli_query($con,$sql)&&!mysqli_query($con,$sql2))
	{die('Error:'.mysqli_error($con));}
echo "1 record added";
mysqli_close($con);

?>
