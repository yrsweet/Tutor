package com.yr.dao;

import com.yr.user.Teacher;

public class t_Dao extends BaseDao {

    public int insert(Teacher t) {
        int row = 0;
        try {
            super.connect();
            String sql = "insert into teacher (name,pwd,sex,telephone,course,address,start,end) values (?,?,?,?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, t.getName());
            pstmt.setString(2, t.getPwd());
            pstmt.setString(3, t.getSex());
            pstmt.setString(4, t.getTelephone());
            pstmt.setString(5, t.getCourse());
            pstmt.setString(6, t.getAddress());
            pstmt.setString(7, t.getStart());
            pstmt.setString(8, t.getEnd());
            row = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            super.closeAll();
        }
        return row;
    }
}
