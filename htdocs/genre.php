
<html>
<body>
	<link rel="stylesheet" type="text/css" href="style1.css">
    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/album/">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<link href="/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<div class="container">	

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

if (isset($_GET['id'])) {
// specific genre pages (genre.php?id=)
    // display genre's name
    $query = "SELECT `genre`.`name` FROM `genre` WHERE `id` = " . (int) $_GET['id'];
    $result = $conn->query($query);
    echo "<u><span style='color: ff5736; font-size: 28px;'>" . $result->fetch_assoc()["name"] . "</span></u><br>";

    $query = 
    "SELECT album.id AS album_id, title, artist.name AS x, release_year, label.name AS y, genre.name AS z
    FROM album
    JOIN artist
    ON album.artist = artist.id
    JOIN label
    ON album.label = label.id
    JOIN genre
    ON album.genre = genre.id
    WHERE genre = " . (int) $_GET['id'] . " ORDER BY release_year ASC";
    $result = $conn->query($query);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            echo $row["x"] . ": <strong><a href='album.php?id=".$row["album_id"]."'>".$row["title"]."</a></strong>" .
                 " (" . $row["release_year"] . ")" .
                 " - " . $row["y"] .
                 " - " . $row["z"] .
                 "<br>";
        }
    } else {
        echo "0 results";
    }

?>
  <br>
  <form action="genre.php" method="post">
    <div class="form-group">
	<button class="btn btn-outline-dark">View all genres</button>
    </div>
  </form>
<?php
}
else {
// main page (i.e., genre.php)
?>
  <h2>Insert new genre:</h2>
  <form action="insertgenre.php" method="POST">
    Genre name: <input type="text" name="genre_to_insert" required="required" data-error="Please specify your need.">
    <input type="submit" value="Insert" name="insert">
  </form>


  <h2>Delete a genre:</h2>
  <form action="deletegenre.php" method="POST">
    Genre name: <input type="text" name="genre_to_delete" required="required" data-error="Please specify your need.">
    <input type="submit" value="Delete" name="delete">
  </form>

  <h2>Update a genre:</h2>
  <form action="updategenre.php" method="POST">
    Current genre name: <input type="text" name="genre_to_update" required="required" data-error="Please specify your need.">
    New genre name: <input type="text" name="new_genre_name" required="required" data-error="Please specify your need.">
    <input type="submit" value="Update" name="update">
  </form>

  <h2>Genres: </h2>
<?php
    $sql = "SELECT *
    FROM genre";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while ($row = $result->fetch_assoc()) {
            echo "<a href='genre.php?id=".$row['id']. "'>" . $row["name"] . "</a><br>";
        }
    } else {
        echo "0 results";
    }
    echo '<br>';
}

$conn->close();
?> 
</div>

<div class="container">
	<form action="index.php" method="post">
		   <div class="form-group">
	<button  class="btn btn-outline-dark" name="subject" type="submit" value="search">Home page</button>
			</div>
	</form>
</div>


</body>
</html>
