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

public class deleteApp extends AbstractController {
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

		String Name=request.getParameter("Name");
		DBCollection collection = db.getCollection("AppTable");
		BasicDBObject query = new BasicDBObject();
		query.put("Name", Name);
		Map<String ,Object> model=new HashMap<String,Object>();
		if(collection.remove(query) != null){
			model.put("error", "Delete Successfully!!!");
			return new ModelAndView(getSuccessView(),model);
		}
		else{
			model.put("error", "fail!!!!");
			return new ModelAndView(getFailView(),model);
		}
		}		
	}
