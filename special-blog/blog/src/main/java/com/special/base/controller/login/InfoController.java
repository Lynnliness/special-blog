/*
 * Project: blog
 * 
 * File Created at 2017年5月15日
 * 
 * Copyright 2016 CMCC Corporation Limited.
 * All rights reserved.
 *
 * This software is the confidential and proprietary information of
 * ZYHY Company. ("Confidential Information").  You shall not
 * disclose such Confidential Information and shall use it only in
 * accordance with the terms of the license.
 */
package com.special.base.controller.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.special.base.controller.BaseController;

/**
 * @Type InfoController.java
 * @Desc 
 * @author Zxs
 * @date 2017年5月15日 下午2:36:51
 * @version 
 */
@Controller
@RequestMapping(value = "")
public class InfoController extends BaseController {

    @RequestMapping(value = "/info", method = RequestMethod.GET)
    public String info(HttpServletRequest request, HttpServletResponse response) {
        return "info";
    }
    
    @RequestMapping(value = "/mp3", method = RequestMethod.GET)
    public String mp3(HttpServletRequest request, HttpServletResponse response) {
        return "mp3";
    }
}

/**
 * Revision history
 * -------------------------------------------------------------------------
 * 
 * Date Author Note
 * -------------------------------------------------------------------------
 * 2017年5月15日 Zxs create
 */
