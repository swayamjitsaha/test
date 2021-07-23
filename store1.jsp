<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

		<%
		String title=request.getParameter("rtitle");
		String evaluation=request.getParameter("revaluation");
		String humansub=request.getParameter("rhumansub");
		String humansubcat=request.getParameter("rhumansubcat");

out.println(title+evaluation);
try
		{
			Connection connection = null;
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "sys");
			Statement statement = connection.createStatement();
			String command = "INSERT into paperdata(title,evaluation,humansub,shumansubcat,studytype,pcount,allage,avgage,agedownrange,ageuprange,health,educount,edugender,eduavgage,edulevel,gencount),genavgage,gengender)values('"+rtitle+"','"+revaluation+"','"+rhumansub+"','"+rhumansubcat+"','"+rstudytype+"','"+rpcount+"','"+rallage+"','"+ravgage+"','"+ragedownrange+"','"+rageuprange+"','"+rhealth+"','"+reducount+"','"+redugender+"','"+reduavgage+"','"+redulevel+"','"+rgencount+"','"+rgenavgage+"','"+rgengender+"')";
            statement.executeUpdate(command);
			out.println("Data is successfully inserted!");
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
		%>
    