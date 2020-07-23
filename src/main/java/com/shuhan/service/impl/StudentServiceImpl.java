package com.shuhan.service.impl;

import com.shuhan.dao.StudentDao;
import com.shuhan.domain.Student;
import com.shuhan.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service(value = "StudentService")
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentDao studentDao;
    @Override
    public int addStudent(Student student) {
        return studentDao.insertStudent(student);
    }

    @Override
    public List<Student> findStudents() {
        return studentDao.selectStudents();
    }

    @Override
    public List<Student> queryStudent() {
        return studentDao.queryStudents();
    }

    @Override
    public int updateStudents(Student student) {
        return studentDao.updateStudent(student);
    }

    @Override
    public int deleteStudent(String name) {
        return studentDao.deleteStudent(name);
    }
}
