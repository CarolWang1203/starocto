package com.starocto.common.api.web.controller;

import org.springframework.stereotype.Controller;
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
@Controller
public class RepostController extends MiniBlogTreatCommonController {
    @RequestMapping(value = "/admin/blogs/repost", method = RequestMethod.GET)
    public String repostBlog(ModelMap modelMap){
        System.out.println("repostBlog");
        return "admin/repostBlog.jsp";
    }
    @RequestMapping(value = "admin/blogs/repostP", method = RequestMethod.POST)
    public String repostBlogPost(){
        System.out.println("repostBlogPost");
        return "redirect:/admin/blogs.jsp";
    }
    @RequestMapping(value = "/admin/blogs/showRepostList", method = RequestMethod.GET)
    public String showRepostList(ModelMap modelMap){
        System.out.println("showRepostList");
        return "admin/showRepostList.jsp";
    }
}
