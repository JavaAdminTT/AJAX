package com.seyong.myajax;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.seyong.mybean.User;

public class JsonDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		response.setContentType("text/html;charset=utf-8");
		User user = new User("张衡", 14, "man");
		
		Gson gson = new Gson();
		String json = gson.toJson(user);
		
		System.out.println(json);
		
		System.out.println("id="+request.getParameter("id")+"...pid="+request.getParameter("pid"));
/*		User userJson = gson.fromJson(json, User.class);
		System.out.println(userJson);*/
		
		response.getWriter().write(json);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
