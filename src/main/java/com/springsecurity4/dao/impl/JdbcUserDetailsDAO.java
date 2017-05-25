package com.springsecurity4.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;

import com.springsecurity4.dao.UserDetailsDao;
import com.springsecurity4.models.UserDetails;


public class JdbcUserDetailsDAO implements UserDetailsDao {

    private DataSource dataSource;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public UserDetails findByUsername(String username){

        String sql = "SELECT * FROM users AS u JOIN user_details AS ur ON u.id=ur.user_id WHERE u.username=?";

        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            UserDetails userDetails = null;
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                userDetails = new UserDetails(
                    rs.getInt("user_id"),
                    rs.getString("first_name"),
                    rs.getString("last_name"),
                    rs.getString("company_name")
                );
            }
            rs.close();
            ps.close();
            return userDetails;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                conn.close();
                } catch (SQLException e) {}
            }
        }
    }
}

