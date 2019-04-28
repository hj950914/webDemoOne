package com.hj.dao;

import com.hj.entity.User;
import com.hj.util.DBAccess;
import org.apache.ibatis.session.SqlSession;
import org.junit.jupiter.api.Test;

import java.io.IOException;

/**
 * Author: hj
 * Date: 2019-04-28 16:03
 * Description: 和user表相关的数据库操作
 */
public class UserDao {

    //插入数据
    public void insertUser(User user) {
        SqlSession sqlSession = null;
        try {
            sqlSession = DBAccess.getSqlSession();
            sqlSession.insert("User.insertUser", user);
            sqlSession.commit();
            //sql
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
    }

    @Test
    public void test1() {
        User user = new User();
        user.setUsername("hj1");
        user.setPhone("11111");
        user.setAddress("江西");
        UserDao userDao = new UserDao();
        userDao.insertUser(user);
    }

    /*
    <div class="overlay" id="pop-succeed">
        <div class="pop-up rule-box"><a href="#" class="rule-close"></a>
            <h2>成功提交！</h2>
            <p>${name}</p>
            <p>${phone}</p>
            <p>${address}</p>
            <br/>
            <br/>
            <%--<p>赶快点击分享跟小伙伴们炫耀一下吧。</p>--%>
            <br/>
            <br/>
            <br/>
            <a href="#" class="btn again" style="margin-right:20px;">再玩一次</a>
            <%--<a href="#" class="btn share">&nbsp;&nbsp;&nbsp;分享&nbsp;&nbsp;&nbsp;</a>--%>
        </div>
    </div>
    * */


}
