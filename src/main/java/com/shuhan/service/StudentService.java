package com.shuhan.service;

import com.shuhan.domain.Student;

import java.util.List;

public interface StudentService {
    int addStudent(Student student);
    List<Student> findStudents();
    List<Student> queryStudent();
    int updateStudents(Student student);
    int deleteStudent(String name);
}
