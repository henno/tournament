<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>EMÜ turniirirakendus</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Le styles -->
	<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.0/css/bootstrap-combined.min.css" rel="stylesheet">
	<style type="text/css">
		body {
			padding-top: 40px;
			padding-bottom: 40px;
			background-color: #f5f5f5;
		}

		#supported_browsers {
			text-align:center;
			padding-bottom: 40px;
			font-size: 16px;
			color: #333333;
		}
		a img {
			width:86px;
			margin-top: 40px;
		}

		.form-signin {
			max-width: 300px;
			padding: 19px 29px 29px;
			margin: 0 auto 20px;
			background-color: #fff;
			border: 1px solid #e5e5e5;
			-webkit-border-radius: 5px;
			-moz-border-radius: 5px;
			border-radius: 5px;
			-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
			-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
			box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
		}

		.form-signin .form-signin-heading,
		.form-signin .checkbox {
			margin-bottom: 10px;
		}

		.form-signin input[type="text"],
		.form-signin input[type="password"] {
			font-size: 16px;
			height: auto;
			margin-bottom: 15px;
			padding: 7px 9px;
		}

	</style>

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	<script src="<?= ASSETS_URL ?>js/html5shiv.js"></script>
	<![endif]-->

	<!-- Fav and touch icons -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144"
		  href="<?= ASSETS_URL ?>ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114"
		  href="<?= ASSETS_URL ?>ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72"
		  href="<?= ASSETS_URL ?>ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="<?= ASSETS_URL ?>ico/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="<?= ASSETS_URL ?>ico/favicon.png">
</head>

<body>

<div class="container">
	<!-- Errors -->
	<? if (!empty ($_errors)): foreach ($_errors as $error): ?>
	<div class="alert alert-error">
		<?=$error?>
	</div>
	<? endforeach; endif ?>

	<!--If user browser is unsupported-->
	<!--
	Unsupported:
		Safari  and lower
		IE 9? and lower
		Opera 9? (or higher? - couldn't test higher than 9)
	-->
	<!--[if lt IE 9]>
	<div id="supported_browsers">
	<span>Praeguse brauseri kasutamisel võib lehega tekkida probleeme. <br/> Parima kasutuskogemuse jaoks on soovitatav
		kasutatada uuemaid brausereid:</span><br/>
	<a href="https://www.google.com/intl/et/chrome/browser/"><img src="<?= ASSETS_URL ?>ico/browsers/chrome.png"/></a>
	<a href="http://www.mozilla.org/et/firefox/new/"><img src="<?= ASSETS_URL ?>ico/browsers/firefox.png"/></a>
	<a href="http://www.opera.com/computer/"><img src="<?= ASSETS_URL ?>ico/browsers/opera.png"/></a>
	<a href="http://windows.microsoft.com/et-ee/internet-explorer/download-ie"><img src="<?= ASSETS_URL ?>ico/browsers/ie.png"/></a>
	</div>
	<![endif]-->

	<form class="form-signin" method="post">
		<h2 class="form-signin-heading">Logi sisse</h2>
		<input name="username" type="text" class="input-block-level" placeholder="Kasutajanimi">
		<input name="password" type="password" class="input-block-level" placeholder="Parool">
		<label class="checkbox">
			<!-- //TODO <input type="checkbox" value="remember-me"> Mäleta mind -->
		</label>
		<button class="btn btn-large btn-primary" type="submit">Logi sisse</button>
	</form>

</div>
<!-- /container -->

<!-- Le javascript
================================================== -->
</body>
</html>