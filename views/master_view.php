<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>EMÜ turniirirakendus</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="KHK">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css"/>
	<style>
		body {
			padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
			background: url('<?=ASSETS_URL?>img/bg.png') no-repeat fixed;
		}

		h3 {
			float: left;
			clear: both;
			padding-left: 15px;
		}
		h1 {
			padding:0;
			margin:0;
		}
		h1,h2{
			margin:0;
			color: white !important;
			text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.9) !important;

			}
		table.table-bordered tr {
			background-color: #F9F9F9;
		}

		* {
			text-shadow: 0 1px 2px rgba(255, 255, 255, 0.5) !important;
			color: #444;
		}
		h3{
			color: #777 !important;
		}
		div.navbar a{
			text-shadow: 0 0 0 #000 !important;
		}

	</style>

	<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.0/css/bootstrap-combined.min.css" rel="stylesheet">
	<!-- Fav and touch icons -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?= ASSETS_URL ?>ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?= ASSETS_URL ?>ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?= ASSETS_URL ?>ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="<?= ASSETS_URL ?>ico/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="<?= ASSETS_URL ?>ico/favicon.png">
</head>

<body>

<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="brand" href="<?= BASE_URL ?>tournaments">EMÜ turniirirakendus</a>

			<div class="nav-collapse collapse">
				<ul class="nav">
					<li class="active"><a href="<?= BASE_URL ?>tournaments">Home</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="<?= BASE_URL ?>auth/logout">Logout</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
</div>

<div class=" container-fluid" <? if ($_request->controller == 'tournaments' && $_request->action !=
	'view'): ?>
style="max-width:
980px;
margin: 0 auto;"<? endif;
?>>

	<? require 'views/'.$_request->controller.'_'.$_request->action.'_view.php'?>


</div>
<!-- /container -->

<!-- Le javascript
================================================== -->
<script>BASE_URL = '<?=BASE_URL?>'</script>
<?if (! empty($this->scripts)) : ?>
	<? foreach ($this->scripts as $script) : ?>
		<script src="<?= ASSETS_URL ?>js/<?= $script ?>"></script>
	<? endforeach ?>
<? endif?>
<script>
	$.ajaxSetup({
		type    : 'post',
		dataType: 'json',
		complete: function (xhr) {
			if (xhr.responseText != null && xhr.responseText != "") {
				try {
					var responseText = eval('(' + xhr.responseText + ')');
				}
				catch (e) {
					alert('Error:\n\nAjax päring feilis: JSON-i parsemine nurjus.\n\nServeri vastus: "' + xhr.responseText + '"');
				}
			}
		},
		error   : function (x, e) {
			if (x.status == 0) {
				alert('Error:\n\nAjax päring feilis: Sul pole netti!');
			} else if (x.status == 401) {
				alert('Error:\n\nAjax päring feilis: Sessioon on aegunud');
				window.location.replace(BASE_URL + 'auth');
			} else if (x.status == 404) {
				alert('Error:\n\nAjax päring feilis: HTTP 404 (faili ei leitud)');
			} else if (x.status == 500) {
				alert('Error:\n\nAjax päring feilis: Server on valesti konfigureeritud: Internal Server Error.');
			} else if (e == 'parsererror') {
				alert('Error:\n\nAjax päring feilis: JSON-i parsemine nurjus.\n\nServeri vastus: "' + x.responseText + '"');
			} else if (e == 'timeout') {
				alert('Error:\n\nAjax päring feilis: Server ei vastanud mõistliku aja jooksul.');
			}
			else {
				alert('Error:\n\nAjax päring feilis: mingi arusaamatu viga.\n' + x.responseText);
			}
		}
	});
</script>
</body>
</html>
