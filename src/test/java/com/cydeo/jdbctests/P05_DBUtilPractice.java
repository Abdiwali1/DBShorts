package com.cydeo.jdbctests;

import com.cydeo.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class P05_DBUtilPractice {

    @Test
    public  void dbUtilPractice() {
        // Create connection
        DB_Util.createConnection();

        // Run Query
        DB_Util.runQuery("select * from countries");

        System.out.println("GET ME ROW COUNT ");
        int rowCount = DB_Util.getRowCount();
        System.out.println(rowCount);

        System.out.println("GET ME COLUMN COUNT ");
        int columnCount = DB_Util.getColumnCount();
        System.out.println(columnCount);

        System.out.println("GET ALL COLUMN NAME AS LIST");
        List<String> allColumnNamesAsList = DB_Util.getAllColumnNamesAsList();
        System.out.println(allColumnNamesAsList);

        System.out.println("GET ROW DATA AS LIST");
        List<String> rowDataAsList = DB_Util.getRowDataAsList(2);
        System.out.println(rowDataAsList);

        System.out.println("GET CELL VALUE --> int rowNum , int columnIndex");
        String cellValue = DB_Util.getCellValue(5, 2);
        System.out.println(cellValue);

        System.out.println("GET CELL VALUE --> int rowNum ,String columnName");
        String countryName = DB_Util.getCellValue(5, "country_name");
        System.out.println(countryName);

        System.out.println("GET FIRST ROW FIRST COLUMN VALUE");
        String firstRowFirstColumn = DB_Util.getFirstRowFirstColumn();
        System.out.println(firstRowFirstColumn);

        System.out.println("GET COLUMN DATA AS LIST--> int columnNum");
        List<String> columnDataAsList = DB_Util.getColumnDataAsList(2);
        System.out.println(columnDataAsList);

        System.out.println("GET COLUMN DATA AS LIST--> String columnName");
        List<String> countryNames= DB_Util.getColumnDataAsList("country_name");
        System.out.println(countryNames);

        System.out.println("GET ROW MAP");
        Map<String, String> rowMap = DB_Util.getRowMap(5);
        System.out.println(rowMap);

        System.out.println("GET ALL ROW AS LIST OF MAP");
        List<Map<String, String>> allRowAsListOfMap = DB_Util.getAllRowAsListOfMap();

        for (Map<String, String> eachRowMap : allRowAsListOfMap) {
            System.out.println(eachRowMap);
        }


        //Close Connection
        DB_Util.destroy();

    }
}
