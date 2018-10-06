package com.starocto.common.api.service.personal.Info.impl;

import com.starocto.common.api.common.entity.UserEntity;
import com.starocto.common.api.service.personal.Info.ISoUserInfoService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Author : wangwei19921203@163.com
 * Date   : 2018/10/3
 * Time   : 下午12:49
 * --------------------
 * Desc   :
 */
@Service
public class SoUserInfoService implements ISoUserInfoService {
    //WeiboQueryService weiboQueryService;
    /*public UserEntity getUserInfo(int userId){
        UserEntity mUser = new UserEntity();
        UserInfoResp userInfoResp = weiboQueryService.queryUserInfoDO(userId);
        mUser.setUserId(userInfoResp.getUserId());
        mUser.setUserSex(userInfoResp.getUserUserSex());
        mUser.setUserIcon("//tva2.sinaimg.cn/crop.28.0.372.372.180/9cdfe569jw8eonzrl8177j20c80imt9e.jpg");
        mUser.setUserBirthday(userInfoResp.getUserBirthday());
        mUser.setUserEmotion(userInfoResp.getUserEmotion());
        mUser.setUserPosition(userInfoResp.getUserPositio());
        mUser.setUserHometown(userInfoResp.getUserHometow());
        mUser.setUserUniversity(userInfoResp.getUserUniversity());
        mUser.setUserCompany(userInfoResp.getUserCompany());
        mUser.setSignature(userInfoResp.getSignature());
        mUser.setFollowingsCount(weiboQueryService.queryUserFollowDO(userId).size());
        mUser.setFansCount(weiboQueryService.queryFansDO(userId).size());
        mUser.setStarsCount(122);
        return mUser;
    }*/
    public UserEntity getUserInfo(){
        UserEntity mUser = new UserEntity();

        mUser.setUserId(1);
        mUser.setUserSex(true);
        mUser.setUserIcon("//tva2.sinaimg.cn/crop.28.0.372.372.180/9cdfe569jw8eonzrl8177j20c80imt9e.jpg");
        mUser.setUserNickname("Vida");
        mUser.setUserBirthday("1992-12-01");
        mUser.setUserEmotion("good");
        mUser.setUserPosition("北京");
        mUser.setUserHometown("北京");
        mUser.setUserUniversity("清华大学");
        mUser.setUserCompany("微软");
        mUser.setSignature("good good study, day day up");
        mUser.setMiniBlogCount(32);
        mUser.setFollowingsCount(76);
        mUser.setFansCount(1000);
        mUser.setStarsCount(122);
        return mUser;
    }

}
