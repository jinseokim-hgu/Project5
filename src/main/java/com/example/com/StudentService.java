package com.example.com;

import com.example.bean.StudentVO;

import java.util.List;

public interface StudentService {
    public int insertStudent(StudentVO vo);
    public int deleteStudent(int seq);
    public int updateStudent(StudentVO vo);
    public StudentVO getStudent(int seq);
    public List<StudentVO> getStudentList();
}
