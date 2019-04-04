<html>
<body>
	<link rel="stylesheet" type="text/css" href="style1.css">
	 <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/album/">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<link href="/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">




<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Music";
$artist_name1 = $_POST['user'];
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$sql = "select A.artist_name,T.link,T.track_name,G.genre_name,Al.album_name,T.year from Artist A join Tracks T join Genre G join Album al on A.id=T.id AND T.genre_id=G.genre_id AND Al.album_id=T.album_id where A.artist_name like '%$artist_name1%' ";
$result = $conn->query($sql);
//$queryResult = mysql_fetch_array($result);

if ($result->num_rows > 0) 
{
for($i = 0; $i < $result->num_rows; $i++) 
	{
		
      $row = $result->fetch_assoc();
      echo "Artist name: " . $row["artist_name"]. "<br>";
      echo " Track Name: " . $row["track_name"].  "<br>"; 
      echo " Genre: " . $row["genre_name"] . "<br>";
      echo "Album Name :" . $row["album_name"] ."<br>";
      echo "Year :" . $row["year"] . "<br>";
     // echo "LINK :" . $row["link"] ."<br>";
      
      $ho = $row["link"];
      
          echo "<audio controls='controls'>";
	echo "<source src='$ho'  />";
	echo "</audio>";
    echo "<br>";
    echo "----------------------------------------"."<br>";
    }
} else {
    echo "<h1>0 results</h1>";
}
$sql1 = "update tracks set count=count+1 where id = (select id from Artist where artist_name like '%$artist_name1%'); ";
 $conn->query($sql1);
$conn->close();
?>


<div class="container">
	<form action="artist.php" method="post">
		   <div class="form-group">
	<button  class="btn btn-outline-dark" name="subject" type="submit" value="search">Back</button>
			</div>
	</form>

	<form action="index.php" method="post">
		   <div class="form-group">
	<button  class="btn btn-outline-dark" name="subject" type="submit" value="search">Main Page</button>
			</div>
	</form>
</div>





</body>
</html>