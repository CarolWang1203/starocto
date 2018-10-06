package com.starocto.common.api.web.controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Author : wangwei19921203@163.com
 * Date   : 2018/10/3
 * Time   : 下午12:52
 * --------------------
 * Desc   :
 */
public class HotSpotController {
    @RequestMapping(value = "/admin/home/hotBlogs", method = RequestMethod.GET)
    public String showhotBlogsList(ModelMap modelMap){
        System.out.println("showhotBlogsList");
        return "admin/home/hotBlogs.jsp";
    }

    @RequestMapping(value = "/admin/home/hotBlogs/show", method = RequestMethod.GET)
    public String showhotBlog(@PathVariable("id") Integer blogId, ModelMap modelMap) {
        System.out.println("showhotBlog");
        return "admin/home/hotBlogDetail.jsp";
    }
}
