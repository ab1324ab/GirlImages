import org.junit.Test;
import sever.tbuilt.lEItext.Student;
import sever.tbuilt.entity.ImplementationStudent;

import java.util.List;

/**
 * Created by Administrator on 2016/8/24.
 */
public class cshi
{
    @Test
    public void c(){
        ImplementationStudent imp=new ImplementationStudent();
        List<Student> list=imp.query();
        for (Student l:list) {
            System.out.println(l.getStudentName());
        }
    }
}
