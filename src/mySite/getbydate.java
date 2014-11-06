package mySite;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class getbydate
 */
@WebServlet("/getbydate")
public class getbydate extends HttpServlet {
   
	public void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
 
String start_date = request.getParameter("sdate");
String end_date = request.getParameter("edate");
String environment1 = request.getParameter("environ2");
String customer = request.getParameter("customer2");
String dburl;
String cust;
if (environment1.equals("uat1")){
		dburl = "jdbc:oracle:thin:@10.203.89.62:1521:BLRHPOODB10";
} else {
		dburl = "jdbc:oracle:thin:@10.203.101.115:1521:BLRHPOODB10";
}
if (customer.equals("Carillion")){
	cust = "Carillion";
}else {
	cust = "STORA";
}
try{  
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con = DriverManager.getConnection(dburl,"hpoodbuser","hpoodbuser");  
	
	StringBuilder query = new StringBuilder("select CUSTOMER_ID AS Customer,WIP_TICKET_ID,CST_TICKET_ID,VEN_TICKET_ID AS GATEWAY_ID,TR_DATE,TICKET_STATUS,TR_DIRECTION,TR_DATA AS Error_Log from GCC_B2B_LOG where (TR_DATE >= TO_DATE('"+start_date+" 00:00:01','YYYY-MM-DD HH24:MI:SS') AND TR_DATE <= TO_DATE('"+end_date+" 23:59:59','YYYY-MM-DD HH24:MI:SS')) AND TICKET_STATUS LIKE '%failed%' AND CUSTOMER_ID = '"+cust+"' AND ROWNUM <= 2000 ORDER BY TR_DATE");	
	PreparedStatement ps = con.prepareStatement(query.toString()); 
	
 /*   PreparedStatement ps = con.prepareStatement("select CUSTOMER_ID AS Customer,WIP_TICKET_ID,CST_TICKET_ID,VEN_TICKET_ID AS GATEWAY_ID,TR_DATE,TICKET_STATUS,TR_DIRECTION,TR_DATA AS Error_Log from GCC_B2B_LOG where (TR_DATE >= TO_DATE('? 00:00:01','YYYY-MM-DD HH24:MI:SS') AND TR_DATE <= TO_DATE('? 23:59:59','YYYY-MM-DD HH24:MI:SS')) AND TICKET_STATUS LIKE '%failed%' ORDER BY TR_DATE");  
	ps.setString(1,start_date);  
	ps.setString(2,end_date);	*/
  
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
