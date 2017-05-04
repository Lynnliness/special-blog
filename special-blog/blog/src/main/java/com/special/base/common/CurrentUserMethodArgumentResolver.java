/*
 * Project: Lynnliness
 * 
 * File Created at 2017年1月9日
 * 
 * Copyright 2016 CMCC Corporation Limited.
 * All rights reserved.
 *
 * This software is the confidential and proprietary information of
 * ZYHY Company. ("Confidential Information").  You shall not
 * disclose such Confidential Information and shall use it only in
 * accordance with the terms of the license.
 */
package com.special.base.common;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

/**
 * @Type CurrentUserMethodArgumentResolver.java
 * @Desc 用于绑定@CurrentUser的方法参数解析器
 * @author Lynnliness
 * @date 2017年1月9日 下午8:02:22
 * @version
 */
public class CurrentUserMethodArgumentResolver implements HandlerMethodArgumentResolver {

	public CurrentUserMethodArgumentResolver() {
		super();
	}

	@Override
	public boolean supportsParameter(MethodParameter parameter) {
		if (parameter.hasParameterAnnotation(CurrentUser.class)) {
			return true;
		}
		return false;
	}

	@Override
	public Object resolveArgument(MethodParameter parameter, ModelAndViewContainer mavContainer,
			NativeWebRequest webRequest, WebDataBinderFactory binderFactory) throws Exception {
		HttpServletRequest request = (HttpServletRequest) webRequest.getNativeRequest();
		Object userBind = (Object) request.getSession().getAttribute(Constants.CURRENT_USER_BIND);
		return userBind;
	}

}

/**
 * Revision history
 * -------------------------------------------------------------------------
 * 
 * Date Author Note
 * -------------------------------------------------------------------------
 * 2017年1月9日 ChenQiong create
 */
