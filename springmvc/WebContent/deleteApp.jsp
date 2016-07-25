<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
	 <script language="javascript">
		window.onload=function(){
			//;
			docuemnt.getElementById('refresh').onclick();
			alert(" ");
		}
	</script>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030" >
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<link rel="stylesheet" type="text/css" href="assets/css/style_select.css" />
		<script src="assets/js/modernizr.custom.63321.js"></script>
	</head>
	<body >
		<script language="javascript"> 
    function delcfm() { 
        if (!confirm("确认执行操作？")) { 
            window.event.returnValue = false; 
        } 
    } 
    function getVal(){
    	var a=document.getElementById("update");
    	document.getElementById("text1").value=a.options[a.selectedIndex].text;
    }
    function Juge(myform){
    	if (myform.Description.value==""||myform.Rating.value==""||myform.Name.value==""){
    		alert("请输入完整");
    		myform.Description.focus();
    		return false;
    	}
    }
</script>
		<div class="container">			
			<header class="clearfix">
				<h1>Admin<span> For Delete</span></h1>
				
			</header>
			<section class="main clearfix">
				<div class="fleft">
				</div>
				<form action="delete.do" method="post" onsubmit="alert('Complete!')">
				<div class="fleft">
					<select id="cd-dropdown" class="cd-select" name="Name">
						<option value="-1" selected>please choose to delete...</option>
						<script>
		
							var array = new Array();
							<c:forEach items="${list}" var="temp">   
							array.push("${temp.getName()}");
							</c:forEach>
							var size="${list.size()}";
								for(var i=0;i<size;i++){
									document.write("<option value='"+array[i]+"'>"+array[i]+"</option>");
								}
						</script>
					</select>
					<input type="submit" value="Delete" onClick="delcfm()">
					<a href="adminPage.jsp"><input type="button" value="cancel"></input></a>	
					
				</form>
				</div>
			</section>
		</div><!-- /container -->
		
		
		<hr>
		

<form action="getApp.do" method="post" >
		<a href="deleteApp.jsp"><button id="button1" value="delete" name="option">刷新</button></a>
		</form>
		<script type="text/javascript" src="http://libs.useso.com/js/jquery/1.8.3/jquery.min.js"></script>
		<script type="text/javascript" src="assets/js/jquery.dropdown.js"></script>
		<script type="text/javascript">
			
			$( function() {
				
				$( '#cd-dropdown' ).dropdown( {
					gutter : 5,
					delay : 0,
					random : true
				} );

			});

		</script>
	</body>
</html>
