<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=GB18030">

  <title>Table Tags - App</title>

  <style>
/*! normalize.css v3.0.0 | MIT License | git.io/normalize */html{font-family:sans-serif;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%}body{margin:0}article,aside,details,figcaption,figure,footer,header,hgroup,main,nav,section,summary{display:block}audio,canvas,progress,video{display:inline-block;vertical-align:baseline}audio:not([controls]){display:none;height:0}[hidden],template{display:none}a{background:transparent}a:active,a:hover{outline:0}abbr[title]{border-bottom:1px dotted}b,strong{font-weight:bold}dfn{font-style:italic}h1{font-size:2em;margin:0.67em 0}mark{background:#ff0;color:#000}small{font-size:80%}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline}sup{top:-0.5em}sub{bottom:-0.25em}img{border:0}svg:not(:root){overflow:hidden}figure{margin:1em 40px}hr{-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box;height:0}pre{overflow:auto}code,kbd,pre,samp{font-family:monospace, monospace;font-size:1em}button,input,optgroup,select,textarea{color:inherit;font:inherit;margin:0}button{overflow:visible}button,select{text-transform:none}button,html input[type="button"],input[type="reset"],input[type="submit"]{-webkit-appearance:button;cursor:pointer}button[disabled],html input[disabled]{cursor:default}button::-moz-focus-inner,input::-moz-focus-inner{border:0;padding:0}input{line-height:normal}input[type="checkbox"],input[type="radio"]{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;padding:0}input[type="number"]::-webkit-inner-spin-button,input[type="number"]::-webkit-outer-spin-button{height:auto}input[type="search"]{-webkit-appearance:textfield;-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box}input[type="search"]::-webkit-search-cancel-button,input[type="search"]::-webkit-search-decoration{-webkit-appearance:none}fieldset{border:1px solid #c0c0c0;margin:0 2px;padding:0.35em 0.625em 0.75em}legend{border:0;padding:0}textarea{overflow:auto}optgroup{font-weight:bold}table{border-collapse:collapse;border-spacing:0}td,th{padding:0}

</style>

    <style>
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,600,700);
html {
    background: url(http://upload.robinbrons.com/u/1362757499.png);
}
body {
  font-family: 'Open Sans', sans-serif;
  font-weight: 400;
}
.event {
  width: 300px;
  height: 80px;
  background: #fff;
  border: 1px solid #CCC;
  border-radius: 2px;
  margin: 50px;
}
.event:before {
  content: '';
  display: block;
  width: 295px;
  height: 70px;
  background: #fff;
  border: 1px solid #CCC;
  border-radius: 2px; 
  transform: rotate(2deg);
  position: relative;
  top: 12px;
  left: 2px;
  z-index: -1;
}
.event:after {
  content: '';
  display: block;
  width: 295px;
  height: 75px;
  background: #fff;
  border: 1px solid #CCC;
  border-radius: 2px; 
  transform: rotate(-2deg);
  position: relative;
  top: -136px;
  z-index: -2;  
}
.event > span {
  display: block;
  width: 30px;
  background: #232323;  
  position: relative;
  top: -55px;
  left: -15px;

  /* Text */
  color: #fff;
  font-size: 10px;
  padding: 2px 7px;
  text-align: right;
}
.event > .info {
  display: inline-block;
  position: relative;
  top: -75px;
  left: 40px;

  /* Text */
  color: #232323;
  font-weight: 600;
  line-height: 25px;
}
.event > .info:first-line {
  text-transform: uppercase;
  font-size: 10px;
  margin: 10px 0 0 0;
  font-weight: 700;
}
.event > .price {
  display: inline-block;
  width: 60px;
  position: relative;
  top: -85px;
  left: 115px; 

  /* Text */
  color: yellow;
  text-align: center;
  font-weight: 700;
}
</style>

    <script src="assets/js/prefixfree.min.js"></script>
<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>


</head>
<script>
$(document).ready(function(){
	  $("button").click(function(){
	    $(".event").toggle("slow");
	  });
	});
	

</script>
<body>
	<button id="load">show/hide All apps</button>  
	<a href="javascript:history.back(-1)" style="text-decoration:none;color:black;"><button>Back</button></a>
	<a href="login.jsp" style="text-decoration:none;color:black;"><button>Quit Account</a></button> 
	<br>
    <script>
  var array1 = new Array();
  var array2 = new Array();
  var array3 = new Array();
  <c:forEach items="${list}" var="temp">   
  array1.push("${temp.getName()}");
  array2.push("${temp.getDescription()}");
  array3.push("${temp.getRating()}");
  </c:forEach>
  var size="${list.size()}";
  for(var i=0;i<size;i++){
    var num=i+1;
    document.write("<div  class='event'>");
    document.write("<span>"+num+"</span>");
    document.write("<div class='info'>Desc:"+array2[i]+"<br/>App:"+array1[i]+"</div>");
    document.write("<br><div class='price'> ✨:"+array3[i]+"</div>");
    document.write("</div>");
      }

    </script>  

  

</body>

</html>