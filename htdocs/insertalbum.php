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

$title=$_POST['title_inserted'];
$artist=$_POST['artist_inserted'];
$year=$_POST['year_inserted'];
$label=$_POST['label_inserted'];
$genre=$_POST['genre_inserted'];

$sql = "INSERT INTO `album` (`title`, `artist`, `release_year`, `label`, `genre`)
VALUES (?, ?, ?, ?, ?)";
$stmt = mysqli_prepare($conn, $sql);
$stmt->bind_param("siiii", $title, $artist, $year, $label, $genre);
if($stmt->execute()) {
  echo '<div id="form-submit-alert">Success! Added album '.$title.'</div>';
}
else {
  echo '<div id="form-submit-alert">Failed to add album '.$title.'</div>';
}

?>

<div class="container">
	<form action="album.php" method="post">
		   <div class="form-group">
	<button>Back</button>
			</div>
	</form>
</div>
