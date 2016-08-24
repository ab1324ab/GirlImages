package sever.publics;

import com.alibaba.druid.pool.DruidDataSourceFactory;
import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.QueryRunner;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

/**
 * Created by Administrator on 2016/8/22.
 */
public class ServerConnect {
    protected Connection  connection;
    protected static InputStream inputStream;
    protected QueryRunner queryRunner;
    public ServerConnect(){
        queryRunner=new QueryRunner();
    }

    /**
     * c3p0连接数据库返回connection
     * @return
     * @throws Exception
     */
    public  Connection getConnectionC3P0() {
        ComboPooledDataSource comboPooledDataSource=new ComboPooledDataSource();
        try {
            connection=comboPooledDataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    /**
     * 读取配置文件创建cannection对象
     * @return
     * @throws IOException
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public  Connection getConnection() {
        Properties properties=new Properties();
         inputStream=ServerConnect.class.getResourceAsStream("jdbc.properties");
        try {
            properties.load(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            Class.forName(properties.getProperty("mysqldriver"));
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            connection=DriverManager.getConnection(properties.getProperty("url"),
                                        properties.getProperty("username"),
                                        properties.getProperty("password"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
    /**
     * Druid连接池对象创建cannertion
     * @return
     * @throws Exception
     */
    public  Connection getConnectionDruid() {
        Properties properties=new Properties();
        inputStream=ServerConnect.class.getResourceAsStream("druid.properties");
        try {
            properties.load(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            connection=DruidDataSourceFactory.createDataSource(properties).getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

    /**
     * 本地对象创建建设写死无法改变
     * @return
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public  Connection getConnectionLocal() {
        String user="ab1324ab";
        String pwd="hzit";
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            connection=DriverManager.getConnection("jdbc:mysql://45.64.75.179:3306/picture_manage?useUnicode=true&characterEncoding=utf8",
                    user,pwd);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;

    }
    public void close(Connection conn,Statement sta,ResultSet res){
        try {
            if(conn!=null){
                conn.close();
            }
            if (sta!=null){
                sta.close();
            }
            if (res!=null){
                res.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
