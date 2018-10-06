package com.starocto.common.api.web.controller;

import com.starocto.common.api.common.entity.UserEntity;
import com.starocto.common.api.service.personal.Info.ISoUserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Author : wangwei19921203@163.com
 * Date   : 2018/10/3
 * Time   : 下午5:35
 * --------------------
 * Desc   :
 */
@Controller
public class MainController {
    @Autowired
    ISoUserInfoService iSoUserInfoService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(ModelMap modelMap){
        UserEntity user = iSoUserInfoService.getUserInfo();
        modelMap.addAttribute("user",user);
        return  "homePage.jsp";
    }
}
