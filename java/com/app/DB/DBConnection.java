package com.app.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection implements DBConfig{
    public static Connection getConn()
    {
        Connection con=null;
        try
        {
            Class.forName(Driver);
            con=DriverManager.getConnection(Url,Unm,Pw);
        
        }catch(Exception ee)
        {
        System.out.print(ee);
        }
        return con;
    }
}