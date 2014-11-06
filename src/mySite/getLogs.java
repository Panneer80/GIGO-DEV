package mySite;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;  
import java.sql.*;  

import oracle.jdbc.driver.*;


/**
 * Servlet implementation class getLogs
 */
@WebServlet(description = "get B2B Logs from DB", urlPatterns = { "/getLogs" })
public class getLogs extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
          
String inc = request.getParameter("incident");  
String environment = request.getParameter("environ1");
String customer = request.getParameter("customer1");
String dburl;
String cust;
if (environment.equals("uat")){
		dburl = "jdbc:oracle:thin:@10.203.89.62:1521:BLRHPOODB10";
} else {
		dburl = "jdbc:oracle:thin:@10.203.101.115:1521:BLRHPOODB10";
}

if (customer.equals("Carillion")){
	cust = "Carillion";
} else {
	cust = "STORA";
}

try{  
	
Class.forName("oracle.jdbc.driver.OracleDriver");  

Connection con = DriverManager.getConnection(dburl,"hpoodbuser","hpoodbuser");  

StringBuilder query = new StringBuilder("select CUSTOMER_ID AS Customer,WIP_TICKET_ID,CST_TICKET_ID,VEN_TICKET_ID AS GATEWAY_ID,TR_DATE,TICKET_STATUS,TR_DIRECTION,TR_DATA AS Error_Log from GCC_B2B_LOG where (CST_TICKET_ID= '"+inc+"' OR WIP_TICKET_ID = '"+inc+"' OR VEN_TICKET_ID = '"+inc+"') AND CUSTOMER_ID = '"+cust+"' ORDER BY TR_DATE");	
PreparedStatement ps = con.prepareStatement(query.toString()); 

/*	PreparedStatement ps = con.prepareStatement("select CUSTOMER_ID AS Customer,WIP_TICKET_ID,CST_TICKET_ID,VEN_TICKET_ID AS GATEWAY_ID,TR_DATE,TICKET_STATUS,TR_DIRECTION,TR_DATA AS Error_Log from GCC_B2B_LOG where (CST_TICKET_ID=? OR WIP_TICKET_ID = ?) ORDER BY TR_DATE");  
	ps.setString(1,inc);  
	ps.setString(2,inc);  */	
        
out.print("<table width=50% border=1>");  
out.print("<caption>Result:</caption>");  

ResultSet rs=ps.executeQuery();  
              
/* Printing column names */  
ResultSetMetaData rsmd=rs.getMetaData();  
int total=rsmd.getColumnCount();  
out.print("<a href=gigo_home.jsp>Back to GiGo</a>");  
out.print("<tr>");  
for(int i=1;i<=total;i++)  
{  
out.print("<th>"+rsmd.getColumnName(i)+"</th>");  
}  
  
out.print("</tr>");  
              
/* Printing result */  
  
while(rs.next())  
{  
out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getTimestamp(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td></tr>");  
                  
}  
  
out.print("</table>");  
              
}catch (Exception e2) {e2.printStackTrace();}  
          
finally{out.close();}  
		}


	  
}
