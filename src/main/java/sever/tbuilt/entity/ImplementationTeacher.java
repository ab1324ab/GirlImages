package sever.tbuilt.entity;


import org.apache.commons.dbutils.handlers.BeanListHandler;
import sever.publics.ServerConnect;
import sever.tbuilt.impl.ImplementationBti;
import sever.tbuilt.lEItext.Teacher;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

/**
 * Created by Administrator on 2016/8/23.
 */
public class ImplementationTeacher extends ServerConnect implements ImplementationBti {
    String biao="Teachers";
    private Statement statement;
    @Override
    public Integer increase(Object o)  {
        String sql="insert into "+biao+" (gradename)  value (?)";
        connection=getConnection();
        int i= 0;
        try {
            i = queryRunner.update(connection,sql);
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        }finally {
            close(connection,null,null);
        }

    }

    @Override
    public Integer delete(String o) {
        connection=getConnection();
        String sql="update "+biao+" set del=0 where gradeid=?";
        int i= 0;
        try {
            i = queryRunner.update(connection,sql,o);
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        }finally {
            close(connection,null,null);
        }
    }

    @Override
    public Integer update(Object o) {
        connection=getConnection();
        String sql="UPDATE "+biao+" SET GradeName=? WHERE Gradeid=?";
        try {
            int i=queryRunner.update(connection,sql);
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        }finally {
            close(connection,null,null);
        }
    }

    @Override
    public List<Teacher> query() {
        connection=getConnection();
        String sql="select * from "+biao;
        try {
        List<Teacher> list=queryRunner.query(connection,sql, new BeanListHandler<Teacher>(Teacher.class));
        return list;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }finally {
            close(connection,null,null);
        }
    }

    @Override
    public List queryDange(String id) {
        return null;
    }
}
