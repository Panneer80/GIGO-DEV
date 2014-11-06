<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="myImages/favicon.ico">

    <!-- Bootstrap core CSS -->
    <link href="myStyle/bootstrap/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="myStyle/gigo_home.css" rel="stylesheet">
    <link href="myStyle/style1.css" rel="stylesheet">

    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="myScripts/html5shiv.js"></script>
      <script src="myScripts/respond.min.js"></script>
    <![endif]--> 
<title>Documnets</title>
   
</head>
<body>


    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="gigo_home.jsp">Welcome to GiGo</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="gigo_home.jsp">Home</a></li>
            <% String role = (String)session.getAttribute( "userrole" ); %>
            <%  if ( role.equals("admin") ) {
        %>
            <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> HP-OO <b class="caret"></b> </a> 
            	<ul class="dropdown-menu"> 
            		<li><a href="http://10.203.98.66:8080/oo" target="_blank">Production LB</a></li>
            		<li class="divider"></li>  
            		<li><a href="http://10.203.101.137:8080/oo" target="_blank">Prod Node1</a></li>
            		<li class="divider"></li>  
            		<li><a href="http://10.203.101.138:8080/oo" target="_blank">Prod Node2</a></li> 
            		<li class="divider"></li>  
            		<li><a href="http://10.203.65.131:8080/oo" target="_blank">UAT Node 1</a></li> 
            		<li class="divider"></li>  
            		<li><a href="http://10.203.99.37:8080/PAS" target="_blank">UAT OO9</a></li>          		
            	</ul> 
            </li>
            <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> B2B WS <b class="caret"></b> </a> 
            	<ul class="dropdown-menu"> 
            		<li><a href="http://10.203.98.66:8001/B2B-SOAP/services/runFlow?wsdl" target="_blank">Production LB (SOAP-CUST)</a></li>
            		<li><a href="http://10.203.98.66:8080/PAS/services/WSCentralService?wsdl" target="_blank">Production LB (SOAP-HP)</a></li>
            		<li class="divider"></li>  
            		<li><a href="http://10.203.101.137:8001/B2B-SOAP/services/runFlow?wsdl" target="_blank">Prod Node1 WS (SOAP-CUST)</a></li>
            		<li><a href="http://10.203.101.137:8080/PAS/services/WSCentralService?wsdl" target="_blank">Prod Node1 WS (SOAP-HP)</a></li>
            		<li class="divider"></li>  
            		<li><a href="http://10.203.101.138:8001/B2B-SOAP/services/runFlow?wsdl" target="_blank">Prod Node2 WS (SOAP-CUST)</a></li> 
            		<li><a href="http://10.203.101.138:8080/PAS/services/WSCentralService?wsdl" target="_blank">Prod Node2 WS (SOAP-HP)</a></li>
            		<li class="divider"></li>  
            		<li><a href="http://10.203.65.131:8001/B2B-SOAP/services/runFlow?wsdl" target="_blank">UAT Node 1 (SOAP-CUST)</a></li> 
            		<li><a href="http://10.203.65.131:8080/PAS/services/WSCentralService?wsdl" target="_blank">UAT Node1 WS (SOAP-HP)</a></li>
            		<li class="divider"></li>  
            		<li><a href="http://10.203.99.37:8080/PAS/services/WSCentralService?wsdl" target="_blank">UAT OO9</a></li>          		
            	</ul> 
            </li>
                        <%  }    %>
            <li ><a href="Document.jsp">Documents</a></li>

            <li ><a href="GiGO Help.html">Help</a></li>
            <li ><a href="/GIGO-DEV">Logout</a></li>
            </ul>
          
        </div><!--/.nav-collapse -->
      </div>
 

<div id="slider">
  <a href="#" class="control_next">>></a>
  <a href="#" class="control_prev"><</a>
  <ul>
    <li> <img src="myImages/Slide1.JPG"></li>
    <li> <img src="myImages/Slide2.JPG"> </li>
    <li> <img src="myImages/Slide3.JPG"></li>
    <li> <img src="myImages/Slide4.JPG"></li>
    <li> <img src="myImages/Slide5.JPG"></li>

  </ul>  
</div>

<div class="slider_option">
  <input type="checkbox" id="checkbox">
  <label for="checkbox">Autoplay</label>
</div> 


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="myScripts/jquery-2.1.1.min.js"></script>
    <script src="myScripts/bootstrap.min.js"></script>
	<script src="myScripts/script.js"></script>
    <script>    
   
    
    
    
   
    </script>   
      
</body>
</html>