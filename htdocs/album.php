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
// id pages (/album.php?id= )
    $query =
    "SELECT title, artist.name AS artist_name, release_year, label.name AS lbl, genre.name AS gnre
    FROM album
    JOIN artist
    ON album.artist = artist.id
    LEFT JOIN label
    ON album.label = label.id
    LEFT JOIN genre
    ON album.genre = genre.id
    WHERE album.id = " . (int) $_GET['id'];
    if ($result = $conn->query($query)) {
        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            // display artist, album, year, label, genre
            echo "<span style='color: black; font-size: 28px;'>" . $row["artist_name"] . "</span><br>";
            echo "<b><span style='color: black; font-size: 28px;'>" . $row["title"] . "</span></b><br>";
            echo "<span style='color: black; font-size: 28px;'>" . $row["release_year"] . "</span><br>";
            echo "<span style='color: black; font-size: 20px;'>" . $row["lbl"] . "</span><br>";
            echo "<span style='color: black; font-size: 20px;'>" . $row["gnre"] . "</span><br>";
            // display album links
            echo "<hr><u>Links</u>:<br>";
            $query =
            "SELECT *
            FROM album_link
            WHERE album = ". (int) $_GET['id'];
            $result = $conn->query($query);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<a href=\"".$row["url"]."\">".$row["url"]."</a><br>";
                }
            } else {
                echo "";
            }

            // provide option to add/delete links
            ?>
              <br><i>Submit a link</i>:
              <form action="" method="POST">
                Link: <input type="text" size="45" name="link" required="required" data-error="Please specify your need.">
                <input type="submit" name="add_link" value="Submit link">
              </form>
              <?php
                if (isset($_POST['add_link'])) {
                    $sql = "INSERT INTO `album_link` (`album`, `url`)
                    VALUES (?, ?)";
                    $stmt = mysqli_prepare($conn, $sql);
                    $stmt->bind_param("is", $_GET['id'], $_POST['link']);
                    if($stmt->execute()) {
                        echo "<meta http-equiv='refresh' content='0'>";
                    }
                }
              ?>

              <i>Delete a link</i>:<br>
                <form method="POST">
                <select name="link_to_delete">
                <?php
                    $query = "SELECT url FROM album_link WHERE album = ". (int) $_GET['id'];
                    $result = $conn->query($query);
                    while ($row = $result->fetch_assoc()) {
                      echo "<option>".$row['url']."</option>";
                    }
                ?>
                </select>
                <input type="submit" name="delete_link" value="Delete link">
                </form>
              <?php
                if (isset($_POST['delete_link'])) {
                    $sql = "DELETE FROM `album_link`
                    WHERE `album` = ? AND `url` = ?";
                    $stmt = mysqli_prepare($conn, $sql);
                    $stmt->bind_param("is", $_GET['id'], $_POST['link_to_delete']);
                    if($stmt->execute()) {
                        echo "<meta http-equiv='refresh' content='0'>";
                    }
                }
              ?>
            <?php

            // display user reviews
            echo "<hr><u>Your review</u>:<br>";
            $query = 
            "SELECT body
            FROM album
            JOIN review
            ON review.album = ". (int) $_GET['id'].
            " WHERE user = 1";
            $result = $conn->query($query);
            if ($result->num_rows > 0) {
                if ($row = $result->fetch_assoc()) {
                    echo "<p style='margin-left:2%'><span style='color: black; font-size: 16px;'>" . $row["body"] . "</span></p><br>";
                }
            } else {
                echo "";
            }

            // update review
            ?>
            <i>Update your review</i>:
            <form action="" method="POST">
              <textarea name="review_body" rows="14" cols="60"><?php echo $row["body"] ?></textarea>
              <br>
              <input type="submit" value="Save" name="save_review">
            </form>
            <?php
            if (isset($_POST['save_review'])) {
                $sql = "INSERT INTO `review` (`user`, `album`, `body`)
                VALUES (1, ?, ?)
                ON DUPLICATE KEY UPDATE `body` = ?";
                $stmt = mysqli_prepare($conn, $sql);
                $stmt->bind_param("iss", $_GET['id'], $_POST['review_body'], $_POST['review_body']);
                if($stmt->execute()) {
                    echo "<meta http-equiv='refresh' content='0'>";
                }
            }
        }
    } else {
        echo "no results";
    }
?>
  <hr>
  <form action="artist.php" method="post">
    <div class="form-group">
	<button class="btn btn-outline-dark">View all artists</button>
    </div>
  </form>
  <form action="album.php" method="post">
    <div class="form-group">
	<button class="btn btn-outline-dark">View all albums</button>
    </div>
  </form>
<?php
}
else {
// main page with list of all albums
?>
  <h2>Insert new album:</h2>
  <form action="insertalbum.php" method="POST">
    Title: <input type="text" name="title_inserted" required="required" data-error="Please specify your need.">
    Artist:
        <select name="artist_inserted">
        <?php
            $query = "SELECT * FROM `artist`";
            $result = $conn->query($query);
            while ($row = $result->fetch_assoc()) {
              echo "<option value='".$row["id"]."'>" . $row["id"] . ". " . $row["name"] . "</option>";
            }
        ?>
        </select>
    Release year: <input type="number" name="year_inserted" required="required" data-error="Please specify your need.">
    <br>
    Label: 
        <select name="label_inserted">
        <?php
            $query = "SELECT * FROM `label`";
            $result = $conn->query($query);
            while ($row = $result->fetch_assoc()) {
              echo "<option value='".$row["id"]."'>" . $row["id"] . ". " . $row["name"] . "</option>";
            }
        ?>
        </select>
    Genre: 
        <select name="genre_inserted">
        <?php
            $query = "SELECT * FROM `genre`";
            $result = $conn->query($query);
            while ($row = $result->fetch_assoc()) {
              echo "<option value='".$row["id"]."'>" . $row["name"] . "</option>";
            }
        ?>
        </select>
    <br><input class="btn btn-dark" type="submit" value="Insert" name="insert">
  </form>

  <h2>Delete album:</h2>
  <form action="deletealbum.php" method="POST">
    Album ID (from the list below): <input type="number" name="album_to_delete" required="required" data-error="Please specify your need.">
    <input class="btn btn-dark" type="submit" value="Delete" name="delete">
  </form>

  <h2>Update album:</h2>
  <form action="updatealbum.php" method="POST">
    Album ID (from the list below): <input type="number" name="album_to_update" required="required" data-error="Please specify your need.">
    <br>
    Title: <input type="text" name="title_updated" required="required" data-error="Please specify your need.">
    Artist:
        <select name="artist_updated">
        <?php
            $query = "SELECT * FROM `artist`";
            $result = $conn->query($query);
            while ($row = $result->fetch_assoc()) {
              echo "<option value='".$row["id"]."'>" . $row["id"] . ". " . $row["name"] . "</option>";
            }
        ?>
        </select>
    Release year: <input type="number" name="year_updated" required="required" data-error="Please specify your need.">
    <br>
    Label: 
        <select name="label_updated">
        <?php
            $query = "SELECT * FROM `label`";
            $result = $conn->query($query);
            while ($row = $result->fetch_assoc()) {
              echo "<option value='".$row["id"]."'>" . $row["id"] . ". " . $row["name"] . "</option>";
            }
        ?>
        </select>
    Genre: 
        <select name="genre_updated">
        <?php
            $query = "SELECT * FROM `genre`";
            $result = $conn->query($query);
            while ($row = $result->fetch_assoc()) {
              echo "<option value='".$row["id"]."'>" . $row["name"] . "</option>";
            }
        ?>
        </select>
    <br>
    <input class="btn btn-dark" type="submit" value="Update" name="update">
  </form>

  <h2>Albums:</h2>
<?php
    $sql = "SELECT title, album.id, artist.name AS x, release_year, label.name AS y, genre.name AS z
    FROM album
    JOIN artist
    ON album.artist = artist.id
    LEFT JOIN label
    ON album.label = label.id
    LEFT JOIN genre
    ON album.genre = genre.id";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            echo $row["id"] . ". " . $row["x"] .
                 ": <a href='album.php?id=".$row["id"]."'>" .
                 "<strong>".$row["title"]."</strong></a> (" .
                 $row["release_year"] . ") - " . $row["y"] .
                 " - " . $row["z"] .
                 "<br>";
        }
    } else {
        echo "0 results";
    }
}

$conn->close();
?> 
</div>


<div class="container">
<form action="index.php" method="post">
	   <div class="form-group">
<button  class="btn btn-outline-dark" name="subject" type="submit" value="search">Home</button>
</div>
</form>
</div>

</html>
</body>
