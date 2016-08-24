package sever.tbuilt.lEItext;

/**
 * 
 * @author houwen
 */
public class User_Info {
	/**
	 *  
	 */
	private Integer id;
	/**
	 *  
	 */
	private String username;
	/**
	 *  
	 */
	private String password;
	/**
	 * 
	 * @param id
	 */
	public void setId(Integer id){
		this.id = id;
	}
	
    /**
     * 
     * @return
     */	
    public Integer getId(){
    	return id;
    }
	/**
	 * 
	 * @param username
	 */
	public void setUsername(String username){
		this.username = username;
	}
	
    /**
     * 
     * @return
     */	
    public String getUsername(){
    	return username;
    }
	/**
	 * 
	 * @param password
	 */
	public void setPassword(String password){
		this.password = password;
	}
	
    /**
     * 
     * @return
     */	
    public String getPassword(){
    	return password;
    }
}