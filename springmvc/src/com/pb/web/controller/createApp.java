package com.pb.web.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;

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

public class createApp extends AbstractController {
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
		Stack<float[][]> array_top5 = new Stack<float[][]>();	

			String Name=request.getParameter("Name");
			String Description=request.getParameter("Description");
			int Rating=Integer.valueOf(request.getParameter("Rating"));
			String Picture=request.getParameter("Picture");
			// TODO Auto-generated method stub
			Mongo m = new Mongo("localhost",27017);
			DB db = m.getDB("AppTable");
	
			DBCollection collection = db.getCollection("AppTable");
			BasicDBObject obj = new BasicDBObject();
			Map<String ,Object> model=new HashMap<String,Object>();
			obj.put("Name", Name);
			obj.put("Description", Description);
			obj.put("Rating", Rating);
			obj.put("Picture", Picture);
			if(collection.insert(obj) != null){
				model.put("error", "Successfully!!!");
				return new ModelAndView(getSuccessView(),model);
			}
			else{
				model.put("error", "fail!!!!");
				return new ModelAndView(getFailView(),model);
			}
		}			
	}
