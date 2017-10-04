<!DOCTYPE html> 
<html>
<head>
	<title>
		Login page
	</title>

	<link href="login.css" rel="stylesheet">

	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<script src="https://www.google.com/jsapi?key={YOUR API KEY}" type="text/javascript"></script>
    <script type="text/javascript">
    google.load("elements", "1", {packages: "keyboard"});

    function onLoad(i) {

      //var content = document.getElementById('content'+i);
      // Create the HTML for out text area
      //content.innerHTML = '<textarea id="textCode'+i+'" name="textCode'+i+'" cols="30" rows="1" required></textarea>';
    var y = 'text'+i;
      var kbd = new google.elements.keyboard.Keyboard(
          [google.elements.keyboard.LayoutCode.HINDI],
          [y]);
     
    }
 // google.setOnLoadCallback(onLoad);  
    </script>
</head>
<body style="background: none;margin:0px;padding:0px">
	<!-- <div style="display: inline-block;float:left; height:100%; width:30%; max-height:100%; overflow:hidden">
		<img src="chikankari_images/asd.jpg" style="">
	</div> -->

	<div id="design"> <img src="chikankari_images/asd.jpg" ></div>
  <div id="login"><fieldset id="field">
    <form method="POST">
      <h3>लॉग इन</h3></br></br>
      यूजरनाम : <input type="text" id="text1" name="name" onclick="onLoad(1)" placeholder="" style="height:23px"></br></br> 
      पासवर्ड :   <input type="password" id="text2" onclick="onLoad(2)" name="pass" placeholder="" style="height:23px"></br></br>
      <div id="warn" style="font-color:red">
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
          if(isset($_POST['name'])&&isset($_POST['pass']))
          {
            if($_POST['name']!=NULL&&$_POST['pass']!=NULL)
            {
              $un=$_POST['name'];
              $flag=1;
              $query=mysql_query("select * from `users`");
              while($row = mysql_fetch_array($query))
              {
                if($row[4]==$un)
                {
                  $flag=0;
                  break;
                }
              }
              if($flag==0)
              {
                if($row[5]==$_POST['pass'])

                {
                  if($row[6]==(-1))
                  {
                    header("Location: section1.php");
                    die();
                  }
                  else if($row[7]==(-1))
                  {
                    header("Location: section2.php");
                    die();
                  }
                  else if($row[10]==(-1))
                  {
                    header("Location: section3.php");
                    die();
                  }
                  else
                  {
                    $_SESSION['username']=$row[4];
                    header("Location: res.php");
                    die();
                  }

                }
                else
                {
                  echo "<span style='color:red'>आपका पासवर्ड गलत है</span>";
                  
                }
              }
              else
              {
                  echo "<span style='color:red'>यूजरनाम मौजूद नहीं है. कृपया रजिस्टर कीजिये.</span>";
              }
            }
            else
            {
              echo "<span style='color:red'>यूजरनाम और पासवर्ड खाली नहीं छोड़ा जा सकता</span>";
            }
          } 
        ?>

      </div></br></br>
      <input id="button" type="submit" value="लॉगिन">
    </form>
    <p><a href="form.php">रजिस्टर करने के लिए यहाँ क्लिक करें</a></p>
    </fieldset>
	</div>
</body>
</html>