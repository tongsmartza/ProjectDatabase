<html><body>
Welcome <?php echo $_POST["Username"]; ?><br>
Your Search is: <?php echo $_POST["TypeSearch"]; ?><br>

Your KeywordDetail is: <?php echo $_POST["KeywordDetail"]; ?><br>
<script>
		loadPapers();

		function loadPapers() {
			var xmlhttp = new XMLHttpRequest();
			var url = "http://localhost/fetchsearch.php";

			xmlhttp.onreadystatechange = function() {
				if(xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					displayResponse(xmlhttp.responseText);
				}
			}
			xmlhttp.open("GET",url,true);
			xmlhttp.send();
		}

		function displayResponse(response) {
			var array = JSON.parse(response);
			var i;
			var out ="<table>";
			for(i=0;i<array.length;i++) {
				out += 	"<tr><td>" + array[i].LostID
					+	"</td><td>" + array[i].Username
					+	"</td><td>" + array[i].TypeItem
					+	"</td><td>" + array[i].Place
					+	"</td><td>" + array[i].DateLost
					+	"</td><td>" + array[i].Detail


					+	"</td></tr>";

			}
			out += "</table>";
			document.getElementById("id01").innerHTML = out;
		}

		
		</script>

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


