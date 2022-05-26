package com.yr.dao;

import com.yr.user.Administrator;

public class a_Dao extends BaseDao{
    public int insert(Administrator a){
        int row=0;
        try {
            super.connect();
            String sql="insert into administrator(name,pwd) values(?,?)";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,a.getName());
            pstmt.setString(2,a.getPwd());
            row=pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            super.closeAll();
        }
        return row;
    }
}
