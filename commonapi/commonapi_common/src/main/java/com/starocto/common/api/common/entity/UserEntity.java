package com.starocto.common.api.common.entity;

import lombok.Data;

/**
 * Author : wangwei19921203@163.com
 * Date   : 2018/10/5
 * Time   : 下午2:47
 * --------------------
 * Desc   :
 */
@Data
public class UserEntity {
    private int userId;

    //personal profile
    private String userIcon;
    private String userNickname;
    private  boolean userSex;
    private String userBirthday;
    private String userEmotion;
    private String userPosition;
    private String userHometown;
    private String userUniversity;
    private String userCompany;
    private String Signature;

    //blog related
    private int miniBlogCount;
    private int followingsCount;
    private int fansCount;
    private int starsCount;
}
