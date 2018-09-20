<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>json verkefni</title>
	<link rel="stylesheet" type="text/css" href="/static/styles.css">
</head>
<body>
	%include('haus.tpl')
    
    
	<div class="row">
		<section>
                <h2>Gengi gjalmiðla frá APIs.is.</h2>
				<ul>
					% for i in data['results']:
						<li>{{ i['longName'] }} - {{ i['shortName'] }} ISKR: {{ i['value'] }}</li>
					% end
				</ul>
		</section>
	</div>
	%include('fotur.tpl')
</body>
</html>