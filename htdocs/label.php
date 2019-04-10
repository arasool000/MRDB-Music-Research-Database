
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
// id pages (label.php?id=)
    // display label's name
    $query = "SELECT label.name AS label_name, year_formed, country.name AS country_name
    FROM label
    LEFT JOIN country
    ON label.id = " . (int) $_GET['id'];
    $result = $conn->query($query);
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        echo "<u><span style='color: green; font-size: 28px;'>" . $row["label_name"] . "</span></u><br>";
        echo "<span style='color: green; font-size: 20px;'>" . $row["year_formed"] . "</span><br>";
        echo "<span style='color: green; font-size: 20px;'>" . $row["country_name"] . "</span><br>";
    }

    $query = "
    SELECT title, artist.name AS x, release_year, label.name AS y, genre.name AS z
    FROM album
    JOIN artist
    ON album.artist = artist.id
    JOIN label
    ON album.label = label.id
    JOIN genre
    ON album.genre = genre.id
    WHERE label = " . (int) $_GET['id'];
    $result = $conn->query($query);
    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            echo $row["x"] . ": <strong>".$row["title"]."</strong>" .
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
// main page (label.php)
?>
  <h2>Insert a record label:</h2>
  <form action="insertlabel.php" method="POST">
    Name: <input type="text" name="name_to_insert" required="required" data-error="Please specify your need.">
    Country:
    <select name="country_to_insert">
    <?php
        $query = "SELECT * FROM `country`";
        $result = $conn->query($query);
        while ($row = $result->fetch_assoc()) {
          echo "<option value='".$row["id"]."'>" . $row['name'] . "</option>";
        }
    ?>
    </select>
    Year formed: <input type="number" name="year_to_insert" required="required" data-error="Please specify your need.">
    <br><input class="btn btn-dark" type="submit" value="Insert" name="insert">
  </form>

  <h2>Update an existing record label:</h2>
  <form action="updatelabel.php" method="POST">
    Label ID (see list below): <input type="number" name="label_to_update" required="required" data-error="Please specify your need.">
    <br>
    Name: <input type="text" name="name_to_update" required="required" data-error="Please specify your need.">
    Country:
    <select name="country_to_update">
    <?php
        $query = "SELECT * FROM `country`";
        $result = $conn->query($query);
        while ($row = $result->fetch_assoc()) {
          echo "<option value='".$row["id"]."'>" . $row['name'] . "</option>";
        }
    ?>
    </select>
    Year formed: <input type="number" name="year_to_update" required="required" data-error="Please specify your need.">
    <br><input class="btn btn-dark" type="submit" value="Update" name="update">
  </form>

  <h2>Labels: </h2>
<?php

    $query = "SELECT label.id, label.name AS label_name, year_formed, country.name AS country_name
    FROM label
    LEFT JOIN country
    ON label.country = country.id";
    $result = $conn->query($query);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo $row['id'] . ". ". "<a href='label.php?id=".$row['id']. "'>" . $row["label_name"] . "</a> - ".
            $row['country_name'].", ".$row['year_formed']."<br>";
        }
    } else {
        echo "0 results";
    }
}

$conn->close();
?> 
</div>

<div class="container">
	<form action="label.php" method="post">
	    <button class="btn btn-outline-dark">All labels</button>
	</form>
	<form action="index.php" method="post">
	    <button  class="btn btn-outline-dark" name="subject" type="submit" value="search">Home page</button>
	</form>
</div>


</body>
</html>
