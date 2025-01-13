package com.cydeo.jdbstests.day1_JDBC_Intro;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P01_JDBCIntro {

    String dbURL = "jdbc:oracle:thin:@44.203.92.141:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {

        //Create the connection
        //DriverManager class getConnection Method will help to connect database
        Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

        //It will help us to execute queries
        Statement statement = conn.createStatement();

        //ResultSet will store data after execution. It stores only data(there is no table info)
        ResultSet rs = statement.executeQuery("select * from DEPARTMENTS where MANAGER_ID is not null"); // buraya EMPLOYEES yazarsan onu table kullanir

        //10-Administration-200-1700

        while (rs.next()){
            System.out.println(rs.getString(1)+"-"+rs.getString(2)+"-"+rs.getString(3)+"-"+rs.getString(4));
        }

        //Can we run another query in same connection ? -YES
        rs= statement.executeQuery("select * from LOCATIONS");

        //1297 Via Cola di Rie - Roma
        while (rs.next()) {
            System.out.println(rs.getString(2)+" - "+rs.getString(4));
        }




    }
}
