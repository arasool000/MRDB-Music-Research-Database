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

$artist_id=$_POST['artist_to_delete'];

$sql = "DELETE FROM `artist`
WHERE `id` = ?";
$stmt = mysqli_prepare($conn, $sql);
$stmt->bind_param("i", $artist_id);
if($stmt->execute()) {
  echo '<div id="form-submit-alert">Deleted artist '.$artist_id.'</div>';
}
else {
  echo '<div id="form-submit-alert">Failed to delete artist '.$artist_id.' (is there an existing album by this artist?)</div>';
}
?>

<div class="container">
	<form action="artist.php" method="post">
		   <div class="form-group">
	<button>Back</button>
			</div>
	</form>
</div>
