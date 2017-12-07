
<html>
<head>  


    <title>Result</title>
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
<?php
$search_type=$_POST["TypeItem"];
$search_user=$_POST["Username"];
$keyword=$_POST["KeywordDetail"];

$con=new mysqli("localhost","root","","project1");
if($con->connect_error){
    echo 'Connection Faild: '.$con->connect_error;
    }else{
        $sql="select * from founddetail where (TypeItem like '%$search_type%') OR (Username like '%$search_user%')";


        $res=$con->query($sql);

        while($row=$res->fetch_assoc()){
        ?>    

        <br><br> <?php echo '' .$row["TypeItem"]; ?> <br>
        <?php echo '' .$row["Username"]; ?>  
        <img src ="<?php echo '' .$row["Localfile"]; ?> " alt="Icon" style="width:128px;height:128px">

        

        <?php    }       

        }
?>

<?php
$insearch="INSERT INTO searchdetail (Username, TypeSearch, KeywordDetail)
VALUES ('$search_user', '$search_type', '$keyword')";

if (!mysqli_query($con,$insearch)) {
die('Error: ' . mysqli_error($con));
}
#echo "1 record added";
mysqli_close($con);
?>