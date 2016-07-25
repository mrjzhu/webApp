<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
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
        <link rel="stylesheet" type="text/css" href="assets/css/style3.css" />
		<script type="text/javascript" src="assets/js/modernizr.custom.29473.js"></script>
    </head>

    <body>
    
        <div class="container">
			<header>
				<h1>The Main Page <span>show App</span></h1>
				<h2>Item Top App &amp; Animations</h2>
			</header>
						<div style="text-align:center;clear:both;">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
	<a href="javascript:history.back(-1)" style="text-decoration:none;color:black;">
	<button style="-webkit-border-radius: 39;
  -moz-border-radius: 39;
  border-radius: 39px;
  text-shadow: 4px 2px 2px #0a070a;
  -webkit-box-shadow: 6px 4px 5px #ada4ad;
  -moz-box-shadow: 6px 4px 5px #ada4ad;
  box-shadow: 6px 4px 5px #ada4ad;
  font-family: Georgia;
  color: #cfcbcf;
  font-size: 19px;
  background: #7971a8;
  padding: 5px 10px 5px 10px;
  text-decoration: none;">Back</button></a>

<script>
var array = new Array();
<c:forEach items="${list_self}" var="temp">   
array.push("${temp.getName()}");
</c:forEach>

var array2 = new Array();
<c:forEach items="${list_self}" var="temp1">   
array2.push("${temp1.getDescription()}");
</c:forEach>

var array3 = new Array();
<c:forEach items="${list_self}" var="temp2">   
array3.push("${temp2.getRating()}");
</c:forEach>

document.write("<header><h2>Name:<span>"+array[0]+"<span></h2>");
document.write("<h2>Description:"+array2[0]+"</h2>");
document.write("<h2>Rating✨:"+array3[0]+"</h2></header>");
</script>



			<section class="ff-container">
			
				<!-- <input id="select-type-all" name="radio-set-1" type="radio" class="ff-selector-type-all" checked="checked" />
				<label for="select-type-all" class="ff-label-type-all">All</label> -->
				
				<input id="select-type-1" name="radio-set-1" type="radio" class="ff-selector-type-1" checked="checked"/>
				<label for="select-type-1" class="ff-label-type-1">Recommendation</label>
				
				
				
				
				
				<script>
					var array = new Array();
					<c:forEach items="${list}" var="temp">   
					array.push("${temp.getName()}");
					</c:forEach>
					
					var array2 = new Array();
					<c:forEach items="${list}" var="temp1">   
					array2.push("${temp1.getDescription()}");
					</c:forEach>
					
					var array3 = new Array();
					<c:forEach items="${list}" var="temp3">   
					array3.push("${temp3.getPicture()}");
					</c:forEach>
					
					var array4 = new Array();
					<c:forEach items="${list}" var="temp4">   
					array4.push("${temp4.getRating()}");
					</c:forEach>
						
					
					var size1="${list.size()}"
				</script> 
				
				
				<div class="clr"></div>
				
				<ul class="ff-items">
							

				<script>
				for(var i=0;i<size1;i++){
					var num=i+1;
					if((num-1)%3==0){
						document.write("<hr>");
					}
					document.write("<form name='form"+num+"'style='display:none' action='recommend.do' method='post'><input type='text' name='Rating' value='"+array4[i]+"'><input type='text' name='Name' value='"+array[i]+"'></form>");

					document.write("<li class='ff-item-type-1'>");
					document.write("<p>"+num+"."+array[i]+"</p>");
					document.write("<form><a href='javascript:document.form"+num+".submit();'>");
					document.write("<span>"+array2[i]+"</span>");
					document.write("<img src='"+"assets/images/"+array3[i]+"'/></a></form></li>")
				}
				</script>
		
					
								
				</ul>

				
			</section>
        </div>
       

	</form>
    </body>
</html>