package sever.tbuilt.entity;

import org.apache.commons.dbutils.handlers.BeanListHandler;
import sever.publics.ServerConnect;
import sever.tbuilt.lEItext.Student;
import sever.tbuilt.impl.ImplementationBti;


import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;


/**
 * Created by Administrator on 2016/8/23.
 */
public class ImplementationStudent extends ServerConnect implements ImplementationBti {
    String biao="Student";
    private Statement statement;
    @Override
    public Integer increase(Object obj)  {
        Student o=(Student)obj;
        String sql="insert into "+biao+" (LoginPwd,StudentName,Sex," +
                                          "GradeId,Phone,Address," +
                                  "BornDate,Emall,IdentityCard)  value (?,?,?,?,?,?,?,?,?)";
        connection=getConnection();
        int i= 0;
        try {
            i = queryRunner.update(connection,sql,o.getLoginPwd(),
                    o.getStudentName(),o.getSex(),o.getGradeId(),o.getPhone(),
                    o.getAddress(),o.getBornDate(),o.getEmall(),o.getIdentityCard());
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
        String sql="update "+biao+" set del=0 where studentno=?";
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
        Student o=(Student)obj;
        connection=getConnection();
        String sql="UPDATE "+biao+" SET LoginPwd=? and StudentName=? and Sex=? and " +
                                       "GradeId=? and Phone=? and Address=? and " +
                                       "BornDate=? and Emall=? and IdentityCard=? WHERE Gradeid=?";
        try {
            int i=queryRunner.update(connection,sql,o.getLoginPwd(),o.getStudentName(),o.getSex(),
                                                    o.getGradeId(),o.getPhone(),o.getAddress(),
                                                    o.getBornDate(),o.getEmall(),o.getIdentityCard(),o.getGradeId());
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        }finally {
            close(connection,null,null);
        }
    }

    @Override
    public List<Student> query() {
        connection=getConnection();
        String sql="select * from "+biao;
        try {
        List<Student> list=queryRunner.query(connection,sql, new BeanListHandler<Student>(Student.class));
        return list;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }finally {
            close(connection,null,null);
        }
    }
    @Override
    public List<Student> queryDange(String id){
        connection=getConnection();
        String sql="select * from "+biao+" where StudentNo=?";
        try {
            List<Student> list=queryRunner.query(connection,sql,new BeanListHandler<Student>(Student.class),id);
        return list;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
