<form class="form-signin" method="post">
    <h2 class="form-signin-heading">Turniirid</h2>
    <button class="btn btn-large btn-primary" type="submit">Lisa uus turniir</button>
</form>
<table class="table table-bordered table-striped">
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
	</tr>
	</thead>
	<tbody>
	<? if (!empty ($tournaments)): foreach ($tournaments as $tournament): ?>
	<tr>
		<td>
			<?=$tournament['tournament_name']?>
		</td>
		<td>
			<?=$tournament['tournament_year']?>
		</td>
		<td>
			<?=$tournament['place_name']?>
		</td>
	</tr>
		<? endforeach; endif ?>
	</tbody>
</table>
    <div hidden=""></div>