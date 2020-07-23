package com.shuhan.dao;

import com.shuhan.domain.Student;

import java.util.List;

public interface StudentDao {
    int insertStudent(Student student);
    List<Student> selectStudents();
    List<Student> queryStudents();
    int updateStudent(Student student);
    int deleteStudent(String name);
}
