<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<style>
.button {
	display: inline-block;
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: 14px/100% Arial, Helvetica, sans-serif;
	padding: .5em 2em .55em;
	text-shadow: 0 1px 1px rgba(0,0,0,.3);
	-webkit-border-radius: .5em; 
	-moz-border-radius: .5em;
	border-radius: .5em;
	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	-moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	box-shadow: 0 1px 2px rgba(0,0,0,.2);
}
.button:hover {
	text-decoration: none;
}
.button:active {
	position: relative;
	top: 1px;
}
.blue {
	color: #d9eef7;
	border: solid 1px #da7c0c;
	background: #f78d1d;
	background: -webkit-gradient(linear, left top, left bottom, from(#00adee), to(#0078a5));
	background: -moz-linear-gradient(top,  #0095cc,  #00678e);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#faa51a', endColorstr='#00adee');
}
.blue {
	background: #f47c20;
	background: -webkit-gradient(linear, left top, left bottom, from(#f88e11), to(#f06015));
	background: -moz-linear-gradient(top,  #f88e11,  #f06015);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#f88e11', endColorstr='#f06015');
}
.blue {
	color: #fcd3a5;
	background: -webkit-gradient(linear, left top, left bottom, from(#f47a20), to(#faa51a));
	background: -moz-linear-gradient(top,  #f47a20,  #faa51a);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#f47a20', endColorstr='#faa51a');
}
</style>
    <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <title>Filter Functionality with CSS3</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Filter Functionality with CSS3" />
        <meta name="keywords" content="filter, css3, portfolio, functionality" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="assets/css/demo.css" />
        <script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js">

        
		<script type="text/javascript" src="assets/js/modernizr.custom.29473.js"></script>
    </head>
    <script>

    
/*     $(document).ready(function(){
    	  $("button").click(function(){
    	    $("#table").fadeToggle("slow");
    	  });
    	}); */
    </script>
    <body>
    
        <div class="container">
			<header>
				<h1>Admin <span>Option</span></h1>
				<h2>Item Create, Update&amp; Delete</h2>
				<p class="codrops-demos">
				</p>	
			</header>
			<div>
				<a href="createApp.jsp"class="button blue">Create</a><br>
				<form action="getApp.do" method="post" >
					<a href="deleteApp.jsp"><button class="button blue"name="option" value="delete">Delete</button></a>
				</form>				
				<form action="getApp.do" method="post" >
					<a href="updateApp.jsp"><button class="button blue"name="option"value="update">Update</button></a>
				</form>	
				<a href="login.jsp"class="button blue">Back</a> <br>	
						
 				<form action="getApp.do" method="post">
					<input class="button blue" id="submit"type="submit" value="showApps" name="option"onMouseOut="showtable()">
				</form>
			
			</div>
<!-- 	<table  id="table"border=1 cellspacing=0 cellpadding=0 bordercolordark="#000000" bordercolorlight="#ffffff">
		<tr id="line" style="display:none"><td>Name:</td><td>Description</td><td>Rating</td></tr>

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
				document.write("<tr>");
				document.write("<td>"+array1[i]+"</td>");
				document.write("<td>"+array2[i]+"</td>");
				document.write("<td>"+array3[i]+"</td>");
				document.write("</tr>");
			}

	</script>  
		</table> -->
		
		
						<div style="text-align:center;clear:both;">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="assets/js/follow.js" type="text/javascript"></script>
</div>
			
</div>
    </body>
</html>