package com.example.com;

import com.example.bean.StudentVO;
import com.example.dao.StudentDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    StudentDAO studentDAO;

    @Override
    public int insertStudent(StudentVO vo) {
        return studentDAO.insertStudent(vo);
    }

    @Override
    public int deleteStudent(int seq) {
        return studentDAO.deleteStudent(seq);
    }

    @Override
    public int updateStudent(StudentVO vo) {
        return studentDAO.updateStudent(vo);
    }

    @Override
    public StudentVO getStudent(int seq) {
        return studentDAO.getStudent(seq);
    }

    @Override
    public List<StudentVO> getStudentList() {
        return studentDAO.getStudentList();
    }
}
