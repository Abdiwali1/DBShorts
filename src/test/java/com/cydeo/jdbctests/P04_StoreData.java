package com.cydeo.jdbctests;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class P04_StoreData {


    String dbUrl="jdbc:oracle:thin:@3.83.69.218:1521:XE";
    String dbPassword="hr";
    String dbUsername="hr";

    @Test
    public void storeData() throws SQLException {

        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        Statement stmnt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        ResultSet rs = stmnt.executeQuery("select * from countries");

        ResultSetMetaData rsmd = rs.getMetaData();

        List<Map<String,Object>> dataList=new ArrayList<>();

        //iterate each row
        while(rs.next()){
            Map<String,Object> rowMap=new LinkedHashMap<>();
            //iterate each column
            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                rowMap.put(rsmd.getColumnName(i),rs.getString(i));
            }

            dataList.add(rowMap);

        }

        for (Map<String, Object> eachRowMap : dataList) {
            System.out.println(eachRowMap);
        }


        rs.close();

        stmnt.close();

        conn.close();
    }
}
