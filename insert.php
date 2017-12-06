<html><body>
Welcome <?php echo $_POST["Username"]; ?><br>
Your Search is: <?php echo $_POST["TypeSearch"]; ?><br>
Your KeywordDetail is: <?php echo $_POST["KeywordDetail"]; ?><br>
</body></html>

<?php
$con=mysqli_connect ("localhost","root","","serchdetail");
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

<!DOCTYPE html>
<html>
<head>
<style>
h1 {
    border-bottom: 3px solid #cc9900;
    color: #996600;
    font-size: 30px;
}
table, th , td {
    border: 1px solid grey;
    border-collapse: collapse;
    padding: 5px;
}
table tr:nth-child(odd) {
    background-color: #f1f1f1;
}
table tr:nth-child(even) {
    background-color: #ffffff;
}
</style>
</head>

<body>

<h1>Search Database</h1>
<div id="id01"></div>

<script>
loadPapers();

function loadPapers(){
var xmlhttp = new XMLHttpRequest();
var url = "http://localhost/getpaper1.php";

xmlhttp.onreadystatechange=function() {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        displayResponse(xmlhttp.responseText);
    }
}
xmlhttp.open("GET", url, true);
xmlhttp.send();
}

function displayResponse(response) {
    var arr = JSON.parse(response);
    var i;
    var out = "<table>";

    for(i = 0; i < arr.length; i++) {
        out += "<tr><td>" + 
        arr[i].SearchID +
        "</td><td>" +
	    arr[i].TypeSearch+
        "</td><td>" +
        arr[i].KeywordDetail+
	   "</td><td><button onclick=\"deletePaper('"+arr[i].SearchID+"')\">Delete</button>" +
        "</td></tr>";
    }
    out += "</table>";
    document.getElementById("id01").innerHTML = out;
}

function deletePaper(SearchID) {
    var xmlhttp = new XMLHttpRequest();
var url = "http://localhost/deletepaper.php?SearchID="+SearchID;

xmlhttp.onreadystatechange=function() {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
     //displayResponse(xmlhttp.responseText);
    loadPapers();
    }
}
xmlhttp.open("GET", url, true);
xmlhttp.send();

}
</script>

</body>
</html>