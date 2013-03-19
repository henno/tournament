<script src="<?= BASE_URL ?>assets/js/jquery.combobox.js"></script>
<script src="<?= BASE_URL ?>assets/js/jquery-ui-timepicker-addon.js"></script>

<style>
		/* css for timepicker */
	.ui-timepicker-div .ui-widget-header {
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
		background: url(<?=BASE_URL?>assets/ico/arrowdown.png) 98% 50% no-repeat;
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
		padding: 5px;

	}

	#participants-table td {
		word-break: break-all;
	}

	.datetimepicker {
		background: url(<?=BASE_URL?>assets/ico/arrowdown.png) 98% 50% no-repeat;
	}
</style>

<form method="post" id="tournament-add-form">

	<div class="row-fluid">
	<span style="display: inline-block;">
	<div class="span6">
		<h3>Turniiri üldandmed</h3>
		<table id="tournament-attributes-table">
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
						<? foreach ($places as $place) : ?>
							<option value="<?= $place['place_name'] ?>"><?=$place['place_name']?></option>
						<? endforeach?>
					</select>

				</td>
			</tr>
			<tr>
				<th>Turniiri algus</th>

				<td><input type="text" id="tournament_start" class="datetimepicker" name="tournament[tournament_start]"
				           placeholder="pp.kk.aaaa hh:mm" autocomplete="off" onfocus="$(this).removeClass('viga')"></td>

			</tr>
			<tr>
				<th>Turniiri lõpp</th>
				<td>
					<input type="text" class="datetimepicker" id="tournament_end" name="tournament[tournament_end]"
					       autocomplete="off" onfocus="$(this).removeClass('viga')" placeholder="pp.kk.aaaa hh:mm"></td>
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
				<th>Alagruppe:</th>
				<td><input class="spinner" value="1" min="1" maxlength="2" name="tournament[tournament_group]"
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

	<div class="span6">
		<h3>Osalejad</h3>

		<div style="width: 472px">
			<table id="participants-table" class="table table-bordered table-striped" style="width: 472px !important;">
				<thead>
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
		</div>
		<!-- add row begins here -->
		 
		<div style="width: 472px">
			<input type="text" class="input-small" placeholder="Võistleja nimi" id="participant_name" autocomplete="off"
			       style="height:35px" onfocus="$(this).removeClass('viga')">
			<select id="institute_name" class="makeEditable" style="height: 35px; width:
			203px">
				<option value="">&nbsp;</option>
				<? foreach ($institutes as $institute) : ?>
					<option value="<?= $institute['institute_name'] ?>"><?=$institute['institute_name']?></option>
				<? endforeach?>
			</select>
			<button type="button" class="btn btn-large" onclick="add_participant()" style="margin-left:5px; float: right ">Lisa
				mängija
			</button>
		</div>

		<!-- add row ends here -->

	</div>
	</span>
	</div>

	<div class="row-fluid">
		<div class="span12 text-center">
			<a class="btn btn-large btn-primary" href="<?= BASE_URL ?>tournaments">Loobu</a>
			<button class="btn btn-large btn-primary" type="submit">Turniiri eelvaade</button>
			<input type="hidden" id="participants" name="participants">
			<button class="btn btn-large btn-primary" type="button" onclick="convert_table_to_json()">Kinnita</button>

		</div>
	</div>
</form>