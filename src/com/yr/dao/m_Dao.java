package com.yr.dao;

import com.yr.user.Money;

public class m_Dao extends BaseDao{
        public int insert(Money m){
            int row=0;
            try {
                super.connect();
                String sql="insert into money (name,salary,charge) values (?,?,?)";
                pstmt=conn.prepareStatement(sql);
                pstmt.setString(1,m.getName());
                pstmt.setInt(2,m.getSalary());
                pstmt.setInt(3,m.getCharge());
                row=pstmt.executeUpdate();
            } catch (Exception e) {
                e.printStackTrace();
            }finally{
                super.closeAll();
            }
            return row;
        }
}
