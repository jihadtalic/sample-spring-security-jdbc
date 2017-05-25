package com.springsecurity4.dao;

import com.springsecurity4.models.UserDetails;

public interface UserDetailsDao {

    public UserDetails findByUsername(String username);
}
