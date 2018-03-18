package com.usc.user.listener;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.usc.user.utils.MySessionContext;

public class SessionListener implements HttpSessionListener{

	private MySessionContext myc=MySessionContext.getInstance();
	public void sessionCreated(HttpSessionEvent httpSessionEvent) {
		// TODO Auto-generated method stub
		myc.AddSession(httpSessionEvent.getSession());
	}

	public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
		// TODO Auto-generated method stub
		HttpSession session = httpSessionEvent.getSession();
		myc.DelSession(session);
	}

}
