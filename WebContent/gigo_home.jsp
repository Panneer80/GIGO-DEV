<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="GIGO">
    <meta name="author" content="Panneer">
    <link rel="shortcut icon" href="myImages/favicon.ico">

    <title>GiGo home</title>

    <!-- Bootstrap core CSS -->
    <link href="myStyle/bootstrap/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="myStyle/gigo_home.css" rel="stylesheet">

    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="myScripts/html5shiv.js"></script>
      <script src="myScripts/respond.min.js"></script>
    <![endif]-->    
  </head>

  <body>


<% String role = (String)session.getAttribute( "userrole" ); %>
  <%  if ( role != null ) {
        %>
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Welcome to GiGo</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
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

    <div class="container">
	<div class="note row">
		<div class="col-md-6 text-left text-muted"><small>
		This web application is created to help teams to search transactions in B2B.      </small>
  		</div>
		<div class="col-md-6 text-right text-muted">
			<a href="mailto:panneer.selvam@wipro.com"><div class="glyphicon glyphicon-user"> panneer.selvam@wipro.com</div></a>
		</div>			
	</div>
	<div class="row">
	<div class="col-md-3 col-md-offset-1">
	<div class="options">
	<h4>Search Transactions</h4>
	<ul class="list-unstyled">
	<li><input id="opt1" type="radio" name="option" value="tktnum"> Search with ticket number</li>
	<li><input id="opt2" type="radio" name="option" value="daterange"> Search using date range</li>
	<li><input id="opt3" type="radio" name="option" value="helptext"> About Logs</li>
	</ul>
	</div>
	</div>
	<div class="col-md-6 " id="oo_flow">
	<img src="myImages/image4.png" class="img-thumbnail">
	</div>
	<div class="col-md-4">
		<section class = "search1">
		<div class="text-center">
		<h4><strong>search</strong><small> with ticket number...</small><span class="glyphicon glyphicon-search"></span></h4>
		</div>
		<form  action="getLogs" role="form">  
		<div class="form-group">
		<label for="tkt_num">Ticket Number</label>
  		<input type="text" class="form-control" name="incident" placeholder="Ticket Number">
		<label for="env">System</label>
  		<select class ="form-control" name ="environ1">
  			<option value="prod">PROD</option>
  			<option value="uat">UAT</option>
		</select>
		<label for="env">Customer</label>
  		<select class ="form-control" name ="customer1">
  			<option value="Carillion">Carillion</option>
  			<option value="StoraEnso">StoraEnso</option>
		</select>
		</div>
		<div class="form-group">
		<button class="btn btn-primary btn-block" id="message-button" type="submit">GiGo</button>
		<div class = help1>
		<blink>Use any of these: Wipro Ticket # | Customer Ticket # | Gateway ID</blink>
		</div>
		</div>
		</form>
	</section>
	</div>
	<div class="col-md-4 col-md-pull-4">
	<section class = "search2">
	<div class="text-center">
	<h4><strong>search</strong> <small>using date range...</small><span class="glyphicon glyphicon-search"></span></h4>
		</div>
		<form action="getbydate" role="form"> 
		<div class ="form-group">
		<label for="date">Start Date & End Date</label>
		<input class="form-control" type="date" name="sdate" placeholder="yyyy-mm-dd">
		<input class="form-control" type="date" name="edate" placeholder="yyyy-mm-dd">
		<label for="env">System</label>
		<select class="form-control" name ="environ2" >
  				<option value="prod1">PROD</option>
  				<option value="uat1">UAT</option>
			</select>
			<label for="env">Customer</label>
  		<select class ="form-control" name ="customer2">
  			<option value="Carillion">Carillion</option>
  			<option value="StoraEnso">StoraEnso</option>
		</select>
			</div>
			<div class="form-group">
			<input class="btn btn-primary btn-block" type = "submit" value="GiGo"/>
			<div class = help2>
				<blink>Lists only failed transactions. Limited to 2000 records.</blink>
			</div>
			</div>
		</form>
	</section>
	</div>
	</div>
    </div><!-- /.container -->
<div class="container" id="text1">
   <h3>About Transaction Logs</h3>

   <div class="row">
   <div id="message" class="col-md-12">         
      </div>

      <div class="col-md-6"  >
         <p>B2B transactions details are getting stored in Oracle database for trouble shooting and reporting purpose. GiGo logs provides the following transactions details.
<br>
1.	Wipro Ticket ID<br>
2.	Customer Ticket ID<br>
3.	Transaction Date & Time<br>
4.	Error Log<br>
5.	Source data received with the transaction<br>
6.	Transaction Status<br>
         </p>
      </div>
      <div class="col-md-6" >
         <p>Search with date range option gives you the report of failed transactions for the given date. And Search with ticket number option gives us all the transactions related to that particular ticket or Gateway ID.
         </p>

  
   </div>
</div>
</div>
    <%
    } else {
        %>
                <P>Goodbye, world
                <script type="text/javascript">
            window.location.href = "/GIGO-DEV";
        </script>
        <%
    }
%>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="myScripts/jquery-2.1.1.min.js"></script>
    <script src="myScripts/bootstrap.min.js"></script>
    <script>    
    $(document).ready(function(){
    	 $("#opt1").click(function() {
    		$(".search1").show(500);
    		$(".search2").hide(50);
    		$("#text1").hide(500);
    		$("#oo_flow").hide(500);
    		
    	});
    	 $("#opt2").click(function() {
     		$(".search2").show(500);
     		$(".search1").hide(50);
     		$("#text1").hide(500);
     		$("#oo_flow").hide(500);
     	});
    	 	$("#opt3").click(function() {
      		$("#text1").show(500);
      		$(".search1").hide(50);
      		$(".search2").hide(50);
      		$("#oo_flow").show(500);
      	});
    	 	 
    });
    </script>

  </body>
</html>
