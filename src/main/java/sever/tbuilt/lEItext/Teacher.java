package sever.tbuilt.lEItext;

/**
 * 
 * @author hou
 */
public class Teacher {
	/**
	 *  教师id
	 */
	private Integer teachersId;
	/**
	 *  教师姓名
	 */
	private String teachersName;
	/**
	 *  
	 */
	private String teachersSex;
	/**
	 *  教师电话
	 */
	private String teachersPhone;
	/**
	 *  所教课程id
	 */
	private Integer gradeid;
	/**
	 *  是否删除默认1
	 */
	private String del;
	/**
	 * 教师id
	 * @param teachersId
	 */
	public void setTeachersId(Integer teachersId){
		this.teachersId = teachersId;
	}
	
    /**
     * 教师id
     * @return
     */	
    public Integer getTeachersId(){
    	return teachersId;
    }
	/**
	 * 教师姓名
	 * @param teachersName
	 */
	public void setTeachersName(String teachersName){
		this.teachersName = teachersName;
	}
	
    /**
     * 教师姓名
     * @return
     */	
    public String getTeachersName(){
    	return teachersName;
    }
	/**
	 * 
	 * @param teachersSex
	 */
	public void setTeachersSex(String teachersSex){
		this.teachersSex = teachersSex;
	}
	
    /**
     * 
     * @return
     */	
    public String getTeachersSex(){
    	return teachersSex;
    }
	/**
	 * 教师电话
	 * @param teachersPhone
	 */
	public void setTeachersPhone(String teachersPhone){
		this.teachersPhone = teachersPhone;
	}
	
    /**
     * 教师电话
     * @return
     */	
    public String getTeachersPhone(){
    	return teachersPhone;
    }
	/**
	 * 所教课程id
	 * @param gradeid
	 */
	public void setGradeid(Integer gradeid){
		this.gradeid = gradeid;
	}
	
    /**
     * 所教课程id
     * @return
     */	
    public Integer getGradeid(){
    	return gradeid;
    }
	/**
	 * 是否删除默认1
	 * @param del
	 */
	public void setDel(String del){
		this.del = del;
	}
	
    /**
     * 是否删除默认1
     * @return
     */	
    public String getDel(){
    	return del;
    }
}