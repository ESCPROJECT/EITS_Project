
import java.sql.Connection;
import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author 6105411017
 */
public class DB_model {
    static Connection conn;
    public Connection getConnection(){
    /* connection to database:christian
        */
        try{
         conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/eits_db","root","");
         return conn;
        } catch( Exception e) {
          e.printStackTrace();
          return null;
        } // end of catch
    } // end of get
}