
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;

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
    public static Connection getConnection(){
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
         ArrayList<Admin> myList =  new ArrayList<Admin>();
         return myList;
    }
    //end of getAdminList:christian
    
    public static Admin getAdmin(String userName, String mypassword){
        getConnection();
        Statement st;
        ResultSet rs = null;
        
        ArrayList <Admin> userList;
        String query = "SELECT * FROM `admin` WHERE Uname = '" + userName + 
                "' AND password = '" + mypassword + "'";
        
         try{
           st = conn.createStatement();
           rs = st.executeQuery("SELECT * FROM `admin` WHERE Uname = 'adminusername' AND password = 'password' ");
           Admin user;
        rs.beforeFirst();
        JOptionPane.showMessageDialog( null, rs.next(), "Query Results", JOptionPane.INFORMATION_MESSAGE );
        // add user objects to the ArrayList
        while(rs.next()) {
        JOptionPane.showMessageDialog( null, "No rows found.", "Query Results", JOptionPane.INFORMATION_MESSAGE );
        user = new Admin(rs.getInt("admin_id"),rs.getString("fname"), rs.getString("lname"),rs.getString("password"),rs.getString("Uname"));
        return user;
         
        } // end of while loop 
       
       } catch (Exception e) {
         
       
       }// end of try catch block
      return null;
         
    }//end of admin method
    public static Customer getCustomers(String userName, String mypassword){
        getConnection();
        Statement st;
        ResultSet rs;
        
        String query = "SELECT * FROM `customers` WHERE Uname = '" + userName + 
                "' AND password = '" + mypassword + "'";
        
         try{
           st = conn.createStatement();
           rs = st.executeQuery(query);
           Customer user;
        // add user objects to the ArrayList
        while(rs.next()) {
        user = new Customer(rs.getInt("age"),rs.getString("fname"), rs.getString("lname"),rs.getString("password"),rs.getString("Uname"),rs.getString("type"));
        return user;
         
        } // end of while loop 
       
       } catch (Exception e) {
         
       
       }// end of try catch block
      return null;
         
    }//end of Customer method
        public static Caseworkers getCaseworker(String userName, String mypassword){
        getConnection();
        Statement st;
        ResultSet rs;
        
        String query = "SELECT * FROM `caseworkers` WHERE Uname = '" + userName + 
                "' AND password = '" + mypassword + "'";
        
         try{
           st = conn.createStatement();
           rs = st.executeQuery(query);
           Caseworkers user;
        // add user objects to the ArrayList
        while(rs.next()) {
        user = new Caseworkers(rs.getInt("age"),rs.getString("fname"), rs.getString("lname"),rs.getString("password"),rs.getString("Uname"));
        return user;
         
        } // end of while loop 
       
       } catch (Exception e) {
         
       
       }// end of try catch block
      return null;
         
    }//end of Caseworker method
        
    /*    
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

    */
}

    