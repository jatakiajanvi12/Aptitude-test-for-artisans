<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">


<?php 
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

$nith = "CREATE TABLE IF NOT EXISTS `section3` ( `qid` int(5) ,
  `type` int(5) ,
  `category` varchar(100) , 
  `question` varchar(500) character set utf8 collate utf8_bin default NULL , 
  `questionimage` varchar(500) character set utf8 collate utf8_bin default NULL ,
  `opta` varchar(500) character set utf8 collate utf8_bin default NULL ,
 `optb` varchar(500) character set utf8 collate utf8_bin default NULL ,
 `optc` varchar(500) character set utf8 collate utf8_bin default NULL , 
`optd` varchar(500) character set utf8 collate utf8_bin default NULL , 
`correctopt` int(5)
) ENGINE=InnoDB DEFAULT CHARSET=latin1";

if (!mysql_query($nith,$con))
{
  die('Error: ' . mysql_error());
}

$nithi = "INSERT INTO `section3` VALUES ('15','3','text','संघ का बैंक खाता किसके नाम में होना चाहिए?','','ऊपर के दोनों विकल्प','संघ के नाम में','किसी एक व्यक्ति के नाम पे','इन् में से एक भी नहीं','2')";


if (!mysql_query($nithi,$con))
{
  die('Error: ' . mysql_error());
}
$result = mysql_query("SET NAMES utf8");//the main trick
$cmd = "select * from section2";
$result = mysql_query($cmd);
while($myrow = mysql_fetch_row($result))
{
    echo ($myrow[0]);
    echo ($myrow[1]);
    echo ($myrow[2]);
    echo ($myrow[3]);
    echo ($myrow[4]);
    echo ($myrow[5]);
    echo ($myrow[6]);
    echo ($myrow[7]);

}
?>

</body>
</html>