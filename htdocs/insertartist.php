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

$name=$_POST['name_inserted'];
$country=$_POST['country_inserted'];
$year=$_POST['year_inserted'];

$sql = "INSERT INTO `artist` (`name`, `origin_country`, `origin_year`)
VALUES (?, ?, ?)";
$stmt = mysqli_prepare($conn, $sql);
$stmt->bind_param("ssi", $name, $country, $year);
if($stmt->execute()) {
  echo '<div id="form-submit-alert">Success! Added artist '.$name.'</div>';
}
else {
  echo '<div id="form-submit-alert">Failed to add artist '.$name.'</div>';
}

?>

<div class="container">
	<form action="artist.php" method="post">
		   <div class="form-group">
	<button>Back</button>
			</div>
	</form>
</div>
