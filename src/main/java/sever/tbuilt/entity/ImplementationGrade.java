package sever.tbuilt.entity;

import org.apache.commons.dbutils.handlers.BeanListHandler;
import sever.publics.ServerConnect;
import sever.tbuilt.lEItext.Grade;
import sever.tbuilt.impl.ImplementationBti;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

/**
 * Created by Administrator on 2016/8/23.
 */
public class ImplementationGrade extends ServerConnect implements ImplementationBti {
    String biao="Grade";
    private Statement statement;
    @Override
    public Integer increase(Object obj)  {
        Grade o=(Grade) obj;
        String sql="insert into "+biao+" (gradename)  value (?)";
        connection=getConnection();
        int i= 0;
        try {
            i = queryRunner.update(connection,sql,o.getGradeName());
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
    public Integer update(Object obj) {
        Grade o=(Grade) obj;
        connection=getConnection();
        String sql="UPDATE "+biao+" SET GradeName=? WHERE Gradeid=?";
        try {
            int i=queryRunner.update(connection,sql,o.getGradeName(),o.getGradeId());
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        }finally {
            close(connection,null,null);
        }
    }

    @Override
    public List<Grade> query() {
        connection=getConnection();
        String sql="select * from "+biao;
        try {
        List<Grade> list=queryRunner.query(connection,sql, new BeanListHandler<Grade>(Grade.class));
        return list;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }finally {
            close(connection,null,null);
        }
    }
}
