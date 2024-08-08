<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	String createQuery = "CREATE TABLE table_user (name varchar(100), email varchar(100) PRIMARY KEY,mobileNumber bigint,securityQuestion varchar(200),answer varchar(200),password varchar(100),address varchar(500),city varchar(100),state varchar(100),country varchar(100))";
	System.out.println(createQuery);
	st.execute(createQuery);
	System.out.println("Table Created");
	con.close();
}
catch(Exception e){
	System.out.println(e);
}
%>