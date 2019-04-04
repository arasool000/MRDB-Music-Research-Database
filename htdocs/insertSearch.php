<html>
<body>
	
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Music";
$TEMP1 = $_POST['s1'];
$TEMP2 = $_POST['s2'];
$TEMP3 = $_POST['s3'];
$TEMP4 = $_POST['s4'];
$TEMP5 = $_POST['s5'];
//echo"$from1";
//echo"$from2";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$asd = "SELECT 'genre_id' FROM `Genre` WHERE `genre_name`=='$TEMP5'  ";
$sql1 = "INSERT INTO `Artist` (`artist_name`) VALUES ('$TEMP2')"; 
$sql2 = "INSERT INTO `Album` (`album_name`) VALUES ('$TEMP3')" ;
$sql3 = "INSERT INTO `Tracks` (`track_name`, `year`, `genre_id`) VALUES ('$TEMP1', '$TEMP4', '$TEMP5' )" ;
//$sql3 = "INSERT INTO `Tracks`` ('year') VALUES ('$TEMP1', '$TEMP4', )" ;



if ($conn->query($sql1) === true && $conn->query($sql2) && $conn->query($sql3)) 
{
   echo "Records inserted successfully.";
   echo $asd;
} else {
    
    echo "ERROR: Could not able to execute $sql. "
           .$conn->error; 
}

$conn->close();
?>
<meta http-equiv='refresh' content='0; URL=http://localhost/insert.php'>


<form action="insert.php" method="post">
<button name="subject" type="submit" value="search">back</button>
</form>
<form action="index.php" method="post">
<button name="subject" type="submit" value="search">Main Page</button>
</form>
</body>
</html>