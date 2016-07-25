<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="assets/css/style_c.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://www.modernizr.com/downloads/modernizr-latest.js"></script>
<script type="text/javascript" src="assets/js/placeholder.js"></script>
</head>
<body>
 <script language="javascript"> 
    function delcfm() { 
        if (!confirm("确认创建？")) { 
            window.event.returnValue = false; 
        } 
    } 
    function Juge(myform){
    	if (myform.Description.value==""||myform.Rating.value==""||myform.Name.value==""){
    		alert("未输入完整！！");
    		myform.Description.focus();
    		return false;
    	}
    }
</script>
<form id="slick-login"action="create.do" method="post" onsubmit="return Juge(this)">
	NEW APP<br>
				<label for="Name">Name:</label><input type="text" name="Name" class="placeholder" placeholder="AppName">
				<label for="Name">Desc:</label><input type="text" name="Description" class="placeholder" placeholder="Description">
				<label for="Name">Pict:</label><input type="text" name="Picture" class="placeholder" placeholder="Pic_url">
			
				<label for="Name">Rating:</label><input type="text" name="Rating" class="placeholder" placeholder="Rating(only number)" onKeypress="if (event.keyCode < 48 || event.keyCode > 57) event.returnValue = false;">
		
		
			<input type="submit" value="Apply" onClick="delcfm()">
			<a href="adminPage.jsp"><input type="button" value="cancel"></input></a>
		
	</form>

</body>
</html>