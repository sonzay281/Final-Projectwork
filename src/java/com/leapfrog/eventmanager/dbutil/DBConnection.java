/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.eventmanager.dbutil;

import com.leapfrog.eventmanager.constant.DBConstant;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnection {

    private Connection conn = null;
    private PreparedStatement stmt = null;

    public void open() throws ClassNotFoundException, SQLException {
        Class.forName(DBConstant.DB_DRIVER);
        conn = DriverManager.getConnection(DBConstant.DB_URL, DBConstant.DB_USER, DBConstant.DB_PASSWORD);
    }

    public PreparedStatement initStatement(String sql) throws SQLException {
        stmt = conn.prepareStatement(sql);
        return stmt;
    }

    public int executeUpdate() throws SQLException {
        return stmt.executeUpdate();
    }

    public ResultSet exucuteQuery() throws SQLException {
        return stmt.executeQuery();
    }

    public void close() throws SQLException {
        if (conn != null && !conn.isClosed()) {
            conn.close();
            conn = null;
        }
    }
}
