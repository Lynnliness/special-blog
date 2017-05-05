package com.special.base.controller.login;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.special.base.common.Constants;
import com.special.base.common.JsonResult;
import com.special.base.controller.BaseController;

/**
 * 
 * @author Lynnliness
 * @version 1.0
 * @since 2017-05-04 20:29:19
 * @des 用户登陆控制器
 */
@Controller
@RequestMapping(value = "/")
public class LoginController extends BaseController {

    @RequestMapping(value = "/web/login", method = RequestMethod.GET)
    public ModelAndView toLogin() {
        return new ModelAndView("index");
    }

    /**
     * 
     * @param username
     * @param password
     * @return
     */
    @RequestMapping("/login")
    @ResponseBody
    public JsonResult login(String username, String password, HttpServletRequest request) {
        if (StringUtils.isEmpty(username)) {
            return errorResult("用户名不可为空");
        }
        if (StringUtils.isEmpty(password)) {
            return errorResult("密码不可为空");
        }
        Object bind = new Object();
        BeanUtils.copyProperties(new Object(), bind);
        request.getSession().setAttribute(Constants.CURRENT_USER_BIND, bind);
        return successResult("", username + "/" + password);
    }

    /**
     * 退出登陆，清除Session
     * @param request
     * @return
     */
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Enumeration<String> enums = session.getAttributeNames();
        while (enums.hasMoreElements()) {
            session.removeAttribute(enums.nextElement().toString());
        }
        return "redirect:/login.jsp";
    }
}
