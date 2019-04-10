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

$genre_name=$_POST['genre_to_delete'];

$sql = "DELETE FROM `genre`
WHERE `name` = ?";
$stmt = mysqli_prepare($conn, $sql);
$stmt->bind_param("s", $genre_name);
if($stmt->execute()) {
  echo '<div id="form-submit-alert">Deleted genre "'.$genre_name.'"</div>';
}
else {
  echo '<div id="form-submit-alert">Failed to delete "'.$genre_name.'"</div>';
}
?>

<div class="container">
	<form action="genre.php" method="post">
		   <div class="form-group">
	<button>Back</button>
			</div>
	</form>
</div>
