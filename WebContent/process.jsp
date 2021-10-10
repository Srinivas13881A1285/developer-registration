<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>

	<%
String firstName = request.getParameter("fname");
String lastName = request.getParameter("lname");
String companyName = request.getParameter("company");
String city = request.getParameter("city");
String phoneNumber = request.getParameter("phonenumber");
String country = request.getParameter("country");


Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/abcjobs","root","root");

Statement st = con.createStatement();
ResultSet rs;

int i = st.executeUpdate("insert into developers values ('" +firstName+ "','"+ lastName+ "','"+companyName+"','"+city+"','"+country+"','"+phoneNumber+"')");
		out.println("You are successfully registered");
%>


	<h1>Thank you</h1>