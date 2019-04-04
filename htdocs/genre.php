
<html>
<body>
	<link rel="stylesheet" type="text/css" href="style1.css">
    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/album/">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<link href="/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

	
<div class="container">	
<form action="genreSearch.php" method="post">
<h2>Genre:</h2>
<input type="radio" name="Genre1" value="rock"><label>Rock</label><br>
<input type="radio" name="Genre1" value="pop"><label>Pop</label><br>
<input type="radio" name="Genre1" value="hip"><label>Hip</label><br>
<input type="radio" name="Genre1" value="clasical"><label>Clasical</label><br>
<input type="radio" name="Genre1" value="jazz"><label>Jazz</label><br>
<input type="radio" name="Genre1" value="Blues"><label>Blues</label><br>
<input type="radio" name="Genre1" value="Electronic"><label>Electronic</label><br>
<input type="radio" name="Genre1" value="Hip Hop"><label>Hip Hop</label><br>
<input type="radio" name="Genre1" value="Rap"><label>Rap</label><br>
<input type="radio" name="Genre1" value="r&b"><label>R&B</label><br>
<input type="radio" name="Genre1" value="Alternative Music"><label>Alternative Music</label><br>
<input type="radio" name="Genre1" value="Reggoe"><label>Reggoe</label><br>

   <div class="form-group">
<button  class="btn btn-outline-success" name="subject" type="submit" value="search">Search</button>
    </div>
</form>
</div>

<div class="container">
	<form action="genre.php" method="post">
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