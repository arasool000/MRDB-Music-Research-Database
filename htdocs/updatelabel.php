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

$label_id=$_POST['label_to_update'];
$name=$_POST['name_to_update'];
$country=$_POST['country_to_update'];
$year=$_POST['year_to_update'];

$sql = "UPDATE `label`
SET `name` = ?,
`year_formed` = ?,
`country` = ?
WHERE `id` = ?";
$stmt = mysqli_prepare($conn, $sql);
$stmt->bind_param("siii", $name, $year, $country, $label_id);
if($stmt->execute()) {
  $query = "SELECT `name` FROM `country` WHERE `id` = " . $country;
  $result = $conn->query($query);
  $row = $result->fetch_assoc();
  $country_name = $row["name"];
  echo '<div id="form-submit-alert">Updated label with id = '.$label_id.' such that'.
       '<br>name: '.$name.
       '<br>country: '.$country_name.' and'.
       '<br>year: '.$year.'.</div>';
}
else {
  echo '<div id="form-submit-alert">Failed to update label '.$label_id.
       ' (does a label with the name "'. $name .'" already exist?)</div>';
}
?>

<div class="container">
	<form action="label.php" method="post">
		   <div class="form-group">
	<button>Back</button>
			</div>
	</form>
</div>
