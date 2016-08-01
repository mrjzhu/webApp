<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.ArrayList,java.util.HashMap,java.util.List,java.util.Map,com.mongodb.BasicDBObject,com.mongodb.DB,com.mongodb.DBCollection,com.mongodb.DBCursor,com.mongodb.DBObject,com.mongodb.Mongo,com.pb.entity.Account,com.pb.entity.App"%>
<%@ page import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
${error}<br>
<br>
		<a href="login.jsp">返回</a>
		<%
		 /* String username=request.getParameter("username");
		String userpassword=request.getParameter("password");
		out.print("用户名："+username+"<br>密码："+userpassword);
		
		Mongo m = new Mongo("localhost",27017);
		DB db = m.getDB("AppTable");
		DBCollection collection = db.getCollection("AppTable");
		DBCursor cursor=collection.find();
		App app= new App();
		List<App> list_all =new ArrayList<>();

		while(cursor.hasNext()){
			app= new App();
			DBObject x=cursor.next();
			app.setName(x.get("Name").toString());
			app.setDescription(x.get("Description").toString());
			app.setRating(Integer.valueOf(x.get("Rating").toString()));
			app.setPicture(x.get("Picture").toString());
			list_all.add(app);
		}
		Map<String ,Object> model=new HashMap<String,Object>();
		model.put("list_all", list_all);
		
		for(int i=0;i<list_all.size();i++){
			out.println("<p>"+list_all.get(i).getName()+"</p>");
			out.println("<p>"+list_all.get(i).getDescription()+"</p>");
			out.println("<p>"+list_all.get(i).getRating()+"</p>");
			out.println("<img src='"+"assets/images/"+list_all.get(i).getPicture()+"'/>");
		} */ 
		
		%>
		
</body>
</html>