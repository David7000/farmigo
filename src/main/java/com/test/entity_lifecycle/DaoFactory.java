package com.test.entity_lifecycle;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
   http://stackoverflow.com/questions/707874/differences-between-index-primary-unique-fulltext-in-mysql
*/

public class DaoFactory {
    private String url;
    private String username;
    private String password;

    DaoFactory(String url, String username, String password) {
        this.url = url;
        this.username = username;
        this.password = password;
    }

    public static DaoFactory getInstance() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {

        }

        DaoFactory instance = new DaoFactory(com.test.util.ServerDataBase.DATABASE, com.test.util.ServerDataBase.LOGIN, com.test.util.ServerDataBase.PASSWORD);
        return instance;
    }

    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url, username, password);
    }

}