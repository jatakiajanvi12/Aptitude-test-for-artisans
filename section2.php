<html>
<head>
	<link href="apti.css" rel="stylesheet">
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
		<script src="https://www.google.com/jsapi?key={YOUR API KEY}" type="text/javascript"></script>
 
    <script type="text/javascript">
	    google.load("elements", "1", {packages: "keyboard"});

	    function onLoad(i) {

	      	var content = document.getElementById('content'+i);
	      	content.innerHTML = '<textarea id="textCode'+i+'" name="textCode'+i+'" cols="30" rows="1" ></textarea>';
	    	var y = 'textCode'+i;
	      	var kbd = new google.elements.keyboard.Keyboard(
	          [google.elements.keyboard.LayoutCode.HINDI],[y]);
	    }
    </script>
</head>
<body>
	<div id="title"><b>डिज़ाइन (DESIGN)</b>
		<button id="logout" onClick="document.location.href='sd.php'">लोग आउट</button></div>

	<form method="post" action="checkapti.php">
	<?php
	session_start();
	$con=mysql_connect("localhost", "root", "varsha") or die (mysql_error());
	mysql_select_db("chikankari") or die ("Cannot connect to database");
	mysql_query('SET character_set_results=utf8');
	mysql_query('SET names=utf8');
	mysql_query('SET character_set_client=utf8');
	mysql_query('SET character_set_connection=utf8');
	mysql_query('SET character_set_results=utf8');
	mysql_query('SET collation_connection=utf8_general_ci');
	$query = mysql_query("Select * from section2");
	$name=1;
	while($row = mysql_fetch_array($query))
	{
		if($row['category']=='text')
		{
			echo //the names according to the column name in the database
			'<fieldset id="field"><p>'.$name.') '.nl2br(htmlspecialchars($row['question'])).'</p> 
			<label><input type="radio" name="' .$name. '" value="1"> '.nl2br(htmlspecialchars($row["opta"])).' </label><br>
			<label><input type="radio" name="' .$name. '" value="2"> '.nl2br(htmlspecialchars($row["optb"])).' </label><br>
			<label><input type="radio" name="' .$name. '" value="3"> '.nl2br(htmlspecialchars($row["optc"])).' </label> <br>
			<label><input type="radio" name="' .$name. '" value="4"> '.nl2br(htmlspecialchars($row["optd"])).' </label><br></fieldset>';
		}
		else if($row['category']=='textimage')
		{
			echo //the names according to the column name in the database
			'<fieldset id="field"><p>'.$name.') '.nl2br(htmlspecialchars($row['question'])).'</p>
			<img height=180 width=270 src="'.substr(($row["questionimage"]),1).'"></br>
			<label><input type="radio" name="' .$name. '" value="1"> '.nl2br(htmlspecialchars($row["opta"])).' </label><br>
			<label><input type="radio" name="' .$name. '" value="2"> '.nl2br(htmlspecialchars($row["optb"])).' </label><br>
			<label><input type="radio" name="' .$name. '" value="3"> '.nl2br(htmlspecialchars($row["optc"])).' </label> <br>
			<label><input type="radio" name="' .$name. '" value="4"> '.nl2br(htmlspecialchars($row["optd"])).' </label><br></fieldset>';
		}
		else if($row['category']=='image')
		{
			echo //the names according to the column name in the database
			'<fieldset id="field"><p>'.$name.') '.nl2br(htmlspecialchars($row['question'])).'</p>
			<label><input type="radio" name="' .$name. '" value="1"><img height=70 width=70 src="'.substr(($row["opta"]),1).'"></label><br>
			<label><input type="radio" name="' .$name. '" value="2"><img height=70 width=70 src="'.substr(($row["optb"]),1).'"></label><br>
			<label><input type="radio" name="' .$name. '" value="3"><img height=70 width=70 src="'.substr(($row["optc"]),1).'"></label> <br>
			<label><input type="radio" name="' .$name. '" value="4"><img height=70 width=70 src="'.substr(($row["optd"]),1).'"></label><br></fieldset>';
		}
		$name=$name+1;

	}
	$_SESSION['section']=2;
	?>
	<br><br><div id="wrapper"><input id="button" type="submit" name="Check"  value="अगला भाग"></div>
	</form>
</body>
</html>