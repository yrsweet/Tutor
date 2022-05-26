package com.yr.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class BaseDao {
    protected Connection conn = null;
    protected Statement stmt = null;
    protected ResultSet rs = null;
    protected String url = "jdbc:mysql://localhost:3306/tutor?characterEncoding=utf-8";
    protected String name = "root";
    protected String password = "abc123";
    protected PreparedStatement pstmt=null;

    public void connect(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, "root", "abc123");
            stmt = conn.createStatement();
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    public void closeAll(){
        try {
            if (rs != null) {
                rs.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
            if(pstmt!=null){
                pstmt.close();
            }
        }catch(Exception e) {

        }
    }
}
