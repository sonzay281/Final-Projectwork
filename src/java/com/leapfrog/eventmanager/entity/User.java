/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.eventmanager.entity;

import java.util.Date;

/**
 *
 * @author Anonymous
 */
public class User {

    private String email;
    private String username;
    private String password;
    private String org_name;
    private String title;
    private Date date;
    private String venue;
    private String description;
    private String name;
    private String relation;
    private String phone;
    private String address;
    private String imgsource;

    public User() {
    }

    public User(String email, String username, String password, String org_name, String title, Date date, String venue, String description, String name, String relation, String phone, String address, String imgsource) {
        this.email = email;
        this.username = username;
        this.password = password;
        this.org_name = org_name;
        this.title = title;
        this.date = date;
        this.venue = venue;
        this.description = description;
        this.name = name;
        this.relation = relation;
        this.phone = phone;
        this.address = address;
        this.imgsource = imgsource;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getOrg_name() {
        return org_name;
    }

    public void setOrg_name(String org_name) {
        this.org_name = org_name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getVenue() {
        return venue;
    }

    public void setVenue(String venue) {
        this.venue = venue;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRelation() {
        return relation;
    }

    public void setRelation(String relation) {
        this.relation = relation;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImgsource() {
        return imgsource;
    }

    public void setImgsource(String imgsource) {
        this.imgsource = imgsource;
    }


}
