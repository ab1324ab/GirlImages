import org.junit.Test;
import sever.tbuilt.lEItext.Student;
import sever.tbuilt.entity.ImplementationStudent;
import sever.tbuilt.lEItext.TheLogin;
import sever.tbuilt.lEItext.UserInfo;

import java.util.List;

/**
 * Created by Administrator on 2016/8/24.
 */
public class cshi
{
    @Test
    public void c(){
        ImplementationStudent imp=new ImplementationStudent();
        List<Student> list=imp.queryDange("1");
        for (Student l:list) {
            System.out.println(l.getStudentName());
        }
    }

    @Test
    public void TheLogin(){
        TheLogin imp=new TheLogin();
        UserInfo u=new UserInfo();
        u.setUsername("ni");
        u.setPassword("12");
        List<UserInfo> list=imp.query(u);
        if (list.size()==0){
            System.out.println("错误");
        }else{
            System.out.println("正确");
        }

    }
}
