package com.starocto.common.api.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Author : wangwei19921203@163.com
 * Date   : 2018/10/3
 * Time   : 下午5:20
 * --------------------
 * Desc   :
 */
@Controller
public class FollowContentsController {
    @RequestMapping(value = "/admin/home/followBlogs", method = RequestMethod.GET)
    public String showfollowBlogsList(ModelMap modelMap){
        System.out.println("showfollowBlogsList");
        return "admin/home/followBlogs.jsp";
    }

    @RequestMapping(value = "/admin/home/followBlogs/show", method = RequestMethod.GET)
    public String showfollowBlog(@PathVariable("id") Integer blogId, ModelMap modelMap) {
        System.out.println("showfollowBlog");
        return "admin/home/followBlogDetail.jsp";
    }
}
