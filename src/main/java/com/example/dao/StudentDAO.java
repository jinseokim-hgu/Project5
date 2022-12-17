package com.example.dao;

import com.example.bean.StudentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class StudentDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public int insertStudent(StudentVO vo) {
        String sql = "insert into STUDENT (name, student_number, major, phone_number, attendance, mail, gender, inhabit_type) values ("
                + "'" + vo.getName() + "',"
                + "'" + vo.getStudent_number() + "',"
                + "'" + vo.getMajor() + "',"
                + "'" + vo.getPhone_number() + "',"
                + "'" + vo.getAttendance() + "',"
                + "'" + vo.getMail() + "',"
                + "'" + vo.getGender() + "',"
                + "'" + vo.getInhabit_type() + "')";
        return jdbcTemplate.update(sql);
    }

    public int deleteStudent(int seq) {
        String sql = "delete from STUDENT where seq = " + seq;
        return jdbcTemplate.update(sql);
    }

    public int updateStudent(StudentVO vo) {
        String sql = "update STUDENT set name='" + vo.getName() + "',"
                + " student_number='" + vo.getStudent_number() + "',"
                + " major='" + vo.getMajor() + "',"
                + " phone_number='" + vo.getPhone_number() + "',"
                + " attendance='" + vo.getAttendance() + "',"
                + " mail='" + vo.getMail() + "',"
                + " gender='" + vo.getGender() + "',"
                + " inhabit_type='" + vo.getInhabit_type() + "' where seq=" + vo.getSeq();
        return jdbcTemplate.update(sql);
    }

    public StudentVO getStudent(int seq) {
        String sql = "select * from STUDENT where seq=" + seq;
        return jdbcTemplate.queryForObject(sql, new StudentRowMapper());
    }

    public List<StudentVO> getStudentList() {
        String sql = "select * from STUDENT order by seq desc";
        return jdbcTemplate.query(sql, new StudentRowMapper());
    }
}

class StudentRowMapper implements RowMapper<StudentVO> {

    @Override
    public StudentVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        StudentVO vo = new StudentVO();
        vo.setSeq(rs.getInt("seq"));
        vo.setName(rs.getString("name"));
        vo.setStudent_number(rs.getInt("student_number"));
        vo.setMajor(rs.getString("major"));
        vo.setPhone_number(rs.getString("phone_number"));
        vo.setAttendance(rs.getString("attendance"));
        vo.setMail(rs.getString("mail"));
        vo.setGender(rs.getString("gender"));
        vo.setInhabit_type(rs.getString("inhabit_type"));
        return vo;
    }
}