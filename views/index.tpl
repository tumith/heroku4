<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>json verkefni</title>
	<link rel="stylesheet" type="text/css" href="/static/styles.css">
</head>
<body>
	%include('haus.tpl')
    
    <%
       import json
       with open("gengi.json","r", encoding="utf-8") as skra:
            gengi = json.load(skra)
    %>
    
    
	<div class="row">
		<section>
                <h2>Gengi gjalmiðla í ISKR.</h2>
				<ul>
					% for i in gengi['results']:
						<li>{{ i['longName'] }} - {{ i['shortName'] }} ISKR: {{ i['value'] }}</li>
					% end
				</ul>
		</section>
	</div>
	%include('fotur.tpl')
</body>
</html>