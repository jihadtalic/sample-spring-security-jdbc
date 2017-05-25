package com.springsecurity4.models;

import java.sql.Timestamp;

public class UserDetails {

    int userId;
    String firstName;
    String lastName;
    String companyName;
    String roles;
    String isActive;

    public UserDetails(int userId, String firstName, String lastName, String companyName, String roles, String isActive) {
        this.userId = userId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.companyName = companyName;
        this.roles = roles;
        this.isActive = isActive;
    }

    public int getUserId () {
        return this.userId;
    }

    public String getFirstName () {
        return this.firstName;
    }

    public String getLastName () {
        return this.lastName;
    }

    public String getCompanyName() {
        return this.companyName;
    }

    public String getRoles() {
        return this.roles;
    }

    public String getIsActive() {
        return this.isActive;
    }

}
