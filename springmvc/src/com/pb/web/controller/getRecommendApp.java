package com.pb.web.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.mongodb.BasicDBObject;
import com.mongodb.Cursor;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.pb.entity.Account;
import com.pb.entity.App;

public class getRecommendApp extends AbstractController {
	private String successView;
	private String failView;
	
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

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		
		// TODO Auto-generated method stub
		Mongo m = new Mongo("localhost",27017);
		DB db = m.getDB("AppTable");

		String Name= request.getParameter("Name");
		int Rating= Integer.valueOf(request.getParameter("Rating"));
		
		DBCollection collection = db.getCollection("AppTable");
		
		BasicDBObject query = new BasicDBObject("Rating", new BasicDBObject("$gte", Rating));
		DBCursor cursor = collection.find(query);
		App app= new App();
		List<App> list=new ArrayList<>();
		while(cursor.hasNext()){
			app= new App();
			DBObject out=cursor.next();
			app.setName(out.get("Name").toString());
			app.setDescription(out.get("Description").toString());
			app.setRating(Integer.valueOf(out.get("Rating").toString()));
			app.setPicture(out.get("Picture").toString());
			list.add(app);
		}
	    Map<String ,Object> model=new HashMap<String,Object>();
		model.put("list", list);
		
		
		query = new BasicDBObject("Name",Name);
		cursor = collection.find(query);
		List<App> list_self=new ArrayList<>();
		while(cursor.hasNext()){
			app= new App();
			DBObject out=cursor.next();
			app.setName(out.get("Name").toString());
			app.setDescription(out.get("Description").toString());
			app.setRating(Integer.valueOf(out.get("Rating").toString()));
			list_self.add(app);
		}
		model.put("list_self", list_self);
		
		return new ModelAndView(getSuccessView(),model);
		}		
	}
