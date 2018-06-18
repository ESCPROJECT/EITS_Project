/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author 8100548118
 * demo purpose only
 */
public class Eits_db {
    Connection conn;
    
    public Connection getConnection(){
        try{
            conn = (Connection)DriverManager.getConnection("jbdc:mysql://localhost:3306/eits_db","root","");
            return conn;
        } catch(Exception e) {
            e.printStackTrace();
            return null;
        } // End of Catch
    } //End of GetConnection
    
    public ArrayList<Admin> getAllAdmin(){
        ArrayList<Admin> myAdminList = new ArrayList<Admin>();
        getConnection();
        // Set up the query
        String query = "SELECT * FROM admin";
        Statement st;
        ResultSet rs;
        
        //Execute the query
        try {
            st = conn.createStatement();
            rs = st.executeQuery(query);
            Admin myAdmin;
            
            // Add user objects to the ArrayList
            while (rs.next()) {
                myAdmin = new Admin(rs.getInt("admin_id"), rs.getString("fname"), rs.getString ("lname"));
                myAdminList.add(myAdmin);
            } // End of while Loop
        } catch (Exception e){
            
        } // End of try catch block
        //
        // this needs a return 
        return myAdminList;
        
    }// End of getAllAdmin
    
    public Admin getAdmin(int myId){
        getConnection();
        //Admin myAdmin = new Admin();
        Statement st;
        ResultSet rs;
        
        String query = "SELECT * FROM admin WHERE admin_id = " + myId;
        // Populate admin object from rs object
        //Execute the query
        try {
            st = conn.createStatement();
            rs = st.executeQuery(query);
            Admin myAdmin;
            
            // Add admin objects to the ArrayList
            while (rs.next()) {
                myAdmin = new Admin(rs.getInt("admin_id"), rs.getString("fname"), rs.getString ("lname"));
                return myAdmin;
            } // End of while Loop
        } catch (Exception e){
            
        } // End of try catch block
        
        return null;
        
    } // End of getAdmin
            
    
} // End of Class
