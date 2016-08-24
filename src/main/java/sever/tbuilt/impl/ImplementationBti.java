package sever.tbuilt.impl;

import java.util.List;

/**
 * Created by Administrator on 2016/8/23.
 */
public interface ImplementationBti {


    /**
     * 增加
     * @param o
     * @return
     */
    Integer increase(Object o) ;

    /**
     * 删除
     * @param o
     * @return
     */
    public Integer delete(String o);

    /**
     * 修改
     * @param o
     * @return
     */
    Integer update(Object o);

    /**
     * 查询
     * @param
     * @return
     */
    List  query();

}
