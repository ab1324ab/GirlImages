package sever.tbuilt.lEItext;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import sever.publics.ServerConnect;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Administrator on 2016/8/25.
 */
public class TheLogin extends ServerConnect {

    public List<UserInfo> query(UserInfo userInfo){
        connection=getConnection();
        String sql="select * from UserInfo where " +
                "        username=? and password=?";
        try {
            List<UserInfo>  list =queryRunner.query(connection,sql,new BeanListHandler<UserInfo>(UserInfo.class),
                                            userInfo.getUsername(),userInfo.getPassword());
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

    }
}
