<style type="text/css">
	body {
	}
	.kast {
		box-shadow: 1px 1px 5px 0px #363636, -1px -1px 5px 0px #363636;
		border-radius: 5px;
		width: 450px;
		float: left;
		border: 1px solid black;
		padding: 90px 30px 10px 30px;
		border-color: #ddd;
		margin-right: 20px;
		margin-top: 10px;
		position: relative !important;
		background: #eeeeee;
		/*background: url('<?=ASSETS_URL?>img/bm.jpg') #eee repeat;*/
	}
	.titlebar {
		position: absolute;
		left: 0;
		top: 0;
		width: 100%;
		border-radius: 5px 5px 0 0;
		height: 50px;
		border-bottom: 1px solid lightgrey;
		padding-bottom: 10px;
		background: url('<?=ASSETS_URL?>img/titleebar-bg.png') #ddd repeat-x;
	}
	.number {
		display: inline-block;
		position: absolute;
		right: 13px;
		top: 17px;
		font-size: 2.5em;
		font-weight: bold;
		color: lightgrey;
		z-index: 20;
	}


		/* css for timepicker */
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
		width: 500px;
		word-break: break-all;
		background: white;
		padding: 5px;
		border: 1px solid #5CB3FF;
		border-radius: 10px;
	}

	.esItem {
		width: auto;
		background: white;
	}

	.makeEditable {
		width: 100px;
	}

	.esItemHover {
		background: #E3E4FA;
	}

	.esTextBox {
		background: url(../assets/ico/arrowdown.png) 98% 50% no-repeat;
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

	#tournament-attributes-table td {
		max-width: 125px;
		padding: 5px;

	}

	#participants-table td {
		word-break: break-all;
	}

	#participants-table {
		margin-bottom: 10px;
	}

	.datetimepicker {
		background: url(../assets/ico/arrowdown.png) 98% 50% no-repeat;
	}


</style>
<script src="/tournament/assets/js/jquery.combobox.js"></script>
<script src="/tournament/assets/js/jquery-ui-timepicker-addon.js"></script>
<form method="post">
<div class="mywell"><h1>Turniiri lisamine</h1></div>
<input type="hidden" id="tournament_id" value="<?= $tournament['tournament_id'] ?>">
<div style="clear: both; margin: 15px 0">
	<a class="btn btn-large btn-inverse" href="/tournament/tournaments">Loobu</a>
	<button class="btn btn-large btn-primary" type="button" onclick="convert_table_to_json()">Salvesta</button>
</div>

<div class="kast">
	<div class="number">1</div>
	<div class="titlebar"><h3>Turniiri üldandmed</h3>
	</div>
	<table id="tournament-attributes-table" class="table table-bordered ">
		<tbody>
		<tr>
			<th>Turniiri nimi:</th>
			<td><input id="tournament-name" onfocus="$(this).removeClass('viga')" type="text"
			           name="tournament[tournament_name]" autocomplete="off"
			           value="<?= $tournament['tournament_name'] ?>"></td>
		</tr>
		<tr>
			<th>Koht:</th>
			<td>
				<select id="tournament[place_name]" class="makeEditable" style="height: 20px; width: 207px" placeholder="Koht">
					<option value=""><?=! empty($place_name) ? $place_name : '&nbsp;'?></option>
					<? foreach ($places as $place) : ?>
						<option value="<?= $place['place_name'] ?>"><?=$place['place_name']?></option>
					<? endforeach?>
				</select>

			</td>
		</tr>
		<tr>
			<th>Turniiri algus:</th>

			<td><input type="text" id="tournament_start" class="datetimepicker" name="tournament[tournament_start]"
			           placeholder="pp.kk.aaaa hh:mm" autocomplete="off" onfocus="$(this).removeClass('viga')"
			           value="<?= $tournament['tournament_start'] ?>"></td>

		</tr>
		<tr>
			<th>Turniiri lõpp:</th>
			<td>
				<input type="text" class="datetimepicker" id="tournament_end" name="tournament[tournament_end]"
				       autocomplete="off" onfocus="$(this).removeClass('viga')" placeholder="pp.kk.aaaa hh:mm"
				       value="<?= $tournament['tournament_end'] ?>"></td>
		</tr>
		<tr>
			<th>Kaotajate ring:</th>
			<td><input name="tournament[tournament_loser_bracket]" type="checkbox"
					<?=$tournament['tournament_loser_bracket'] == 1 ? 'checked="checked" value="1"' : 'value="0"'?>></td>
		</tr>
		<tr>
			<th>Mängu kestvus:</th>
			<td><input id="game-length" class="spinner" min="1" maxlength="2"
			           name="tournament[tournament_game_time]" onkeypress="validate(event)"
			           onfocus="$(this).removeClass('viga')" value="<?= $tournament['tournament_game_time'] ?>"></td>
		</tr>
		<tr>
			<th>Paus:</th>
			<td><input class="spinner" min="1" maxlength="2" name="tournament[tournament_game_pause]"
			           onkeypress="validate(event)" value="<?= $tournament['tournament_game_pause'] ?>"></td>
		</tr>
		<tr>
			<th>Platside arv:</th>
			<td><input class="spinner" min="1" maxlength="2" name="tournament[tournament_field]"
			           onkeypress="validate(event)" value="<?= $tournament['tournament_field'] ?>"/></td>
		</tr>
		<tr>
			<th>Edasipääsejaid:</th>
			<td><input class="spinner" min="1" maxlength="2" name="tournament[tournament_win]"
			           onkeypress="validate(event)" value="<?= $tournament['tournament_win'] ?>"/></td>
		</tr>
		<tr>
			<th>Võit:</th>
			<td><input class="spinner" min="0" maxlength="2" name="tournament[tournament_game_win]"
			           onkeypress="validate(event)" value="<?= $tournament['tournament_game_win'] ?>"/></td>
		</tr>
		<tr>
			<th>Viik:</th>
			<td><input class="spinner" min="0" maxlength="2" name="tournament[tournament_game_tie]"
			           onkeypress="validate(event)" value="<?= $tournament['tournament_game_tie'] ?>"/></td>
		</tr>
		<tr>
			<th>Kaotus:</th>
			<td><input class="spinner" min="0" maxlength="2" name="tournament[tournament_game_loss]"
			           onkeypress="validate(event)" value="<?= $tournament['tournament_game_loss'] ?>"/></td>
		</tr>
		</tbody>
	</table>
</div>
<div class="kast">
	<div class="number">2</div>
	<div class="titlebar"><h3>
			Osalejad
	</h3>
	</div>

	<div style="width: 200px; float:left">
		<p>Alagruppide arv:
			<input class="spinner" min="1" value="1" maxlength="2" name="tournament[tournament_group]" id="max_groups"
			       onkeypress="validate(event); reinit_groups()" value="<?= $tournament['tournament_group'] ?>"/></p>
		<p>Võistlejaid alagrupis: 5</p>
	</div>
	<div style="width: 250px; float:left">
		<span class="help-block">Alagruppide arvu muutmisel määratakse mängijatele uued alagrupid.</span>
	</div>
		<div style="clear: both">
		<table id="participants-table" class="table table-bordered table-striped" style="width: 472px !important;">
			<thead>
			<tr>
				<td colspan="6">
					<!-- add row begins here -->

					<input type="text" class="input-small" placeholder="Võistleja nimi" id="participant_name" autocomplete="off"
					       style="height:35px; width: 150px" onfocus="$(this).removeClass('viga')">
					<select id="institute_name" class="makeEditable" style="height: 35px" placeholder="Instituut">
						<option value="">&nbsp;</option>
						<? foreach ($institutes as $institute) : ?>
							<option value="<?= $institute['institute_name'] ?>"><?=$institute['institute_name']?></option>
						<? endforeach?>
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
					Osaleja
				</th>
				<th>
					Instituut
				</th>
				<th>
					Alagrupp
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
			<? if (! empty($participants)) {
				$i = 1;
				foreach ($participants as $participant): ?>
					<tr id="participant<?= $participant['participant_id'] ?>">
						<td>
							<?=$i ++?>
						</td>
						<td>
							<?=$participant['participant_name']?>
						</td>
						<td>
							<?=$participant['institute_name']?>
						</td>
						<td>
							<?=$participant['group_name']?>
						</td>
						<td>
							<input type="checkbox">
						</td>
						<td>
							<a href="<?= BASE_URL ?>tournaments/remove_participant/<?= $participant['participant_id'] ?>"
							   onclick="if (!confirm('Oled kindel?'))return false; remove_participant_ajax
								   (<?= $participant['participant_id'] ?>); return false"><i class="icon-trash">
						</td>
					</tr>
				<? endforeach;
			}?>
			</tbody>
		</table>
	</div>
	<label class="checkbox">
		<input type="radio" name="radiobutton" onclick="$(hidediv1).hide();$('#round-robin-groups-playoff-div').show(400)">
		Alagrupid + playoff
	</label>

	<div id="round-robin-groups-playoff-div" style="display: none">
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
		<input type="radio" name="radiobutton" onclick="$(hidediv2).hide();$('#round-robin-groups-div').show(400);"
		"> Alagrupid
	</label>

	<div id="round-robin-groups-div" style="display: none"><img
			src="http://png.findicons.com/files/icons/1601/cute_critters/512/t9panda_trans.png"/>

	</div>
	<label class="checkbox">
		<input type="radio" name="radiobutton" onclick="$(hidediv3).hide();$('#playoffs-div').show(400);
"> Playoff
	</label>

	<div id="playoffs-div" style="display: none"><img
			src="http://png.findicons.com/files/icons/622/care_bears/128/ooopsy_bear.png"/></div>

	<label class="checkbox">
		<input type="radio" name="radiobutton" onclick="$(hidediv4).hide();$('#ranking-div').show(400);">
		Paremusjärjestus
	</label>

	<div id="ranking-div" style="display: none"><img
			src="http://png.findicons.com/files/icons/622/care_bears/128/cheer_bear.png"/></div>

</div>
<script type="text/javascript">
	var hidediv1 = "#round-robin-groups-div, #playoffs-div, #ranking-div";
	var hidediv2 = "#round-robin-groups-playoff-div, #playoffs-div, #ranking-div";
	var hidediv3 = "#round-robin-groups-playoff-div, #round-robin-groups-div,#ranking-div";
	var hidediv4 = "#round-robin-groups-playoff-div, #round-robin-groups-div, #playoffs-div";
</script>

<div style="clear: both; padding: 15px 0">
	<a class="btn btn-large btn-inverse" href="/tournament/tournaments">Loobu</a>
	<input type="hidden" id="participants" name="participants">
	<button class="btn btn-large btn-primary" type="button" onclick="convert_table_to_json()">Salvesta</button>
</div>
<script>
	participants = JSON.parse('<?=json_encode($participants)?>');
</script>
</form>