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

$artist=$_POST['artist_to_update'];
$name=$_POST['name_updated'];
$country=$_POST['country_updated'];
$year=$_POST['year_updated'];

$sql = "UPDATE `artist`
SET `name` = ?,
`origin_country` = ?,
`origin_year` = ?
WHERE `id` = ?";
$stmt = mysqli_prepare($conn, $sql);
$stmt->bind_param("ssii", $name, $country, $year, $artist);
if($stmt->execute()) {
  $query = "SELECT `name` FROM `country` WHERE `id` = " . $country;
  $result = $conn->query($query);
  $row = $result->fetch_assoc();
  $country_name = $row["name"];
  echo '<div id="form-submit-alert">Updated artist with id = '.$artist.' such that'.
       '<br>name: '.$name.
       '<br>country: '.$country_name.' and'.
       '<br>year: '.$year.'.</div>';
}
else {
  echo '<div id="form-submit-alert">Failed to update artist '.$artist.'</div>';
}
?>

<div class="container">
	<form action="artist.php" method="post">
		   <div class="form-group">
	<button>Back</button>
			</div>
	</form>
</div>
