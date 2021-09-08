<!DOCTYPE html>
<html>
<head>
<style type="text/css">
*{
	margin:0;
	padding:0;
}

.table-box{
	margin:10px auto;
		
	
}
.tale tr{
	display:table;
	width:100%;
	margin:10px auto;
	font-family:sans-serif;
	background:transparent;
	padding:10px 0;
	color:#555;
	font-size:13px;
	box-shadow:0 1px 4px 0 rgba(0,0,50,0.3);
			
}
.tale th{
	display:table-cell;
	width:10%;
	text-align:center;
	padding:4px 0;
	font-size:16px;
	border-right:1px solid #d6d4d4;
	vertical-align:middle;
	background:Grey;
	box-shadow:none;
	opacity:0.7;
	color:black;
	font-weight:500;
border-right:none;

}
.tale td{
	display:table-cell;
	width:10%;
	text-align:center;
	padding:4px 0;
	border-right:1px solid transparent;
	vertical-align:middle;
	color:black;
	background:white;
	box-shadow:none;
font-size:14px;
	font-weight:400;
border-right:none;

}
ul{
float:right;
list-style-type:none;
margin-top:20px;
}
ul li{
display :inline-block;
}
ul li a{
text-decoration:none;

color:black;
padding: 5px 20px;
border:1px solid transparent;
}

ul li a:hover{
background-color:black;
color:white;
}
.tab{
max-width:1200px;
margin:auto;
}
ul li.active a{
background-color:black;
color:white;
}




</style>

</head>
<body class="tale"> 
 <div class="table-box" >

 
<%@ page language='java' import='java.sql.*' %> 

 
<%  
    try 
 
     {	

response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");

response.setHeader("Pragma","no-cache");        
response.setDateHeader("Expire", 0);
String t1=(String)session.getAttribute("session-id");
	


	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
 
	Connection cn=DriverManager.getConnection("jdbc:odbc:sha"); 
	Statement stmt=cn.createStatement();
 
	String str="select FullName,Email,Mobile,Address,City,Password from register where Email='"+t1+"'"; 
	ResultSet rs=stmt.executeQuery(str); 
  out.println("<table width='100%'>"); 

out.println("<tr><th>Full Name</th><th>Email</th><th>Mobile</th><th>Address</th><th>City</th><th>Password</th></tr>"); 
	

	while(rs.next()) 
 
	 { 
		out.println("<tr><td>"+rs.getString(1)+"</td>");
		
			out.println("<td>"+rs.getString(2)+"</td>"); 
	         
	         out.println("<td>"+rs.getString(3)+"</td>"); 
	         out.println("<td>"+rs.getString(4)+"</td>"); 
	         out.println("<td>"+rs.getString(5)+"</td>"); 
	         out.println("<td>"+rs.getString(6)+"</td></tr>"); 
	         	          
		out.println("</table>");
	 }
stmt.close();
cn.close();

	}
		catch(Exception e)
{
}
 
%>


<div class="tab">
<ul>
<li><a href="update.html">Update</a></li>
<li><a href="menu.jsp">Back</a></li>
</ul>
</div>

 
</body> 
</html>