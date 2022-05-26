package com.yr.dao;

import com.yr.user.Student;

public class s_Dao extends BaseDao{
    public int insert(Student s){
        int row=0;
        try {
            super.connect();
            String sql= "insert into student(name,pwd) values(?,?)";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,s.getName());
            pstmt.setString(2,s.getPwd());
            row=pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            super.closeAll();
        }
        return row;
    }
}
