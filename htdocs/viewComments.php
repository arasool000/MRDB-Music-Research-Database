<html>
<body bgcolor>
		<link rel="stylesheet" type="text/css" href="style1.css">

    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/album/">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<div class="container">

 <div class="form-group"
 
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Music";

//echo"$from1";
//echo"$from2";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "select username, comments from comments";
$result = $conn->query($sql);
if ($result->num_rows > 0) 
{
for($i = 0; $i < $result->num_rows; $i++) 
	{
      $row = $result->fetch_assoc();
	  
	  echo $row["username"]. ":   ". $row["comments"].  "<br>"; 
	   echo "====================<br>"; 
    //  echo "id: " . $row["id"]. "<br>";
      //echo "Comments: " . $row["comments"].  "<br>"; 
  //    echo "LINK :" . $row["link"] ."<br>";
      
     
  //  echo "----------------------------------------"."<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>

</div>

</div>



<div class="container">

  <form action="comments.php" method="POST">	
	<div class="form-group">
		<label class="comments_title"><b>Please feel free to add your thoughts to this discussion board!</b></label><br/>
		<input class="form-control" type="text" id="user" placeholder="Comments" name="comment" />
	</div>
		<div class="form-group">
			<button class="btn btn-outline-success"" name="subject" type="submit" value="search">Submit</button> 
		</div>
	</form>


</div>

<div class="container">
<form action="index.php" method="post">
	   <div class="form-group">
<button  class="btn btn-outline-dark" name="subject" type="submit" value="search">Main Page</button>
</div>
</form>
</div>


</body>
</html>