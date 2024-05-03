<%@ page import="com.DbConnection" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Base64" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table
{
//border-collapse:collapse;
width:100%;
}
tr,td
{
padding:8px;
text-align:left;
border-bottom: 1px solid #ddd;
border: 2px solid balck;
}
th
{
background-color: #f2f2f2;
}

</style>
</head>
<body>
<% Connection con=DbConnection.connect();
//int acc=Integer.parseInt(request.getParameter("Mobile_NO"));
PreparedStatement st;
st=con.prepareStatement("select * from  address");
//st.setInt(1,acc);
ResultSet rs=st.executeQuery();


%>
<table border="3">
<thead>
  <tr>
    <td>Customer_id</td>
    <td>FName</td>
    <td>LName</td>	
	<td>Email</td>
    <td>Address1</td>   
    <td>Address2</td>   
    <td>City</td>
  
      <td>Zip_code</td>
      

    
    <td>Delete</td>
   
  </tr>
  </thead>
  <% while(rs.next()){ %>
  <tr>
    <td><%=rs.getInt(1)%></td>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    <td><%=rs.getString(4)%></td>
	<td><%=rs.getString(5)%></td>
	<td><%=rs.getString(6)%></td>
	<td><%=rs.getString(7)%></td>
	
	<td><%=rs.getInt(8)%></td>
	
    
   	 
   	<td><a href="delete.jsp?Id=<%=rs.getInt(1)%> ">delete</a></td> 
   
  </tr>
  <% }%>
</table>
<div>
  <a href="operation1.html" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">Back</a>
              
                </div>
</body>
</html>