/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.eventmanager.constant;

/**
 *
 * @author Anonymous
 */
public class SQLConstant {

    public static final String INSERT_USER = "INSERT INTO " + TableConstant.USER_TABLE + "(email,username,password) VALUES(?,?,?)";
    public static final String UPDATE_USER = "UPDATE  " + TableConstant.USER_TABLE + " SET password=? WHERE username=?";

    public static final String INSERT_EVENT = "INSERT INTO " + TableConstant.EVENT_TABLE + "(title,date,venue,phone,org_name,description) VALUES(?,?,?,?,?,?)";
    public static final String UPDATE_EVENT = "UPDATE  " + TableConstant.EVENT_TABLE + " SET title=?,date=?,venue=?,phone=?,org_name=?,description=? WHERE title=?";
    public static final String DELETE_EVENT = "DELETE FROM " +TableConstant.EVENT_TABLE + " WHERE title=?";
    public static final String GETALLEVENT = "SELECT * FROM " + TableConstant.EVENT_TABLE;
    public static final String GETBYTITLE = "SELECT * FROM " + TableConstant.EVENT_TABLE + " WHERE title=?";

    public static final String GETALLCONTACT = "SELECT * FROM " + TableConstant.CONTACT_TABLE;
    public static final String INSERT_CONTACT = "INSERT INTO " + TableConstant.CONTACT_TABLE + "(name,phone,email,address,relation) VALUES(?,?,?,?,?) ";
    public static final String UPDATE_CONTACT = "UPDATE  " + TableConstant.CONTACT_TABLE + " SET phone=?,email=?,address=?,relation=? WHERE name=? ";
    public static final String DELETE_CONTACT = "DELETE FROM " +TableConstant.CONTACT_TABLE + "WHERE name=?";
    public static final String GETBYNAME = "SELECT * FROM " + TableConstant.CONTACT_TABLE + " WHERE name=?";
}
