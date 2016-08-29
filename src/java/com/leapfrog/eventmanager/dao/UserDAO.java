/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.eventmanager.dao;

import com.leapfrog.eventmanager.entity.User;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Anonymous
 */
public interface UserDAO {

    int insertUser(User u) throws ClassNotFoundException, SQLException;

    int updateUser(User u) throws ClassNotFoundException, SQLException;

    int deleteUser(User u) throws ClassNotFoundException, SQLException;

    User getByUsername() throws ClassNotFoundException, SQLException;

    int insertEvent(User u) throws ClassNotFoundException, SQLException;

    int updateEvent(User u) throws ClassNotFoundException, SQLException;

    int deleteEvent(User u) throws ClassNotFoundException, SQLException;

    int insertContact(User u) throws ClassNotFoundException, SQLException;

    int updateContact(User u) throws ClassNotFoundException, SQLException;

    int deleteContact(User u) throws ClassNotFoundException, SQLException;

    User getByName(String name) throws ClassNotFoundException, SQLException;

    List<User> getAllEvent() throws ClassNotFoundException, SQLException;

    User getByTitle(String title) throws ClassNotFoundException, SQLException;

    List<User> getAllContact() throws ClassNotFoundException, SQLException;
}
