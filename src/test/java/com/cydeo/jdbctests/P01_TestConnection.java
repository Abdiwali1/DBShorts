package com.cydeo.jdbctests;

import java.sql.*;

public class P01_TestConnection {
    public static void main(String[] args) throws SQLException {

        // Connection String

        String dbUrl="jdbc:oracle:thin:@100.26.138.222:1521:XE";
        String dbPassword="hr";
        String dbUsername="hr";

        // DriverManager will help us to create Connection
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // CreateStatement method will create Statement to execute queries
        Statement stmnt = conn.createStatement();

        // We are going to store all information in RESULTSET
        ResultSet rs = stmnt.executeQuery("select country_id,country_name from countries");

        /*

        // RETRIEVE DATA
        // As a default it shows beforeFirst()
        // use next() method to jump in first row

        rs.next(); // true if the new current row is valid; false if there are no more rows

        // Print country_id from first column (country_id)
        System.out.println("rs.getString(1) = " + rs.getString(1));
        System.out.println("rs.getString(\"country_id\") = " + rs.getString("country_id"));
        // Print country_name from second column (country_name)
        System.out.println("rs.getString(2) = " + rs.getString(2));
        System.out.println("rs.getString(\"country_name\") = " + rs.getString("country_name"));


        rs.next();
        // Print country_id and country_name in following format
        // COUNTRY_ID - COUNTRY_NAME
        // AR - Argentina

        System.out.println(rs.getString(1)+" - "+rs.getString(2));

        rs.next();
        System.out.println(rs.getString(1)+" - "+rs.getString(2));

        rs.next();
        System.out.println(rs.getString(1)+" - "+rs.getString(2));
        */

        // What if we have 1000 row ?

        while(rs.next()){
            System.out.println(rs.getString(1)+" - "+rs.getString(2));
        }


        rs.close();
        stmnt.close();
        conn.close();

    }
}
