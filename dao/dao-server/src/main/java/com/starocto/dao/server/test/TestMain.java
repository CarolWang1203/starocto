package com.starocto.dao.server.test;


import com.starocto.dao.api.model.resp.*;
import com.starocto.dao.api.service.WeiboQueryService;
import com.starocto.dao.db.model.UserInfoDO;
import com.starocto.dao.db.util.SqlSessionFactoryUtil;
import com.starocto.dao.server.thrift.WeiboQueryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Author : zhangjianxun@meituan.com
 * Date   : 2018/10/6
 * Time   : 07:01
 * ---------------------------------------
 * Desc   :
 */
public class TestMain {

    public static void main(String[] args) {
        WeiboQueryService weiboQueryService = new WeiboQueryServiceImpl();

        UserInfoResp userInfoResp = weiboQueryService.queryUserInfoDO(1);
        System.out.println(userInfoResp);

        UserRegisterInfoResp userRegisterInfoResp = weiboQueryService.queryUserRegisterInfoDO("fuermoxun");
        System.out.println(userRegisterInfoResp);
//        SqlSession sqlSession = null;
//        try{
//            sqlSession = SqlSessionFactoryUtil.openSqlSession();
//            DataMapper dataMapper = sqlSession.getMapper(DataMapper.class);
//            UserInfoDO userInfoDO = dataMapper.selectUserInfoDO(1);
//            System.out.println(userInfoDO);
//            sqlSession.commit();
//        }catch (Exception e){
//            System.err.println(e.getMessage());
//            sqlSession.rollback();
//        }finally {
//            if (sqlSession!=null){
//                sqlSession.close();
//            }
//        }
//        QueryService queryService = new QueryServiceImpl();
//        queryService.queryUserInfoDO(1);

    }




}
