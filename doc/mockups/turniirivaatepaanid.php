<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>EMÜ turniirirakendus</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="KHK">
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>


	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css"/>
	<style>
		body {
			padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
		}
	</style>

	<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.0/css/bootstrap-combined.min.css" rel="stylesheet">
	<!-- Fav and touch icons -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="/tournament/assets/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/tournament/assets/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/tournament/assets/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="/tournament/assets/ico/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="/tournament/assets/ico/favicon.png">
	<style type="text/css">
		body {
			background-image: url('http://ekodu.bcghaldus.ee/assets/img/light_alu.png');
		}

		.kast {
			float: left;
			border: 1px solid black;
			padding: 5px 30px 10px 30px;
			border-color: lightgray darkgrey darkgray lightgrey;
			margin-right: 20px;
			margin-top: 10px;
			position: relative;
			background: #eeeeee;
		}

		.number {
			position: absolute;
			right: 13px;
			top: 17px;
			font-size: 2.5em;
			font-weight: bold;
			color: lightgrey;
		}

		h3 {
			float: left;

		}

		.outer {
			background-color: #949494;
			padding: 30px;
			border-width: 1px;
			border-style: solid;
			border-color: lightgrey darkgrey darkgrey lightgrey;
			height: 500px;
			float: left;
		}

		.itemNumber {
			background-color: inherit;
			color: #9C9C9C;
			font-size: 40px;
			font-weight: bold;
			left: -25px;
			top: -30px;
			letter-spacing: -1px;
			position: relative;
			float: left;
			z-index: 0;
		}

			/* css for timepicker */
		.ui-timepicker-div {
			margin-bottom: 8px;
		}

		.ui-timepicker-div dl {
			text-align: left;
		}

		.ui-timepicker-div dl dt {
			height: 25px;
			margin-bottom: -25px;
		}

		.ui-timepicker-div dl dd {
			margin: 0 10px 10px 65px;
		}

		.ui-timepicker-div td {
			font-size: 90%;
		}

		.ui-tpicker-grid-label {
			background: none;
			border: none;
			margin: 0;
			padding: 0;
		}

		.ui-timepicker-rtl {
			direction: rtl;
		}

		.ui-timepicker-rtl dl {
			text-align: right;
		}

		.ui-timepicker-rtl dl dd {
			margin: 0 65px 10px 10px;
		}

		.container {
			margin-top: 10px;
		}

		.esContainer {
			background: white;
			padding: 5px;
			border: 1px solid #5CB3FF;
			border-radius: 10px;
		}

		.esItem {
			background: white;
		}

		.esItemHover {
			background: #E3E4FA;
		}

		.esTextBox {
			background: url(../../assets/ico/arrowdown.png) 98% 50% no-repeat;
		}

		.spinner {
			width: 40px;
		}

		.viga {
			background-color: #f2dede !important;
		}

		#tournament-attributes-table td:last-child {
			vertical-align: middle !important;
			text-align: right;
		}

		#tournament-attributes-table input {
			margin-bottom: 0 !important;
		}

		#tournament-attributes-table select {
			margin-bottom: 0 !important;
		}

		#tournament-attributes-table th {
			text-align: left;
			vertical-align: middle;
			padding: 5px;
		}

		table.table-bordered tr {
			background-color: #F9F9F9;
		}

		#tournament-attributes-table td {
			padding: 5px;

		}

		#participants-table td {
			word-break: break-all;
		}

		#participants-table {
			margin-bottom: 10px;
		}

		.datetimepicker {
			background: url(../../assets/ico/arrowdown.png) 98% 50% no-repeat;
		}
	</style>

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
			<a class="brand" href="#">EMÜ turniirirakendus</a>

			<div class="nav-collapse collapse">
				<ul class="nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="/tournament/auth/logout">Logout</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
</div>
<div class=" container-fluid">

<script src="/tournament/assets/js/jquery.combobox.js"></script>
<script src="/tournament/assets/js/jquery-ui-timepicker-addon.js"></script>
<h1>Turniiri lisamine</h1>

<div style="clear: both; margin: 15px 0">
	<a class="btn btn-large btn-inverse" href="/tournament/tournaments">Loobu</a>
	<input type="hidden" id="participants" name="participants">
	<button class="btn btn-large btn-primary" type="button" onclick="convert_table_to_json()">Salvesta</button>
</div>

<div class="kast">
	<div class="number">1</div>
	<h3>Turniiri üldandmed</h3>
	<table id="tournament-attributes-table" class="table table-bordered ">
		<tbody>
		<tr>
			<th>Turniiri nimi</th>
			<td><input id="tournament-name" onfocus="$(this).removeClass('viga')" type="text"
			           name="tournament[tournament_name]" autocomplete="off"></td>
		</tr>
		<tr>
			<th>Koht</th>
			<td>
				<select id="tournament-place" name="tournament[place_name]" class="makeEditable"
				        style="height: 20px; width: 207px">
					<option value="">&nbsp;</option>
					<option value="Torn">Torn</option>
					<option value="Spordisaal">Spordisaal</option>
					<option value=" koht"> koht</option>
					<option value=" "></option>
					<option value=" 9999"> 9999</option>
					<option value=""></option>
				</select>

			</td>
		</tr>
		<tr>
			<th>Turniiri algus</th>

			<td><input type="text" id="tournament_start" class="datetimepicker"
			           name="tournament[tournament_start]"
			           placeholder="pp.kk.aaaa hh:mm" autocomplete="off" onfocus="$(this).removeClass('viga')">
			</td>

		</tr>
		<tr>
			<th>Turniiri lõpp</th>
			<td>
				<input type="text" class="datetimepicker" id="tournament_end" name="tournament[tournament_end]"
				       autocomplete="off" onfocus="$(this).removeClass('viga')" placeholder="pp.kk.aaaa hh:mm">
			</td>
		</tr>
		<tr>
			<th>Tüüp:</th>
			<td><select name="tournament[tournament_type]">
					<option>Alagrupi mängud</option>
					<option>Alagrupi mängud + playoff</option>
					<option>Playoff</option>
				</select></td>
		</tr>
		<tr>
			<th>Kaotajate ring:</th>
			<td><input name="tournament[tournament_loser_bracket]" type="checkbox" value="1"></td>
		</tr>
		<tr>
			<th>Mängu kestvus</th>
			<td><input id="game-length" class="spinner" value="1" min="1" maxlength="2"
			           name="tournament[tournament_game_time]" onkeypress="validate(event)"
			           onfocus="$(this).removeClass('viga')"></td>
		</tr>
		<tr>
			<th>Paus</th>
			<td><input class="spinner" value="1" min="1" maxlength="2" name="tournament[tournament_game_pause]"
			           onkeypress="validate(event)"></td>
		</tr>
		<tr>
			<th>Platside arv</th>
			<td><input class="spinner" value="1" min="1" maxlength="2" name="tournament[tournament_field]"
			           onkeypress="validate(event)"/></td>
		</tr>
		<tr>
			<th>Edasipääsejaid:</th>
			<td><input class="spinner" value="1" min="1" maxlength="2" name="tournament[tournament_win]"
			           onkeypress="validate(event)"/></td>
		</tr>
		<tr>
			<th>Võit :</th>
			<td><input class="spinner" value="3" min="0" maxlength="2" name="tournament[tournament_game_win]"
			           onkeypress="validate(event)"/></td>
		</tr>
		<tr>
			<th>Viik:</th>
			<td><input class="spinner" value="1" min="0" maxlength="2" name="tournament[tournament_game_tie]"
			           onkeypress="validate(event)"/></td>
		</tr>
		<tr>
			<th>Kaotus :</th>
			<td><input class="spinner" value="0" min="0" maxlength="2" name="tournament[tournament_game_loss]"
			           onkeypress="validate(event)"/></td>
		</tr>
		</tbody>
	</table>
</div>
<div class="kast">
	<div class="number">2</div>
	<h3>Osalejad</h3>

	<table id="participants-table" class="table table-bordered table-striped" style="width: 472px !important;">
		<thead>
		<tr>
			<td colspan="5">
				<!-- add row begins here -->

				<input type="text" class="input-small" placeholder="Võistleja nimi" id="participant_name" autocomplete="off"
				       style="height:35px; width: 150px" onfocus="$(this).removeClass('viga')">
				<select id="institute_name" class="makeEditable" style="height: 35px; width: 128px">
					<option value="">&nbsp;</option>
					<option value="MMI">MMI</option>
					<option value=""></option>
					<option value="teine">teine</option>
					<option value=" asd"> asd</option>
					<option value=" "></option>
					<option value=" naine"> naine</option>
					<option value="efs">efs</option>
					<option value="ni">ni</option>
					<option value="nimi">nimi</option>
					<option value="g">g</option>
					<option value="gjh">gjh</option>
					<option value=" jess"> jess</option>
					<option value=" dsa"> dsa</option>
					<option value="dsa">dsa</option>
					<option value="aaa">aaa</option>
					<option value=" da"> da</option>
					<option value="da">da</option>
					<option value="rew34444444433333333333333333333333333333333333333333333333333333333333">
						rew34444444433333333333333333333333333333333333333333333333333333333333
					</option>
					<option value=" dsaaaaaaaaaaaaaaaaaaaaa"> dsaaaaaaaaaaaaaaaaaaaaa</option>
					<option
						value="dsadammmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm6666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666667777777777777777777777777777777777777777777">
						dsadammmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm6666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666667777777777777777777777777777777777777777777
					</option>
				</select>
				<button type="button" class="btn btn-large" onclick="add_participant()"
				        style="margin-left:5px; float: right ">
					Lisa
					mängija
				</button>

				<!-- add row ends here -->

			</td>
		</tr>

		<tr>
			<th>
				#
			</th>
			<th>
				Meeskonna/mängija nimi
			</th>
			<th>
				instituut
			</th>
			<th title="Vali favoriidiks" style="width: 20px">
				<i class="icon-star"></i>
			</th>
			<th title="Kustuta rida" style="width: 20px">
				<i class="icon-trash"></i>
			</th>
		</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<label class="checkbox">
		<input type="checkbox" onclick="$('#round-robin-groups-div').toggle(400);$('#round-robin-groups-settings-div').toggle
		(400)"> Alagrupid
	</label>

	<div id="round-robin-groups-div" style="display: none">
			<table>
				<tr>
					<th>Alagruppe:</th>
					<td><input class="spinner" value="1" min="1" maxlength="2" name="tournament[tournament_group]"
					           onkeypress="validate(event)"/></td>
				</tr>
			</table>

		<table class="table table-bordered">
			<tr>
				<td></td>
				<td>Kalle</td>
				<td>Malle</td>
				<td>Valle</td>
				<td>Salle</td>
			</tr>
			<tr>
				<td>Kalle</td>
				<td>X</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>Malle</td>
				<td></td>
				<td>X</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>Valle</td>
				<td></td>
				<td></td>
				<td>X</td>
				<td></td>
			</tr>
			<tr>
				<td>Salle</td>
				<td></td>
				<td></td>
				<td></td>
				<td>X</td>
			</tr>


		</table>
	</div>
	<label class="checkbox">
		<input type="checkbox" onclick="$('#playoffs-div').show()"> Playoff
	</label>

	<div id="playoffs-div" style="display: none"><img src="playoff.PNG"/></div>

</div>

<div style="clear: both; padding: 15px 0">
	<a class="btn btn-large btn-inverse" href="/tournament/tournaments">Loobu</a>
	<input type="hidden" id="participants" name="participants">
	<button class="btn btn-large btn-primary" type="button" onclick="convert_table_to_json()">Salvesta</button>
</div>

</body>
<script>BASE_URL = '/tournament/'</script>
<script src="/tournament/assets/js/tournament.js"></script>