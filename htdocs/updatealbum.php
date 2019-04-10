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

$album=$_POST['album_to_update'];
$title=$_POST['title_updated'];
$artist=$_POST['artist_updated'];
$year=$_POST['year_updated'];
$label=$_POST['label_updated'];
$genre=$_POST['genre_updated'];

$sql = "UPDATE `album`
SET `title` = ?,
`artist` = ?,
`release_year` = ?,
`label` = ?,
`genre` = ?
WHERE `id` = ?";
$stmt = mysqli_prepare($conn, $sql);
$stmt->bind_param("siiiii", $title, $artist, $year, $label, $genre, $album);
if($stmt->execute()) {
  echo '<div id="form-submit-alert">Updated album with id = '.$album;
}
else {
  echo '<div id="form-submit-alert">Failed to update album '.$album.'</div>';
}
?>

<div class="container">
	<form action="album.php" method="post">
		   <div class="form-group">
	<button>Back</button>
			</div>
	</form>
</div>
