<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String title=request.getParameter("rtitle");
String evaluation=request.getParameter("revaluation");
String humansub=request.getParameter("rhumansub");
String humansubcat=request.getParameter("rhumansubcat");
String studytype=request.getParameter("rstudytype");
String pcount=request.getParameter("rpcount");
String allage=request.getParameter("rallage");
String avgage=request.getParameter("ravgage");
String agedownrange=request.getParameter("ragedownrange");
String ageuprange=request.getParameter("rageuprange");
String health=request.getParameter("rhealth");
String educount=request.getParameter("reducount");
String edugender=request.getParameter("redugender");
String eduavgage=request.getParameter("reduavgage");
String edulevel=request.getParameter("redulevel");
String gencount=request.getParameter("rgencount");
String genavgage=request.getParameter("rgenavgage");
String gengender=request.getParameter("rgengender");

if(submit){
	try{
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sys");
	PreparedStatement ps = conn.prepareStatement("insert into paperdata values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,title);
	ps.setString(2,evaluation);
	ps.setString(3,humansub);
	ps.setString(4,humansubcat);
	ps.setString(5,studytype);
	ps.setString(6,pcount);
	ps.setString(7,allage);
	ps.setString(8,avgage);
	ps.setString(9,agedownrange);
	ps.setString(10,ageuprange);
	ps.setString(11,health);
	ps.setString(12,educount);
	ps.setString(13,edugender);
	ps.setString(14,eduavgage);
	ps.setString(15,edulevel);
	ps.setString(16,gencount);
	ps.setString(17,genavgage);
	ps.setString(18,gengender);	
	
	int x=ps.executeQuery();
	if(x!=0){
		out.print("Record added to database successfully...");
	}else{
		out.print("Something went wrong...");
	}
	}catch(Exception e){
		out.print(e);
	}
}else{
	out.print("Error 404");
}


%>