<?php
session_start();

require('phplot.php');
header( 'Content-Type: text; charset=utf-8');
	$un=$_SESSION["username"];
	
	$con=mysql_connect("localhost", "root", "varsha") or die (mysql_error());
	mysql_select_db("chikankari") or die ("Cannot connect to database");
	mysql_query('SET character_set_results=utf8');
	mysql_query('SET names=utf8');
	mysql_query('SET character_set_client=utf8');
	mysql_query('SET character_set_connection=utf8');
	mysql_query('SET character_set_results=utf8');
	mysql_query('SET collation_connection=utf8_general_ci');
	
	$query = mysql_query("Select * from users where `username`='$un'");


	$row = mysql_fetch_array($query);
	$name=$row['name'];
	$age=$row['age'];
	$caste=$row['caste'];
	$occ=$row['occupation'];
	

$dir = "images/";
$filename = "data.png";




			$con=mysql_connect("localhost", "root", "varsha") or die (mysql_error());
			mysql_select_db("chikankari") or die ("Cannot connect to database");
			mysql_query('SET character_set_results=utf8');
			mysql_query('SET names=utf8');
			mysql_query('SET character_set_client=utf8');
			mysql_query('SET character_set_connection=utf8');
			mysql_query('SET character_set_results=utf8');
			mysql_query('SET collation_connection=utf8_general_ci');
			$un = $_SESSION['username'];
			$query = mysql_query("SELECT * FROM `users` WHERE `username`='$un'");
			while($row= mysql_fetch_array($query))
			{
				$s1=$row[6];
				$s21=$row[7];
				$s22=$row[8];
				$s23=$row[9];
				$s31=$row[10];
				$s32=$row[11];
				$s33=$row[12];
			}
			function pickcolor($img, $data_array, $row, $col)
{
  $d = $data_array[$row][$col+1]; // col+1 skips over the row's label
  if ($d >= 80) return 0;
  if ($d >= 30 && $d<=79) return 1;
  if ($d >= 0 && $d<=10) return 3 ;
  return 2;
}
$s=($s1+$s21+$s22+$s23+$s31+$s32+$s33)/7;

			$data = array(
			  array('I',$s1), array('II', $s21), array('III',$s22),
			  array('IV', $s23), array('V', $s31), array('VI', $s32),
			  array('VII', $s33),array('VIII', $s));



$plot = new PHPlot(750,400,$dir.$filename);
$plot->SetImageBorderType('plain'); // Improves presentation in the manual
$plot->SetPlotType('bars');
$plot->SetDataValues($data);
$plot->SetYDataLabelPos('plotin');
$plot->SetFileFormat('png');
$plot->SetIsInline(true); 
 
$plot->SetDataType('text-data');
$plot->SetTitle('Result');
$plot->SetXTitle('Section');
$plot->SetYTitle('Score(%)');
# Turn off X Tick labels which have no meaning here.
$plot->SetXTickPos('none');
# For titles, use Arial Bold Italic at 14 points:
$plot->SetFontTTF('title', 'GARABD.TTF', 18);

# For X Title, use Verdana at 12 points:
$plot->SetFontTTF('x_title', 'GARABD.TTF', 14);
$plot->SetFontTTF('y_title', 'GARABD.TTF', 14);
$plot->SetFontTTF('x_label', 'GARABD.TTF', 10);
$plot->SetFontTTF('y_label', 'GARABD.TTF', 10);
# Force the Y axis to be exactly 0:100

$plot->SetPlotAreaWorld(NULL, 0, NULL, 100);

# Establish the function 'pickcolor' as a data color selection callback.
# Set the $data array as the pass-through argument, so the function has
# access to the data values without relying on global variables.
$plot->SetCallback('data_color', 'pickcolor', $data);

# The three colors are meaningful to the data color callback.
$plot->SetDataColors(array('green', 'blue', 'orange','red'));

# The legend will explain the use of the 4 colors.
$plot->SetLegend(array('Skilled(above 80%)', 'Semi-skilled(30%-80%)',
  'Minute Skilled(10%-30%)','Unfit(below 10%)'));

$plot->DrawGraph();



	$content = "<page>

	<div class='title'>परिणाम और गैप एनालिसिस(RESULT AND GAP ANALYSIS)</div><br><hr>
	<div class='info'>
		<p> पूरा  नाम : $name </p>
		<p>आयु : $age </p>
		<p> जाति : $caste </p>
		<p> व्यवसाय: $occ </p><hr><br>
		<img src='images/data.png'/>
	</div><br>
	
	<table>
		<tr>
			<th>Sr No</th>
			<th>Section</th>
			<th>Score(%)</th>
		</tr>
		<tr>
			<td>I</td>
			<td>बुनियादी योग्यता(Basic Aptitude)</td>  
			<td>$s1</td>
		</tr>
		<tr>
			<td>II</td>
			<td>चिकनकारी का ज्ञान(Knowledge of Chikankari)</td>
			<td>$s21</td>
		</tr>
		<tr>
			<td>III</td>
			<td>डिज़ाइन का ज्ञान(Knowledge of Design)</td>
			<td>$s22</td>
		</tr>
		<tr>
			<td>IV</td>
			<td>अन्य प्रक्रियाओं (Miscellaneous)</td>
			<td>$s23</td>
		</tr>
		<tr>
			<td>V</td>
			<td>आपूर्ति श्रृंखला ज्ञान (Supply Chain Knowledge)</td>
			<td>$s31</td>
		</tr>
		<tr>
			<td>VI</td>
			<td>बिक्री (Marketing)</td>
			<td>$s32</td>
		</tr>
		<tr>
			<td>VII</td>
			<td>बुक कीपिंग(Book-keeping)</td>
			<td>$s33</td>
		</tr>
		<tr>
			<td>VIII</td>
			<td>कुल स्कोर(Total Score)</td>
			<td>$s</td>
		</tr>
	</table><br>
	<table class='table1'>
		<tr>
			<th>Skill level</th>
			<th>Training Requirement</th>
		</tr>
		<tr>
			<td>Skilled</td>
			<td>प्रशिक्षण की आवश्यकता नहीं(Training not required)</td>
		</tr>
		<tr>
			<td>Semi-skilled</td>
			<td>मध्यम प्रशिक्षण की आवश्यकता(Moderate training required)</td>
		</tr>
		<tr>
			<td>Minute-skilled</td>
			<td>प्रशिक्षण की बहुत आवश्यकता(Rigorous training required)</td>
		</tr>
		<tr>
			<td>Unfit</td>
			<td>अयोग्य(Unfit)</td>
		</tr>
	</table>

				</page>";

    require_once(dirname(__FILE__).'\html2pdf-4.4.0\html2pdf.class.php');
    $html2pdf = new HTML2PDF('P','A4','en', true, 'UTF-8',array(5, 5, 5, 8));
    $html2pdf->setDefaultFont('freesans');
 
    $css = '<style>'.file_get_contents('graph.css').'</style>';

 
    $html2pdf->WriteHTML($css.$content);
    
    $html2pdf->Output('exemple.pdf');
	
?>