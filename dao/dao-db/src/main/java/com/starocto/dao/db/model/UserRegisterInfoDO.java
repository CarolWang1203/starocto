package com.starocto.dao.db.model;

import lombok.Data;

/**
 * Author : zhangjianxun@meituan.com
 * Date   : 2018/10/3
 * Time   : 16:11
 * ---------------------------------------
 * Desc   : 用户的登录相关信息
 */
@Data
public class UserRegisterInfoDO {
    private int userId;
    private String userName;
    private String userPsw;
    private String userPhone;
    private String userEmail;
    private String userRegisteredTime;
    private String userChangeTime;
}
