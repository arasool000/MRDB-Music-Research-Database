<html>
<body>
	<link rel="stylesheet" type="text/css" href="style1.css">

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Music";

$TEMP1 = $_POST['comment'];

//echo"$from1";
//echo"$from2";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql1 = "INSERT INTO `comments` (`comments`) VALUES ('$TEMP1')"; 



if ($conn->query($sql1) === true ) 
{
   echo "Comment inserted successfully.";
} else {
    
    echo "ERROR: Could not able to execute $sql. "
           .$conn->error; 
}

$conn->close();
?>

<meta http-equiv='refresh' content='0; URL=http://localhost/viewComments.php'>
</head>

<form action="index.php" method="post">
<button name="subject" type="submit" value="search">Main Page</button>
</form>

</body>
</html>