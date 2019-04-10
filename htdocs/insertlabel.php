<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Music";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$name=$_POST['name_to_insert'];
$country=$_POST['country_to_insert'];
$year=$_POST['year_to_insert'];

$sql = "INSERT INTO `label` (`name`, `year_formed`, `country`)
VALUES (?, ?, ?)";
$stmt = mysqli_prepare($conn, $sql);
$stmt->bind_param("sii", $name, $year, $country);
if($stmt->execute()) {
  echo '<div id="form-submit-alert">Success! Added label '.$name.'</div>';
}
else {
  echo '<div id="form-submit-alert">Failed to add label "'.$name.'" (does one already exist by that name?)</div>';
}

?>

<div class="container">
	<form action="label.php" method="post">
		   <div class="form-group">
	<button>Back</button>
			</div>
	</form>
</div>
