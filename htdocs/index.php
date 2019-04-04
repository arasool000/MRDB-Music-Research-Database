
<!doctype html>
<html lang="en">
  <head>
  
  <style>
  /* include Google Web fonts: */
@import url('https://fonts.googleapis.com/css?family=Meie+Script|Shadows+Into+Light|Arvo|Monda');
.row {
  font-size: 22pt;
  font-weight: 600;
}


.font_meie_script {
  font-family: 'Meie Script', cursive;
}

.font_shadows_into_light {
  font-family: 'Shadows Into Light', cursive;
}

.font_arvo {
  font-family: 'Arvo', serif;
  font-style: italic;
  font-weight: 400;
}


.font_monda {
  font-family: 'Monda', sans-serif;
}

  </style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <title>MRDB - Music Research Datbase</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/album/">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <!-- Bootstrap core CSS -->
<link href="/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="album.css" rel="stylesheet">
  </head>
  <body>
    <header>
  <div class="collapse bg-dark" id="navbarHeader">
    <div class="container">
      <div class="row">
        <div class="col-sm-8 col-md-7 py-4">
          <h4 class="text-white">About</h4>
          <p class="text-muted">Add some information about the album below, the author, or any other background context. Make it a few sentences long so folks can pick up some informative tidbits. Then, link them off to some social networking sites or contact information.</p>
        </div>
        <div class="col-sm-4 offset-md-1 py-4">
          <h4 class="text-white">Contact</h4>
          <ul class="list-unstyled">
            <li><a href="#" class="text-white">Follow on Twitter</a></li>
            <li><a href="#" class="text-white">Like on Facebook</a></li>
            <li><a href="#" class="text-white">Email me</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="navbar navbar-dark bg-dark shadow-sm">
    <div class="container d-flex justify-content-between">
      <a href="#" class="navbar-brand d-flex align-items-center">
        
		<strong>The Central Music Database! </strong>
      </a>
      
    </div>
  </div>
</header>

<main role="main">

  <section class="jumbotron text-center">
    <div class="container">
      <h1 class="jumbotron-heading">MRDB - Music Research Database</h1>
      <p class="lead text-muted">This is an online music research database. You can search for music with various paramters and listen to it as well!</p>
      <p>

	<form action="login.php" method="POST">	
		<button  class="btn btn-outline-info" name="subject" type="submit" value="search">Discussion Board</button>
	</form>
  
        
      </p>
    </div>
	
	
  </section>

  <div class="album py-5 bg-light">
    <div class="container">

      <div class="row">
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="503" height="0" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZZfI34k_s7X0nUpNXxxDvgIFlcLI1_AO0mm2OFfUZ9Muu-FpD" alt="Trulli" width="100%" height="100%"> </svg>
			<div class="card-body">
              <p class="card-text">Artist</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
 				   <form action="artist.php" method="POST"> <button type="submit" class="btn btn-primary" >Search By Artist</button> </form>               
			   </div>
              </div>
            </div>
          </div>
        </div>
		
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="503" height="0" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4jBmEmZXJSTiaWttxHDUkqgSthvGIFAW28slTSRmoIcfBuq8q" alt="Trulli" width="100%" height="100%"> </svg>
			<div class="card-body">
              <p class="card-text">Song</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">        
				  <form action="song.php" method="POST"> <button type="submit" class="btn btn-primary" >Search By Song</button> </form>
                </div>
              </div>
            </div>
          </div>
        </div>
		
		
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="503" height="0" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/> <img src="data:image/jpeg;base64,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" alt="Trulli" width="100%" height="100%"> </svg>
			<div class="card-body">
              <p class="card-text">Album</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
						<form action="album.php" method="POST"> <button type="submit" class="btn btn-primary" >Search By Album</button> </form>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="503" height="0" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/> <img src="http://hpo.org/wp-content/uploads/2014/09/classical-music-image1.png" alt="Trulli" width="100%" height="100%"> </svg>
			<div class="card-body">
              <p class="card-text">Genre</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
					<form action="genre.php" method="POST"> <button type="submit" class="btn btn-primary" >Search By Genre</button> </form>
                </div>
              </div>
            </div>
          </div>
        </div>
		
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="503" height="0" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/> <img src="https://buzzhostingservices.com/images/all-music-symbols-3.png" alt="Trulli" width="100%" height="100%"> </svg>
			<div class="card-body">
              <p class="card-text">Add or Delete a Song</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
            <form action="insert.php" method="POST"> <button type="submit" class="btn btn-primary" >Insert & Delete</button> </form>
                </div>
              </div>
            </div>
          </div>
        </div>
		
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="503" height="0" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/> <img src="https://upload.wikimedia.org/wikipedia/commons/2/2b/Billboard_Hot_100_logo.jpg" alt="Trulli" width="100%" height="100%"> </svg>
			<div class="card-body">
              <p class="card-text">Most Played</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
						<form action="mostPlayed.php" method="POST"> <button type="submit" class="btn btn-primary" >Search By Most Played</button> </form>
                 </div>
              </div>
            </div>
          </div>
        </div>


</main>

<footer class="text-muted">
  <div class="container">
    <p class="float-right">
      <a href="#">Back to top</a>
    </p>
    <p>Ahsun Rasool - Project 1 - CSc 33600 Databases - Professor John Connor - The City College of New York</p>
  </div>
</footer>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')</script><script src="/docs/4.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script></body>
</html>
