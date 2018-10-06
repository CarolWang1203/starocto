package com.starocto.common.api.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Author : wangwei19921203@163.com
 * Date   : 2018/10/3
 * Time   : 下午12:49
 * --------------------
 * Desc   : 定向微博添加、更新、删除、展示单页、展示列表页
 */
@Controller
public class MiniBlogController {
    @RequestMapping(value = "/admin/blogs", method = RequestMethod.GET)
    public String showBlogsList(ModelMap modelMap){
        System.out.println("showBlogsList");
        return "admin/blogs.jsp";
    }

    @RequestMapping(value = "/admin/blogs/add", method = RequestMethod.GET)
    public String addBlog(ModelMap modelMap) {
        System.out.println("addBlog");
        return "admin/addBlog.jsp";
    }

    @RequestMapping(value = "/admin/blogs/addP", method = RequestMethod.POST)
    public String addBlogPost(){
        System.out.println("addBlogPost");
        return "redirect:/admin/blogs";
    }

    @RequestMapping(value = "/admin/blogs/show", method = RequestMethod.GET)
    public String showBlog(/*@PathVariable("id")*/ Integer blogId, ModelMap modelMap) {
        System.out.println("showBlog");
        return "admin/blogDetail.jsp";
    }

    @RequestMapping(value = "/admin/blogs/update", method = RequestMethod.GET)
    public String updateBlog(/*@PathVariable("id")*/ Integer blogId, ModelMap modelMap) {
        System.out.println("updateBlog");
        return "admin/updateBlog.jsp";
    }

    // 修改博客内容，POST请求
    @RequestMapping(value = "/admin/blogs/updateP", method = RequestMethod.POST)
    public String updateBlogP() {
        System.out.println("updateBlogP");
        return "redirect:/admin/blogs";
    }

    @RequestMapping(value = "/admin/blogs/delete", method = RequestMethod.GET)
    public String deleteBlog(/*@PathVariable("id")*/ Integer blogId) {
        System.out.println("deleteBlog");
        return "redirect:/admin/blogs";
    }
}
