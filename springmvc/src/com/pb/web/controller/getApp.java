package com.pb.web.controller;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Stack;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;
import org.w3c.dom.ls.LSInput;

import com.mongodb.BasicDBObject;
import com.mongodb.Cursor;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.pb.entity.Account;
import com.pb.entity.App;

public class getApp extends AbstractController {
	private String successView;
	private String failView;
	private String table;
	
	public String getTable() {
		return table;
	}
	public void setTable(String table) {
		this.table = table;
	}
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
		
			String option=request.getParameter("option");

			Mongo m = new Mongo("localhost",27017);
			DB db = m.getDB("AppTable");
	
			DBCollection collection = db.getCollection("AppTable");
			Map<String ,Object> model=new HashMap<String,Object>();
			DBCursor cursor=collection.find();
			App app= new App();
			List<App> list =new ArrayList<>();
			while(cursor.hasNext()){
				app= new App();
				DBObject out=cursor.next();
				app.setName(out.get("Name").toString());
				app.setDescription(out.get("Description").toString());
				app.setRating(Integer.valueOf(out.get("Rating").toString()));
				list.add(app);
			}
			model.put("list", list);
			if(option.equals("delete")){
				return new ModelAndView(getSuccessView(),model);
			}
			else if(option.equals("update")){
				return new ModelAndView(getFailView(),model);
			}
			else{
				return new ModelAndView(getTable(),model);
			}
			
		}			
	}
