<html>
<head>
    <title>Registration Form</title>
    <link href="apti.css" rel="stylesheet">
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>

    <!-- <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"> -->
    <script src="https://www.google.com/jsapi?key={YOUR API KEY}" type="text/javascript"></script>
 
    <script type="text/javascript">
    google.load("elements", "1", {packages: "keyboard"});

    function onLoad(i) {
        var content = document.getElementById('content'+i);
        // Create the HTML for out text area
        //content.innerHTML = '<textarea id="textCode'+i+'" name="textCode'+i+'" cols="30" rows="1" ></textarea>';
        var y = 'textCode'+i;
        var kbd = new google.elements.keyboard.Keyboard(
        [google.elements.keyboard.LayoutCode.HINDI],
        [y]);
        
 
    }

    function validate()
    {
        //alert("entered");
        //var check_age = /^[0-9]{1,3}$/;
        var name=document.getElementById("textCode1").value;
        var age=document.getElementById("textCode2").value;
        var caste=document.getElementById("textCode3").value;
        var occupation=document.getElementById("textCode4").value;
        var username=document.getElementById("textCode5").value;
        var password=document.getElementById("textCode6").value;

        //alert(password);

        if(name=="")
        {
            //document.form.textCode1.focus();
            //alert("hiiiiiiiii1");
            document.getElementById("errorBox").innerHTML = "कृपया अपना नाम दर्ज करें";
            //alert("hrhhe");
            return false;
        }
        else if(age=="")
        {
            //document.form.textCode2.focus();
            //alert("hiiiiiiiii2");
            document.getElementById("errorBox").innerHTML = "कृपया अपनी आयु दर्ज करें";
            return false;
        }
        else if(!(age>0&&age<150))
        {
            document.getElementById("errorBox").innerHTML = "कृपया अपनी आयु अंकों में दर्ज करें";
            return false;
        }
        else if(caste=="")
        {
            //document.form.textCode3.focus();
            //alert("hiiiiiiiii3");
            document.getElementById("errorBox").innerHTML = "कृपया अपनी जाति दर्ज करें";
            return false;
        }
        else if(occupation=="")
        {
            //document.form.textCode4.focus();
            //alert("hiiiiiiiii4");
            document.getElementById("errorBox").innerHTML = "कृपया अपना व्यवसाय दर्ज करें";
            return false;
        }
        else if(username=="")
        {
            //document.form.textCode5.focus();
            //alert("hiiiiiiiii5");
            document.getElementById("errorBox").innerHTML = "कृपया अपना यूजरनाम दर्ज करें";
            return false;
        }
        else if(password=="")
        {
            //document.form.textCode6.focus();
            //alert("hiiiiiiiii6");
            document.getElementById("errorBox").innerHTML = "कृपया अपना पासवर्ड दर्ज करें";
            return false;
        }
        else
        {
            // console.log("ghj");
            // alert("helloo");
            return true;
        }
        //alert("BYEE");
    }

    </script>
</head>
<body>

<fieldset id="field">
        <div id="title"><b>व्यक्तिगत विवरण</b></div>
        <div id="keyboard">हिंदी में लिखने के लिए कीबोर्ड पर क्लिक करें   <img src="chikankari_images/key.jpg" onclick="onLoad(1)" height=40 width=50/></div>
        <br>
        <div id="errorBox"></div>
      <form method="post" action="checkform.php" onsubmit="return validate()">
        <div>
            <div style="display: inline-block">1. पूरा  नाम  </div>
            <br>
            <input type="text" id="textCode1" name="textCode1" cols="30" rows="2" onclick="onLoad(1)" >
            <div id="content1"></div>
        </div>
        <br>
        <div>
            <div style="display: inline-block">2. आयु </div>
            <br>
            <input type="number" min="15" max="120" id="textCode2" name="textCode2" cols="60" rows="2" onclick="onLoad(2)" >
            <!-- <img src="chikankari_images/key.jpg" onclick="onLoad(2)" height=20 width=30/> -->
            <div id="content2"></div>
        </div>
        <br>
        <div>
            <div style="display: inline-block">3. जाति  </div>
            <br>
            <select id="textCode3" name="textCode3">
                <option value="Select Caste" selected="true" style="display:none;">Select Caste</option>
                <option value="Open">Open</option>
                <option value="OBC">OBC</option>
                <option value="SC">SC</option>
                <option value="ST">ST</option>
            </select>
            
            <!-- <img src="chikankari_images/key.jpg" onclick="onLoad(3)" height=20 width=30/> -->
            <div id="content3"></div>
        </div>
        <br>
        <div>
            <div style="display: inline-block">4. व्यवसाय  </div>
            <br>
             <select id="textCode4" name="textCode4">
                <option value="Select Occupation" selected="true" style="display:none;">Select Occupation</option>
                <option value="Artisan">Artisan</option>
                <option value="Labourer">Labourer</option>
                <option value="xyz">xyz</option>
                <option value="abc">abc</option>
            </select>
            <!-- <img src="chikankari_images/key.jpg" onclick="onLoad(4)" height=20 width=30/> -->
            <div id="content4"></div>
        </div>
        <br>
        <div>
            <div style="display: inline-block">5. यूजरनाम   </div>
            <br>
            <input type="text" id="textCode5" name="textCode5" cols="30" rows="2" onclick="onLoad(5)" >
            <!-- <img src="chikankari_images/key.jpg" onclick="onLoad(5)" height=20 width=30/> -->
            <div id="content5"></div>
        </div>
        <br>
        <div>
            <div style="display: inline-block">6. पासवर्ड   </div>
            <br>
            <input type="password" id="textCode6" name="textCode6" cols="30" rows="2" onclick="onLoad(6)" >
            <!-- <img src="chikankari_images/key.jpg" onclick="onLoad(6)" height=20 width=30/>
 -->            <div id="content6"></div>
        </div>
        <br>
        <div id="wrapper"><input type="submit" id="button" name="submit" value="दर्ज"></div>
        <div style="color:red;font-size:16px">*हम बाल श्रम के खिलाफ सख्ती कर रहे हैं|<br>
            *यह किसी भी व्यवसाय की जगह लेने के इरादे से नहीं बनाया गया है|</div>
   </fieldset>
   </form>
</body>
</html>