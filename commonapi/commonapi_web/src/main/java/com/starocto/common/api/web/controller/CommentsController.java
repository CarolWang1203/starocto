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
public class CommentsController extends MiniBlogTreatCommonController {
    @RequestMapping(value = "/admin/blogs/comment", method = RequestMethod.GET)
    public String commentToBlog(ModelMap modelMap){
        System.out.println("commentToBlog");
        return "admin/commentToBlog.jsp";
    }
    @RequestMapping(value = "admin/blogs/commentP", method = RequestMethod.POST)
    public String commentToBlogPost(){
        System.out.println("commentToBlogPost");
        return "redirect:/admin/blogs.jsp";
    }
    @RequestMapping(value = "/admin/blogs/showCommentList", method = RequestMethod.GET)
    public String showCommentList(ModelMap modelMap){
        System.out.println("showCommentList");
        return "admin/showCommentList.jsp";
    }
}
