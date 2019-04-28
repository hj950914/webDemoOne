package com.hj.util;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.io.Reader;

/**
 * Author: hj
 * Date: 2019-04-28 15:56
 * Description: 数据库工具类
 */
public class DBAccess {

    private static SqlSession sqlSession = null;

    public static SqlSession getSqlSession() throws IOException {
        //读取配置文件
        Reader resourceAsReader = Resources.getResourceAsReader("Configuration.xml");
        //构建sqlSessionFactory
        SqlSessionFactory build = new SqlSessionFactoryBuilder().build(resourceAsReader);
        //打开数据库会话
        sqlSession = build.openSession();
        return sqlSession;
    }

    @Test
    public void test1() {
        try {
            SqlSession sqlSession = DBAccess.getSqlSession();
            if (sqlSession != null) {
                System.out.println("连接成功");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
