<html>
<head>

	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
</head>
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
$name=1;
$marks=0;

if($_SESSION['section']==1)
{
	$query = mysql_query("Select * from section1");
	while($row = mysql_fetch_array($query))
	{	
		if(isset($_POST[$name])&&$_POST[$name]!=NULL)
		{
			if($_POST[$name]==$row['correctopt'])
			{
				$marks++;
			}
		}
		else;
		$name++;
	}
	$quests=$name-1;
	$perc=$marks/$quests*100;

	$un=$_SESSION['username'];
	mysql_query("UPDATE `users` SET `score1`=$perc  WHERE `username`= '$un'");
	header("Location: section2.php");
		die();

}
else 
{
	if($_SESSION['section']==2)
		$query = mysql_query("Select * from section2");	
	else if($_SESSION['section']==3)
		$query = mysql_query("Select * from section3");
	$type1=0;
	$type2=0;
	$type3=0;
	$marks1=0;
	$marks2=0;
	$marks3=0;
	while($row = mysql_fetch_array($query))
	{	
		if($row['type']==1)
		{
			$type1++;
			if(isset($_POST[$name])&&$_POST[$name]!=NULL)
			{
				if($_POST[$name]==$row['correctopt'])
					$marks1++;	
			}
		}	
		else if($row['type']==2)
		{
			if(isset($_POST[$name])&&$_POST[$name]!=NULL)
			{
				if($_POST[$name]==$row['correctopt'])
				$marks2++;
			}
				$type2++;
		}	
		else if($row['type']==3)
		{
			if(isset($_POST[$name])&&$_POST[$name]!=NULL)
			{
				if($_POST[$name]==$row['correctopt'])
				$marks3++;
			}
				$type3++;	
		}	
		$name++;
	}
	$perc1=$marks1/$type1*100;
	$perc2=$marks2/$type2*100;
	$perc3=$marks3/$type3*100;
	$un=$_SESSION['username'];
	if($_SESSION['section']==2)
	{
		mysql_query("UPDATE `users` SET `score21`=$perc1,`score22`=$perc2,`score23`=$perc3  WHERE `username`= '$un'");
		header("Location: section3.php");
		die();
	}
	else if($_SESSION['section']==3)
	{
		mysql_query("UPDATE `users` SET `score31`=$perc1,`score32`=$perc2,`score33`=$perc3  WHERE `username`= '$un'");
		header("Location: res.php");
		die();
	}
}


?>
</html>