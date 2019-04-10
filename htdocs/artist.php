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
// id pages (/artist.php?id= )
    // display artist's name
    $query = "SELECT artist.name FROM artist WHERE id = " . (int) $_GET['id'];
    $result = $conn->query($query);
    echo "<u><span style='color: green; font-size: 28px;'>" . $result->fetch_assoc()["name"] . "</span></u><br>";

    $query = 
    "SELECT album.id AS album_id, title, artist.name AS x, release_year, label.name AS y, genre.name AS z
    FROM album
    JOIN artist
    ON album.artist = artist.id
    LEFT JOIN label
    ON album.label = label.id
    LEFT JOIN genre
    ON album.genre = genre.id
    WHERE artist = " . (int) $_GET['id'] .
    " ORDER BY release_year ASC";
    $result = $conn->query($query);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            echo "<strong><a href='album.php?id=".$row["album_id"]."'>".$row["title"]."</a></strong>" .
                 " (" . $row["release_year"] . ")" .
                 " - " . $row["y"] .
                 " - " . $row["z"] .
                 "<br>";
        }
    } else {
        echo "0 results";
    }
}
else {
// main page with all artists (/artist.php)
?>
  <h2>Insert new artist:</h2>
  <form action="insertartist.php" method="POST">
    Name: <input type="text" name="name_inserted" required="required" data-error="Please specify your need.">
    Country of origin:
    <select name="country_inserted">
    <?php
        $query = "SELECT * FROM `country`";
        $result = $conn->query($query);
        while ($row = $result->fetch_assoc()) {
          echo "<option value='".$row["id"]."'>" . $row['name'] . "</option>";
        }
    ?>
    </select>

    Year of origin: <input type="number" name="year_inserted" required="required" data-error="Please specify your need.">
    <br><input class="btn btn-dark" type="submit" value="Insert" name="insert">
  </form>

  <h2>Delete artist:</h2>
  <form action="deleteartist.php" method="POST">
    Artist ID (from the list below): <input type="number" name="artist_to_delete" required="required" data-error="Please specify your need.">
    <br><input class="btn btn-dark" type="submit" value="Delete" name="delete">
  </form>

  <h2>Update artist:</h2>
  <form action="updateartist.php" method="POST">
    Artist ID (from the list below): <input type="number" name="artist_to_update" required="required" data-error="Please specify your need."><br>
    Name: <input type="text" name="name_updated" required="required" data-error="Please specify your need.">
    Country of origin:
    <select name="country_updated">
    <?php
        $query = "SELECT * FROM `country`";
        $result = $conn->query($query);
        while ($row = $result->fetch_assoc()) {
          echo "<option value='".$row["id"]."'>" . $row['name'] . "</option>";
        }
    ?>
    </select>
    Year of origin: <input type="number" name="year_updated" required="required" data-error="Please specify your need.">
    <br><input class="btn btn-dark" type="submit" value="Update" name="update">
  </form>

  <h2>Artists: </h2>
<?php
    $sql = "SELECT artist.id, artist.name, country.name AS country, origin_year
    FROM `artist`
    LEFT JOIN `country`
    ON `origin_country` = `country`.`id`";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            echo $row["id"] . ". <a href='artist.php?id=".$row["id"]. "'>" . $row["name"] .
                 "</a> - ".$row["country"]." - ".$row["origin_year"]."<br>";
        }
    } else {
        echo "0 results";
    }
}

$conn->close();
?> 
</div>

<br>
<div class="container">
	<form action="artist.php" method="post">
		   <div class="form-group">
	<button class="btn btn-outline-dark">All artists</button>
			</div>
	</form>
</div>

<div class="container">
	<form action="index.php" method="post">
		   <div class="form-group">
	<button  class="btn btn-outline-dark" name="subject" type="submit" value="search">Home page</button>
			</div>
	</form>
</div>

</html>
</body>
