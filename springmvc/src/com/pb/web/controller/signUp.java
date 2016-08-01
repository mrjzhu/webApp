package com.pb.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.Mongo;
import com.pb.entity.Account;

public class signUp extends AbstractController {
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
		String cardNo=request.getParameter("cardNo");
		String password=request.getParameter("password");
		String password2=request.getParameter("password2");
		Mongo m = new Mongo("localhost",27017);
		DB db = m.getDB("new_test_db");

		DBCollection collection = db.getCollection("new_test_col");
		BasicDBObject query = new BasicDBObject();
		query.put("cardNo", cardNo);
		DBCursor x=collection.find(query);
		Map<String ,Object> model=new HashMap<String,Object>();
		if(x.hasNext()){
			model.put("error", "exist");
			return new ModelAndView(getFailView(),model);
		}
		else{
			if(!password.equals(password2)){
				model.put("error", "double");
				return new ModelAndView(getFailView(),model); 
			}
			query.put("password", password);
			collection.insert(query);
			Account account =getAccount(cardNo,password);
			model.put("account", account);
			model.put("error", "successful");
			return new ModelAndView(getSuccessView(),model);
		}
			
	}
	public Account getAccount(String cardNo,String password){
			Account account =new Account();
			account.setCardNo(cardNo);
			account.setPassword(password);
			account.setBalance(88.8f);
			return account;
	}

}
