
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="Content-Type" content="text/html; charset=GB18030">
     
        <title>Al3xis</title>
        
        <!-- The stylesheet -->
        <link rel="stylesheet" href="assets/css/signup.css" />
        
        <!--[if lt IE 9]>
          <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    
    <body>
    	<script language="javascript"> 
    		function delcfm() { 
        		if (!confirm("È·ÈÏ×¢²á£¿")) { 
         		   window.event.returnValue = false; 
       		 	} 
    		} 
		</script>

        <div id="main">
        	
        	<h1>Sign up, it's FREE!</h1>
        	
        	<form method="post" action="signUp.do">
        		
        		<div class="row email">
	    			<input type="text" id="cardNo" name="cardNo" placeholder="cardNo" />
        		</div>
        		
        		<div class="row pass">
        			<input type="password" id="password" name="password" placeholder="Password" />
        		</div>
        		
        		<div class="row pass">
        			<input type="password" id="password2" name="password2" placeholder="Password (repeat)" disabled="true" />
        		</div>
        		
        		<!-- The rotating arrow -->
        		<div class="arrowCap"></div>
        		<div class="arrow"></div>
        		
        		<p class="meterText">Password Meter</p>        		
    		    <input type="submit" value="Sign Up" onClick="delcfm()">
                <a href="login.jsp"><input type="button"value="Back"></a>
        		
        		
        	</form>
        </div>
        
        <footer>
	        
            <a class="al3xis"> a form with password meter and pass validation </a>
        </footer>
        
        <!-- JavaScript includes - jQuery, the complexify plugin and our own script.js -->
		<script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
        <script src="assets/js/signup.js" ></script>
        <script src="assets/js/complexify.js" ></script>

		     
    </body>
</html>