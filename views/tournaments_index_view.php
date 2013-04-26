<h2 class="form-signin-heading">Turniirid</h2>
<p><a class="btn btn-large btn-primary" href="<?= BASE_URL ?>tournaments/add">Lisa uus turniir</a></p>
<table id="tournaments-table" class="table table-bordered table-striped">
	<thead>
	<tr>
		<th>
			Turniiri nimi
		</th>
		<th>
			Aasta
		</th>
		<th>
			Koht
		</th>
		<th style="width: 200px;">
			Tegevused
		</th>
	</tr>
	</thead>
	<tbody>
	<? if (! empty ($tournaments)): foreach ($tournaments as $tournament): ?>
		<tr id="tournament<?= $tournament['tournament_id'] ?>">
			<td>
				<?= $tournament['tournament_name'] ?>
			</td>
			<td>
				<?= substr($tournament['tournament_start'], 0, 4) ?>
			</td>
			<td>
				<?= $tournament['place_name'] ?>
			</td>
			<td>
				<a href="<?= BASE_URL ?>tournaments/view/<?= $tournament['tournament_id'] ?>" class="btn btn-inverse btn-mini"><i
						class="icon-pencil icon-ok icon-white"></i> Vaata</a>
				<a href="<?= BASE_URL ?>tournaments/remove/<?= $tournament['tournament_id'] ?>" class="btn btn-inverse btn-mini"
				   onclick="if (!confirm('Oled kindel?'))return false; remove_tournament_ajax
					   (<?= $tournament['tournament_id'] ?>); return false"><i
						class="icon-trash icon-ok icon-white"></i> Kustuta</a>

			</td>

		</tr>
	<? endforeach; endif ?>
	</tbody>
</table>
<div hidden=""></div>