
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
      <p class="lead text-muted">This is an online music research database. You can search for music using various parameters and listen to it as well!</p>
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
              <p class="card-text">Artists</p>
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
            <svg class="bd-placeholder-img card-img-top" width="503" height="0" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/> <img src="albums.jpg"> </svg>
			<div class="card-body">
              <p class="card-text">Albums</p>
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
              <p class="card-text">Genres</p>
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
            <svg class="bd-placeholder-img card-img-top" width="503" height="0" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/> <img src="labels.jpg" alt="Trulli" width="100%" height="100%"> </svg>
			<div class="card-body">
              <p class="card-text">Labels</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
						<form action="label.php" method="POST"> <button type="submit" class="btn btn-primary" >Search By Label</button> </form>
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
