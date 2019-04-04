
<html>
<body>
	<link rel="stylesheet" type="text/css" href="style1.css">

    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/album/">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">



<div class="container">
  <h2>Song Name:</h2>
  <form action="songSearch.php" method="POST">
    <div class="form-group">
      <label></label>
	  
      <input type="text" class="form-control" id="song" placeholder="Enter Song Name" name="song" required="required" data-error="Please specify your need.">
    </div>	  
	   <div class="form-group">
<button  class="btn btn-outline-success" name="subject" type="submit" value="search">Search</button>
    </div>
   
  </form>
</div>




<div class="container">
<form action="index.php" method="post">
	   <div class="form-group">
<button  class="btn btn-outline-dark" name="subject" type="submit" value="search">Back</button>
</div>
</form>
</div>

</html>
</body>