package com.cydeo.jdbctests;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P03_MetaDataTest {

    String dbUrl="jdbc:oracle:thin:@100.26.138.222:1521:XE";
    String dbPassword="hr";
    String dbUsername="hr";

    @Test
    public void dbMetaData() throws SQLException {

        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        DatabaseMetaData dbMetaData = conn.getMetaData();

        System.out.println("dbMetaData.getUserName() = " + dbMetaData.getUserName());
        System.out.println("dbMetaData.getDriverName() = " + dbMetaData.getDriverName());
        System.out.println("dbMetaData.getDriverVersion() = " + dbMetaData.getDriverVersion());
        System.out.println("dbMetaData.getDatabaseProductName() = " + dbMetaData.getDatabaseProductName());
        System.out.println("dbMetaData.getDatabaseProductVersion() = " + dbMetaData.getDatabaseProductVersion());


        conn.close();

    }

    @Test
    public void rsMetaData() throws SQLException {

        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        Statement stmnt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        ResultSet rs = stmnt.executeQuery("select * from countries");


        // ResultSetMetaData --> It is data about table itself
        // we are gonna get information about columnCount and columnName

        ResultSetMetaData rsmd = rs.getMetaData();

        // How many column we have
        int columnCount = rsmd.getColumnCount();
        System.out.println(columnCount);

        // What is the second column name
        System.out.println(rsmd.getColumnName(2));

        for (int i = 1; i <= columnCount; i++) {
            System.out.println("rsmd.getColumnName(i) = " + rsmd.getColumnName(i));
        }

        /*
                HOW TO GET DATA DYNAMICALLY FROM ANY QUERY ?

            ResultSet --> It holds table content/data

                rs.next()--> to iterate each row dynamically

                rs.getString(columnIndex) --> data from that cell
                rs.getString(columnName) --> data from that cell


            ResultSet MetaData --> It holds table information

                rsmd.getColumnCount() --> how many column we have
                rsmd.getColumnName(columnIndex) --> gives columName

         */


        // COUNTRY_ID - AR COUNTRY_NAME - Argentina REGION_ID - 2


        // iterate each row dynamically
        while(rs.next()){

            // iterate each column
            for (int i = 1; i <= columnCount; i++) {
                System.out.print(rsmd.getColumnName(i)+" - "+rs.getString(i)+" ");
            }
            System.out.println();
        }


        rs.close();

        stmnt.close();

        conn.close();


    }
}
