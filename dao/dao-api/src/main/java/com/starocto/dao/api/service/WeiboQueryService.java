package com.starocto.dao.api.service;

import com.starocto.dao.api.model.resp.*;

import java.util.List;

/**
 * Author : zhangjianxun@meituan.com
 * Date   : 2018/10/3
 * Time   : 12:32
 * ---------------------------------------
 * Desc   : 微博查询接口
 */
public interface WeiboQueryService {

    BlogCountResp queryBlogCountDO(long blogId);

    List<BlogInfoResp> queryBlogInfoDO(int userId);

    List<CommentToBlogResp> queryCommentToBlogDO(long blogId);

    List<UserFollowResp> queryUserFollowDO(int userId);

    List<UserFollowResp> queryFansDO(int followUserId);

    UserInfoResp queryUserInfoDO(int userId);

    UserOthersResp queryUserOthersDO(int userId);

    UserRegisterInfoResp queryUserRegisterInfoDO(String userName);
}
