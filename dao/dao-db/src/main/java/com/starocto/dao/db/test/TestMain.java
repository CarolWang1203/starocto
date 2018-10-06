package com.starocto.dao.db.test;


import com.starocto.dao.db.model.UserInfoDO;
import com.starocto.dao.db.util.SqlSessionFactoryUtil;

/**
 * Author : zhangjianxun@meituan.com
 * Date   : 2018/10/6
 * Time   : 07:01
 * ---------------------------------------
 * Desc   :
 */
public class TestMain {

//    @Autowired
//    QueryService queryService;

    public static void main(String[] args) {
        UserInfoDO userInfoDO = SqlSessionFactoryUtil.getDataMapper().selectUserInfoDO(1);
        System.out.println(userInfoDO);
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
