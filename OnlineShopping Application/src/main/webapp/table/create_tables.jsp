<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	String createQuery1 = "CREATE TABLE table_user (name varchar(100), email varchar(100) PRIMARY KEY,mobileNumber bigint,securityQuestion varchar(200),answer varchar(200),password varchar(100),address varchar(500),city varchar(100),state varchar(100),country varchar(100))";
	System.out.println(createQuery1);
	st.execute(createQuery1);
	String createQuery2= "CREATE TABLE cart (email VARCHAR(100) DEFAULT NULL, product_id INT DEFAULT NULL, quantity INT DEFAULT NULL, price INT DEFAULT NULL, total INT DEFAULT NULL, address VARCHAR(500) DEFAULT NULL, city VARCHAR(100) DEFAULT NULL, state VARCHAR(100) DEFAULT NULL, country VARCHAR(100) DEFAULT NULL, mobileNumber BIGINT DEFAULT NULL, orderDate VARCHAR(100) DEFAULT NULL, deliveryDate VARCHAR(100) DEFAULT NULL, paymentMethod VARCHAR(100) DEFAULT NULL, transactionID VARCHAR(100) DEFAULT NULL, status VARCHAR(10) DEFAULT NULL)";
	System.out.println(createQuery2);
	st.execute(createQuery2);
	String createQuery3= "CREATE TABLE message (id INT NOT NULL AUTO_INCREMENT, email VARCHAR(100) DEFAULT NULL, subject VARCHAR(200) DEFAULT NULL, body VARCHAR(1000) DEFAULT NULL, PRIMARY KEY (id))";
	System.out.println(createQuery3);
	st.execute(createQuery3);
	String createQuery4= "CREATE TABLE product (id INT DEFAULT NULL, name VARCHAR(500) DEFAULT NULL, category VARCHAR(200) DEFAULT NULL, price INT DEFAULT NULL, active VARCHAR(10) DEFAULT NULL)";
	System.out.println(createQuery4);
	st.execute(createQuery4);
	System.out.println("Table Created");
	con.close();
}
catch(Exception e){
	System.out.println(e);
}
%>
