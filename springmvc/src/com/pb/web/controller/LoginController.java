package com.pb.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.pb.entity.Account;
import com.pb.entity.App;

public class LoginController extends AbstractController {
	private String successView;
	private String failView;
	private String admin;
	
	public String getSuccessView() {
		return successView;
	}
	public void setSuccessView(String successView) {
		this.successView = successView;
	}
	public String getFailView() {
		return failView;
	}
	public void setFailView(String failView) {
		this.failView = failView;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		
		// TODO Auto-generated method stub
		String cardNo=request.getParameter("cardNo");
		String password=request.getParameter("password");
		if(cardNo.equals("admin")&password.equals("admin")){
			return new ModelAndView(getAdmin());
		}
		
		Account account =getAccount(cardNo,password);
		Map<String ,Object> model=new HashMap<String,Object>();
		if(account !=null){
			Mongo m = new Mongo("localhost",27017);
			DB db = m.getDB("AppTable");
	
			DBCollection collection = db.getCollection("AppTable");
			DBCursor cursor=collection.find();
			App app= new App();
			List<App> list_all =new ArrayList<>();
			while(cursor.hasNext()){
				app= new App();
				DBObject out=cursor.next();
				app.setName(out.get("Name").toString());
				app.setDescription(out.get("Description").toString());
				app.setRating(Integer.valueOf(out.get("Rating").toString()));
				app.setPicture(out.get("Picture").toString());
				list_all.add(app);
			}
			model.put("list_all", list_all);
			
			
			BasicDBObject query = new BasicDBObject();
			query.put("Rating", -1);
			cursor = collection.find().sort(query).limit(5);
			List<App> list_top5=new ArrayList<>();
			while(cursor.hasNext()){
				app= new App();
				DBObject out=cursor.next();
				app.setName(out.get("Name").toString());
				app.setDescription(out.get("Description").toString());				
				app.setRating(Integer.valueOf(out.get("Rating").toString()));
				app.setPicture(out.get("Picture").toString());
				list_top5.add(app);
			}
			model.put("list_top5", list_top5);
			
			
			return new ModelAndView(getSuccessView(),model);
		}else{
			model.put("error", "账号错误");
			return new ModelAndView(getFailView(),model);
		}		
	}
	public Account getAccount(String cardNo,String password){
		Mongo m = new Mongo("localhost",27017);
		DB db = m.getDB("new_test_db");

		DBCollection collection = db.getCollection("new_test_col");
		BasicDBObject query = new BasicDBObject();
		query.put("cardNo", cardNo);
		query.put("password", password);
		DBCursor x=collection.find(query);
		if(x.hasNext()){
			Account account =new Account();
			account.setCardNo(cardNo);
			account.setPassword(password);
			account.setBalance(88.8f);
			return account;
		}
		else return null;
		

	}

}
