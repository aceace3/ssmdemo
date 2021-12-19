package com.zhoayi.dao;

import com.zhoayi.bean.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author aceace3
 * @version 1.0
 * @date 2021/12/19 17:07
 */
public interface TestControllerDao {

    List<Student> findAll();

    Student findById(@Param("id") Integer id);

}
