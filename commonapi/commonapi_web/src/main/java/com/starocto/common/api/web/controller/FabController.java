package com.starocto.common.api.web.controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Author : wangwei19921203@163.com
 * Date   : 2018/10/3
 * Time   : 下午12:49
 * --------------------
 * Desc   :
 */
public class FabController extends MiniBlogTreatCommonController {
    @RequestMapping(value = "/admin/blogs/fab", method = RequestMethod.GET)
    public String fabToBlog(ModelMap modelMap){
        System.out.println("fabToBlog");
        return "admin/fabToBlog.jsp";
    }
    @RequestMapping(value = "admin/blogs/fabP", method = RequestMethod.POST)
    public String fabToBlogPost(){
        System.out.println("fabToBlogPost");
        return "redirect:/admin/blogs.jsp";
    }
    @RequestMapping(value = "/admin/blogs/showFabUserList", method = RequestMethod.GET)
    public String showFabUserList(ModelMap modelMap){
        System.out.println("showFabUserList");
        return "admin/showFabUserList.jsp";
    }
}
