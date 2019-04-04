<html>
<body>
	<link rel="stylesheet" type="text/css" href="style1.css">

    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/album/">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">



<div class="container">
  <h2>Insert New Record:</h2>
  <form action="insertSearch.php" method="POST">
  

    <div class="form-group">
      <input type="text" class="form-control" id="s1" placeholder="Song" name="s1" required="required" data-error="Please specify your need.">	
	</div>	
	
    <div class="form-group">
      <input type="text" class="form-control" id="s2" placeholder="Artist" name="s2" required="required" data-error="Please specify your need.">	
	</div>	
  
    <div class="form-group">
      <input type="text" class="form-control" id="s3" placeholder="Album" name="s3" required="required" data-error="Please specify your need.">	
	</div>	
  
    <div class="form-group">
      <input type="number" class="form-control" id="s4" placeholder="Year" name="s4" required="required" data-error="Please specify your need.">	
	</div>	
  

<div class="form-group">

<input type="radio" name="s5" value="rock"><label>Rock</label>
<input type="radio" name="s5" value="pop"><label>Pop</label>
<input type="radio" name="s5" value="hip"><label>Hip</label>
<input type="radio" name="s5" value="clasical"><label>Clasical</label>
<input type="radio" name="s5" value="jazz"><label>Jazz</label>
<input type="radio" name="s5" value="Blues"><label>Blues</label>
<input type="radio" name="s5" value="Electronic"><label>Electronic</label>
<input type="radio" name="s5" value="Hip Hop"><label>Hip Hop</label>
<input type="radio" name="s5" value="Rap"><label>Rap</label>
<input type="radio" name="s5" value="r&b"><label>R&B</label>
<input type="radio" name="s5" value="Alternative Music"><label>Alternative Music</label>
<input type="radio" name="s5" value="Reggoe"><label>Reggoe</label>


</div>



	   <div class="form-group">
	   
	   
<button  class="btn btn-outline-success" name="subject" type="submit" value="search">Insert</button>
    </div>
   
  </form>
</div>
<div class="container">
  <h2>Delete Song:</h2>
  <form action="delete.php" method="POST">
    <div class="form-group">  
      <input type="text" class="form-control" id="user" placeholder="Song Name" name="user" required="required" data-error="Please specify your need.">
    </div>	  
	   <div class="form-group">
<button  class="btn btn-outline-success" name="subject" type="submit" value="search">Delete</button>
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