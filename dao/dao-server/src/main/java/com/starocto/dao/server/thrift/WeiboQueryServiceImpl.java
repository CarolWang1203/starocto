package com.starocto.dao.server.thrift;


import com.starocto.dao.api.model.resp.*;
import com.starocto.dao.api.service.WeiboQueryService;
import com.starocto.dao.common.utils.BeanUtils;
import com.starocto.dao.db.mapper.WeiboDataMapper;
import com.starocto.dao.db.model.*;
import com.starocto.dao.db.util.SqlSessionFactoryUtil;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Author : zhangjianxun@meituan.com
 * Date   : 2018/10/3
 * Time   : 12:36
 * ---------------------------------------
 * Desc   :
 */
@Service
public class WeiboQueryServiceImpl implements WeiboQueryService {

    private WeiboDataMapper weiboDataMapper = SqlSessionFactoryUtil.getDataMapper();

    @Override
    public BlogCountResp queryBlogCountDO(long blogId){
        BlogCountDO blogCountDO = weiboDataMapper.selectBlogCountDO(blogId);
        return BeanUtils.copyProperties(new BlogCountResp(), blogCountDO);
    }

    @Override
    public List<BlogInfoResp> queryBlogInfoDO(int userId){
        List<BlogInfoDO> blogInfoDOS = weiboDataMapper.selectBlogInfoDO(userId);
        return blogInfoDOS.stream()
                .map(e -> BeanUtils.copyProperties(new BlogInfoResp(), e))
                .collect(Collectors.toList());
    }

    @Override
    public List<CommentToBlogResp> queryCommentToBlogDO(long blogId){
        List<CommentToBlogDO> commentToBlogDOS = weiboDataMapper.selectCommentToBlogDO(blogId);
        return commentToBlogDOS.stream()
                .map(e -> BeanUtils.copyProperties(new CommentToBlogResp(), e))
                .collect(Collectors.toList());
    }

    @Override
    public List<UserFollowResp> queryUserFollowDO(int userId){
        List<UserFollowDO> userFollowDOS = weiboDataMapper.selectUserFollowDO(userId);
        return userFollowDOS.stream()
                .map(e -> BeanUtils.copyProperties(new UserFollowResp(), e))
                .collect(Collectors.toList());
    }

    @Override
    public List<UserFollowResp> queryFansDO(int followUserId){
        List<UserFollowDO> userFollowDOS = weiboDataMapper.selectFansDO(followUserId);
        return userFollowDOS.stream()
                .map(e -> BeanUtils.copyProperties(new UserFollowResp(), e))
                .collect(Collectors.toList());
    }

    @Override
    public UserInfoResp queryUserInfoDO(int userId){
        UserInfoDO userFollowDO = weiboDataMapper.selectUserInfoDO(userId);
        return BeanUtils.copyProperties(new UserInfoResp(), userFollowDO);
    }

    @Override
    public UserOthersResp queryUserOthersDO(int userId){
        UserOthersDO userOthersDO = weiboDataMapper.selectUserOthersDO(userId);
        return BeanUtils.copyProperties(new UserOthersResp(), userOthersDO);
    }

    @Override
    public UserRegisterInfoResp queryUserRegisterInfoDO(String userName){
        UserRegisterInfoDO userRegisterInfoDO = weiboDataMapper.selectUserRegisterInfoDO(userName);
        return BeanUtils.copyProperties(new UserRegisterInfoResp(), userRegisterInfoDO);
    }
}
