package com.springsecurity4.models;

import java.sql.Timestamp;

public class UserDetails {

    int userId;
    String firstName;
    String lastName;
    String companyName;

    public UserDetails(int userId, String firstName, String lastName, String companyName) {
        this.userId = userId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.companyName = companyName;
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

}
