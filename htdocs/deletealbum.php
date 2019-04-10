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

$album_id=$_POST['album_to_delete'];

$sql = "DELETE FROM `album`
WHERE `id` = ?";
$stmt = mysqli_prepare($conn, $sql);
$stmt->bind_param("i", $album_id);
if($stmt->execute()) {
  echo '<div id="form-submit-alert">Deleted album '.$album_id.'</div>';
}
else {
  echo '<div id="form-submit-alert">Failed to delete album '.$album_id.'</div>';
}
?>

<div class="container">
	<form action="album.php" method="post">
		   <div class="form-group">
	<button>Back</button>
			</div>
	</form>
</div>
