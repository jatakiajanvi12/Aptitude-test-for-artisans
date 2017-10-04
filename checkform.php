<?php
if($_SERVER["REQUEST_METHOD"]=="POST")
{
	$con = mysql_connect("localhost","root","varsha");
	if (!$con)
	{
	  die('Could not connect: ' . mysql_error());
	}
	mysql_query('SET character_set_results=utf8');
	mysql_query('SET names=utf8');
	mysql_query('SET character_set_client=utf8');
	mysql_query('SET character_set_connection=utf8');
	mysql_query('SET character_set_results=utf8');
	mysql_query('SET collation_connection=utf8_general_ci');

	mysql_select_db('chikankari',$con);

	// $tab = "CREATE TABLE IF NOT EXISTS `users` ( `name` varchar(500) character set utf8 collate utf8_bin default ,
	//   `age` varchar(3) character set utf8 collate utf8_bin default NULL ,
	//   `caste` varchar(500) character set utf8 collate utf8_bin default NULL , 
	//   `occupation` varchar(500) character set utf8 collate utf8_bin default NULL ,
	//   `username` varchar(500) character set utf8 collate utf8_bin default NULL ,
	//   `password` varchar(500) character set utf8 collate utf8_bin default NULL ,
	//   `score1` int(5),
	//   `score21` int(5),
	//   `score22` int(5),
	//   `score23` int(5),
	//   `score31` int(5),
	// `score32` int(5),
	// `score33` int(5)

	// ) ENGINE=InnoDB DEFAULT CHARSET=latin1";


	// if (!mysql_query($tab,$con))
	// {
	//   die('Error: ' . mysql_error());
	// }

	$name=$_POST['textCode1'];
	$age=$_POST['textCode2'];
	$caste=$_POST['textCode3'];
	$occupation=$_POST['textCode4'];
	$username=$_POST['textCode5'];
	$password=$_POST['textCode6'];

	session_start();
	$_SESSION['username']=$username;

	$result = mysql_query("SET NAMES utf8");//the main trick
	$cmd = "select * from users";
	$result = mysql_query($cmd);

	$flag=1;
	while($row=mysql_fetch_array($result))
	{
		if($row['username']==$username)
			$flag=0;
	}
	if($flag==1)
	{	//echo "hiihello";
		mysql_query("INSERT INTO `users` VALUES ('$name', '$age', '$caste', '$occupation', '$username', '$password',-1,-1,-1,-1,-1,-1,-1)");
		header("Location:section1.php");
	}
	else
	{
		echo '<script>alert("यूजरनाम पहले से मौजूद है");</script>';
		header("Location:section1.php");
	}	
}

?>