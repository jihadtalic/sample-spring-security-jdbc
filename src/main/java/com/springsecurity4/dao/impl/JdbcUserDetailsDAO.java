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

        String query = "SELECT u.id as user_id, username, isactive, first_name, last_name, company_name, string_agg(role,', ') as roles FROM users u JOIN user_details AS ud ON u.id=ud.user_id JOIN user_roles AS ur ON u.id=ur.user_id JOIN roles AS r ON ur.role_id=r.id WHERE u.username=? GROUP BY  u.id, username, isactive, first_name, last_name, company_name";

        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, username);
            UserDetails userDetails = null;
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                userDetails = new UserDetails(
                    rs.getInt("user_id"),
                    rs.getString("first_name"),
                    rs.getString("last_name"),
                    rs.getString("company_name"),
                    rs.getString("roles"),
                    rs.getString("isactive")
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

