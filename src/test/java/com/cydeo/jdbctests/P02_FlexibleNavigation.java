package com.cydeo.jdbctests;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.sql.*;

public class P02_FlexibleNavigation {
    String dbUrl="jdbc:oracle:thin:@3.83.69.218:1521:XE";
    String dbPassword="hr";
    String dbUsername="hr";

    @DisplayName("Flexible Navigation Test with COUNTRIES TABLE")
    @Test
    public  void flexibleNavigation() throws SQLException {

        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        Statement stmnt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        ResultSet rs = stmnt.executeQuery("select country_id,country_name from countries");


        // RETRIEVE DATA
        rs.next();
        System.out.println("----- FIRST ROW ------ ");
        System.out.println(rs.getString(1)+" - "+rs.getString(2));

        rs.next();
        System.out.println("----- SECOND ROW ------ ");
        System.out.println(rs.getString(1)+" - "+rs.getString(2));

        //ResultSet.TYPE_SCROLL_INSENSITIVE --> To make flexible navigation
        //ResultSet.CONCUR_READ_ONLY --> To make ResultSet Object not updatable

        // get data from row 10
        rs.absolute(10);
        System.out.println("----- ROW 10   ------ ");
        System.out.println(rs.getString(1)+" - "+rs.getString(2));

        System.out.println("----- GET ROW    ------ ");
        System.out.println(rs.getRow());

        // how many row we have ?
        // first we need to point last row then we are gonna use getRow method
        rs.last();
        System.out.println(rs.getString(1)+" - "+rs.getString(2));
        System.out.println(rs.getRow());


        rs.previous();
        System.out.println("----- PREVIOUS   ------ ");
        System.out.println(rs.getString(1)+" - "+rs.getString(2));


        rs.first();
        System.out.println("----- FIRST   ------ ");
        System.out.println(rs.getString(1)+" - "+rs.getString(2));


        System.out.println("----- PRINT ALL COUNTRY IDs and COUNTRY NAMEs    ------ ");

        rs.beforeFirst();
        System.out.println("----- BEFORE FIRST IS USED    ------ ");


        while(rs.next()){

            System.out.println(rs.getString(1)+" - "+rs.getString(2));

        }



        rs.close();

        stmnt.close();

        conn.close();

    }
}
