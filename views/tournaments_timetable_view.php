<html>
<head>
	<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.0/css/bootstrap-combined.min.css" rel="stylesheet">
	<meta charset="utf-8">
</head>
<body>
<img src="http://tam.org.ee/blogs/skins/tam/images/toetajad/EMU_logo.jpg">
<h1 style="text-align: center">Ajakava</h1>
<h2><?=$tournament['tournament_name']?></h2>
<table class="table table-bordered table-striped">
	<thead>
	<tr>
		<th>Kellaaeg</th>
		<th>Võistkond</th>
		<th>Tulemus</th>
		<th>Võistkond</th>
		<th>Väljak</th>
	</tr>
	</thead>
	<? if (!empty ($games)): foreach ($games as $game): ?>
		<tr>
			<td><input value="10:00" type="text" style="width: 60px;float: left"></td>
			<td><?=$game['participant_a_id']?></td>
			<td><?=$game['participant_a_score']?>:<?=$game['participant_b_score']?></td>
			<td><?=$game['participant_b_id']?></td>
			<td>1</td>
		</tr>
	<? endforeach; endif ?>
</table>
</body>
</html>