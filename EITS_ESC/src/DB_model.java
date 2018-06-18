
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;

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
    } // end of get connection
    public ArrayList<Admin> getAdminList(){
         
    }//end of getAdminList:christian
     
    public ArrayList<Caseworkers> getCaseworkersList(){
         
    }//end of getCaseworkers:christian
     
    public ArrayList<Courses> getCoursesList(){
         
    }//end of getCoursesList:christian
    public ArrayList<Customers> getCustomersList(){
         
    }//end of getCustomersList:christian
    public ArrayList<Units> getUnitsList(){
         
    }//end of getUnitsList:christian
    public ArrayList<Units> getUnitsList(){
         
    }//end of getUnitsList:christian
    
    //END OF GETS: Christian
    
    
}
