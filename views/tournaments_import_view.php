<html>
<head>
	<title>Impordi mängijaid</title>
<meta charset="utf-8">
<script src="http://code.jquery.com/jquery-1.9.1.js" xmlns="http://www.w3.org/1999/html"></script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
<script src="<?= ASSETS_URL?>js/jquery.combobox.js"></script>
<script src="<?= ASSETS_URL?>js/bootstrap-fileupload.js"></script>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css"/>
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet">
<link rel="stylesheet" href="<?= ASSETS_URL?>js/bootstrap-fileupload.css"/>

<style type="text/css">
/*	body {
		background: url('<?=ASSETS_URL?>img/bg.jpg') #eee repeat;
	} */
	h1 {
		padding:0;
	}

	h3 {
		float: left;
		clear: both;
		padding-left: 15px;
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

	div.navbar a{
		text-shadow: 0 0 0 #000 !important;
	}

	.kast {
		width: 450px;
		float: left;
		border: 1px solid black;
		padding: 90px 30px 10px 30px;
		border-color: #bbb;
		margin-right: 20px;
		margin-top: 10px;
		position: relative !important;
		background: #eeeeee;
	}

	.titlebar {
		position: absolute;
		left: 0;
		top: 0;
		width: 100%;
		height: 50px;
		border-bottom: 1px solid lightgrey;
		padding-bottom: 10px;
		background: url('<?=ASSETS_URL?>img/titleebar-bg.png') #ddd repeat-x;
	}

	.esItemHover {
		background: #E3E4FA;
	}

	#participants-table td {
		word-break: break-all;
	}

	#participants-table {
		margin-bottom: 10px;
	}

	@media screen and (max-width:1200px) {
		.kast {
			float: none
		}
	}

	.textarea_heading {
		margin-bottom: -1;
	}
</style>
</head>
<body>
<div class="kast">
	<div class="titlebar"><h3>Impordi osalejad</h3>
	</div><br/>

	<form id="upload-file" onsubmit="window.close()" enctype="multipart/form-data" action="<?= BASE_URL?>doc/uploads/upload.php"
	      method="post">
		<div class="fileupload fileupload-new" data-provides="fileupload">
			<div class="input-append">
				<div class="uneditable-input span3"><i class="icon-file fileupload-exists"></i>
					<span class="fileupload-preview"></span>
				</div>
					<span class="btn btn-file">
						<span class="fileupload-new"><i class="icon-folder-open"></i> Vali fail</span>
						<span class="fileupload-exists"><i class="icon-folder-open"></i> Vali fail</span>
						<input type="file" name="uploaded"/>
					</span>
				<button class="btn fileupload-exists" type="submit"><i class="icon-ok-circle"></i> Loe faili</button>
			</div>
		</div>
	</form>
	<form id="import_participants" name="import-participants" method="post">
	<span class="help-block">Vali vastavate väljadega arvutustabeli fail (nt Excel) või<br/>kopeeri-kleebi vastavad väljad
		allolevasse kasti.
	</span><br/>
	<pre class="textarea_heading">Nimi	Instituut	Alagrupp	Favoriit</pre>

		<textarea id="import-participants" name="import-participants" style="width:100%; height:40%" rows="3"></textarea>
		<div style="padding: 15px 0">
			<input type="hidden" id="participants" name="participants" value="">
			<button tabindex="1" class="btn btn-large btn-inverse" onclick="window.close(); return false;">Loobu</button>
			<button tabindex="2" class="btn btn-large btn-primary" onclick="import_participants();">Impordi</button>
	</form>
			<br/>
		</div>
</div>

<!--<script>    var participants = JSON.parse('<?=json_encode($participants)?>');       </script>-->


<?if (! empty($this->scripts)) : ?>
	<? foreach ($this->scripts as $script) : ?>
		<script src="<?= ASSETS_URL ?>js/<?= $script ?>"></script>
	<? endforeach ?>
<? endif?>
</body>
</html>