package com.edu.test;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class FlowFilterOne implements Filter{

	@Override
	public void destroy() {
		System.out.println("destroy() 호출 ...... one");
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		System.out.println("doFilter() 호출 전 ...... one");
		arg2.doFilter(arg0, arg1);
		System.out.println("doFilter() 호출 후 ...... one");
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("init() 호출 ...... one");
	}
	
}
