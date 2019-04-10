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

$genre_name=$_POST['genre_to_update'];
$new_genre_name=$_POST['new_genre_name'];

$sql = "UPDATE `genre`
SET `name` = ?
WHERE `name` = ?";
$stmt = mysqli_prepare($conn, $sql);
$stmt->bind_param("ss", $new_genre_name, $genre_name);
if($stmt->execute()) {
  echo '<div id="form-submit-alert">Updated genre "'.$genre_name.'" to "'.$new_genre_name.'"</div>';
}
else {
  echo '<div id="form-submit-alert">Failed to update "'.$genre_name.'" to "'.$new_genre_name.
       '" (is "'.$new_genre_name.'" already a genre?)</div>';
}
?>

<div class="container">
	<form action="genre.php" method="post">
		   <div class="form-group">
	<button>Back</button>
			</div>
	</form>
</div>
