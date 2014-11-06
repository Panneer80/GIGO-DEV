<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%
   session.invalidate(); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="myImages/favicon.ico">

    <title>GiGo Login</title>

    <!-- Bootstrap core CSS -->
    <link href="myStyle/bootstrap/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="myStyle/gigo_login.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="myScripts/html5shiv.js"></script>
      <script src="myScripts/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">
	<div class="panel panel-primary" id="login_panel">
	<div class="panel-heading">
	<h3 class="panel-title">Welcome to GiGo</h3>
	</div>
  <div class="panel-body">
      <form class="form-signin" role="form" method="post" action="login_servlet">
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="text" class="form-control" name="login_name" placeholder="Username" required autofocus>
        <input type="password" class="form-control" name="password" placeholder="Password" required>
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>
      </div>
	</div>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="myScripts/jquery.min.js"></script>
    <script src="myScripts/bootstrap.min.js"></script>
  </body>
</html>
