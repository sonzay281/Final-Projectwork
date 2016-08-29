/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.eventmanager.dao.impl;

import com.leapfrog.eventmanager.constant.SQLConstant;
import com.leapfrog.eventmanager.dao.UserDAO;
import com.leapfrog.eventmanager.dbutil.DBConnection;
import com.leapfrog.eventmanager.entity.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Anonymous
 */
public class UserDAOImpl implements UserDAO {

    private DBConnection db = new DBConnection();

    @Override
    public int insertUser(User u) throws ClassNotFoundException, SQLException {
        db.open();
        PreparedStatement stmt = db.initStatement(SQLConstant.INSERT_USER);
        stmt.setString(1, u.getUsername());
        stmt.setString(2, u.getEmail());
        stmt.setString(3, u.getPassword());
        int result = db.executeUpdate();
        db.close();
        return result;
    }

    @Override
    public int updateUser(User u) throws ClassNotFoundException, SQLException {
        db.open();
        PreparedStatement stmt = db.initStatement(SQLConstant.UPDATE_USER);
        stmt.setString(1, u.getUsername());
        stmt.setString(2, u.getEmail());
        stmt.setString(3, u.getPassword());
        int result = db.executeUpdate();
        db.close();
        return result;

    }

    @Override
    public User getByUsername() throws ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.

        /*  
         User u=null;
         String sql=SQLConstant.GETBYUSERNAME;
         db.open();
         PreparedStatement stmt=db.initStatement(sql);
         stmt.setString(1, username);
         ResultSet rs=stmt.executeQuery();
         while(rs.next()){
         u=new User();
         u.setUsername(rs.getString("username"));
         // u.set
         }
         */
    }

    @Override
    public int deleteUser(User u) throws ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int insertEvent(User u) throws ClassNotFoundException, SQLException {
        db.open();
        PreparedStatement stmt = db.initStatement(SQLConstant.INSERT_EVENT);
        stmt.setString(1, u.getTitle());
        stmt.setDate(2, new java.sql.Date(u.getDate().getTime()));
        stmt.setString(3, u.getVenue());
        stmt.setString(4, u.getPhone());
        stmt.setString(5, u.getOrg_name());
        stmt.setString(6, u.getDescription());
        int result = db.executeUpdate();
        db.close();
        return result;
    }

    @Override
    public int updateEvent(User u) throws ClassNotFoundException, SQLException {
        try {
            db.open();
            PreparedStatement stmt = db.initStatement(SQLConstant.UPDATE_EVENT);
             
            stmt.setString(1, u.getTitle());
            stmt.setDate(2, new java.sql.Date(u.getDate().getTime()));
            stmt.setString(3, u.getVenue());
            stmt.setString(4, u.getPhone());
            stmt.setString(5, u.getOrg_name());
            stmt.setString(6, u.getDescription());
            int result = stmt.executeUpdate();
            db.close();
            return result;

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return 0;

    }

    @Override
    public List<User> getAllEvent() throws ClassNotFoundException, SQLException {
        List<User> userList = new ArrayList<>();
        db.open();
        PreparedStatement stmt = db.initStatement(SQLConstant.GETALLEVENT);
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            User user = new User();
            user.setTitle(rs.getString("title"));
            user.setDate(rs.getDate("date"));
            user.setVenue(rs.getString("venue"));
            user.setPhone(rs.getString("phone"));
            user.setOrg_name(rs.getString("org_name"));
            user.setDescription(rs.getString("description"));
            userList.add(user);
        }
        db.close();
        return userList;

    }

    @Override
    public User getByTitle(String title) throws ClassNotFoundException, SQLException {
        User u = null;
        db.open();
        PreparedStatement stmt = db.initStatement(SQLConstant.GETBYTITLE);
        stmt.setString(1, title);
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            u = new User();
            u.setTitle(rs.getString("title"));
            u.setDate(rs.getDate("date"));
            u.setVenue(rs.getString("venue"));
            u.setEmail(rs.getString("phone"));
            u.setOrg_name(rs.getString("org_name"));
            u.setDescription(rs.getString("description"));

        }
        db.close();
        return u;
    }

    @Override
    public int deleteEvent(User u) throws ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public int insertContact(User u) throws ClassNotFoundException, SQLException {
        db.open();
        PreparedStatement stmt = db.initStatement(SQLConstant.INSERT_CONTACT);
        stmt.setString(1, u.getName());
        stmt.setString(2, u.getPhone());
        stmt.setString(3, u.getEmail());
        stmt.setString(4, u.getAddress());
        stmt.setString(5, u.getRelation());
        int result = db.executeUpdate();
        db.close();
        return result;
    }

    @Override
    public int updateContact(User u) throws ClassNotFoundException, SQLException {
        db.open();
        PreparedStatement stmt = db.initStatement(SQLConstant.UPDATE_CONTACT);

        stmt.setString(1, u.getName());
        stmt.setString(2, u.getPhone());
        stmt.setString(3, u.getEmail());
        stmt.setString(4, u.getAddress());
        stmt.setString(5, u.getRelation());
        int result = db.executeUpdate();
        db.close();
        return result;

    }

    @Override
    public int deleteContact(User u) throws ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public User getByName(String name) throws ClassNotFoundException, SQLException {
        User u = null;
        db.open();
        PreparedStatement stmt = db.initStatement(SQLConstant.GETBYNAME);
        stmt.setString(1, name);
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            u = new User();
            u.setName(rs.getString("name"));
            u.setPhone(rs.getString("phone"));
            u.setEmail(rs.getString("email"));
            u.setAddress(rs.getString("address"));
            u.setRelation(rs.getString("relation"));

        }
        db.close();
        return u;
    }

    @Override
    public List<User> getAllContact() throws ClassNotFoundException, SQLException {
        List<User> userList = new ArrayList<>();

        db.open();
        PreparedStatement stmt = db.initStatement(SQLConstant.GETALLCONTACT);
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            User user = new User();
            user.setName(rs.getString("name"));
            user.setPhone(rs.getString("phone"));
            user.setEmail(rs.getString("email"));
            user.setAddress(rs.getString("address"));
            user.setRelation(rs.getString("relation"));
            userList.add(user);
        }
        db.close();
        return userList;
    }

}
