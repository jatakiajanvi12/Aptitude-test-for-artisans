<?php
			header( 'Content-Type: text; charset=utf-8' );
			require_once 'phplot.php';
			
			session_start();
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


			// $plot = new PHPlot(1000, 500);
			// $plot->SetImageBorderType('plain');
			// $plot->SetDataColors('#000000');

			// $plot->SetPlotType('bars');
			// $plot->SetDataType('text-data');
			// $plot->SetDataValues($data);
			// $plot->SetXTickLabelPos('none');
			// $plot->SetXTickPos('none');
			// $plot->SetPlotAreaWorld(NULL, 0, NULL, 100);

			// $plot->DrawGraph();
			

$plot = new PHPlot(1000, 500);
$plot->SetImageBorderType('plain'); // Improves presentation in the manual
$plot->SetPlotType('bars');
$plot->SetDataValues($data);
$plot->SetDataType('text-data');
$plot->SetTitle('Result');
$plot->SetXTitle('Section');
$plot->SetYTitle('Percentage(%)');
# Turn off X Tick labels which have no meaning here.
$plot->SetXTickPos('none');
# For titles, use Arial Bold Italic at 14 points:
$plot->SetFontTTF('title', 'GARABD.TTF', 18);

$plot->SetYDataLabelPos('plotin');
$plot->SetXTickLabelPos('none');
$plot->SetXTickPos('none');

# Make sure Y=0 is displayed:
$plot->SetPlotAreaWorld(NULL, 0);
# Y Tick marks are off, but Y Tick Increment also controls the Y grid lines:


# Turn on Y data labels:
$plot->SetYDataLabelPos('plotin');

# With Y data labels, we don't need Y ticks or their labels, so turn them off.
$plot->SetYTickLabelPos('none');
$plot->SetYTickPos('none');

# Format the Y Data Labels as numbers with 1 decimal place.
# Note that this automatically calls SetYLabelType('data').
$plot->SetPrecisionY(1);


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

?>

		
