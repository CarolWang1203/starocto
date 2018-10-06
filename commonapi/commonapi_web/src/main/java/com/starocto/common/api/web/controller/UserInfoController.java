package com.starocto.common.api.web.controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Author : wangwei19921203@163.com
 * Date   : 2018/10/3
 * Time   : 下午12:49
 * --------------------
 * Desc   :
 */
public class UserInfoController {
    @RequestMapping(value = "/admin/personal/info/userInfo", method = RequestMethod.GET)
    public String showPersonalInfo(ModelMap modelMap){
        System.out.println("showPersonalInfo");
        return "/admin/personal/info/userInfo.jsp";
    }

    @RequestMapping(value = "/admin/personal/info/userInfo/update", method = RequestMethod.GET)
    public String updatePersonalInfo(@PathVariable("id") Integer blogId, ModelMap modelMap) {
        System.out.println("updatePersonalInfo");
        return "/admin/personal/info/updatePersonalInfo.jsp";
    }

    // 修改博客内容，POST请求
    @RequestMapping(value = "/admin/personal/info/userInfo/updateP", method = RequestMethod.POST)
    public String updatePersonalInfoP() {
        System.out.println("updatePersonalInfoP");
        return "redirect:/admin/personal/info/userInfo.jsp";
    }
}
