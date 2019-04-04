<html>
<body>
	<link rel="stylesheet" type="text/css" href="style1.css">

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Music";
$TEMP = $_POST['user'];
//echo"$from1";
//echo"$from2";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "DELETE FROM `tracks` WHERE`track_name` ='$TEMP'";

//UPDATE `artist` SET `artist_name` = 'sample entry test updated' WHERE `artist`.`id` = 16;
if ($conn->query($sql) === true) 
{
   echo "Records DELETED successfully.";
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