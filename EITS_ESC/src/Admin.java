/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author 6105411017
 */
public class Admin {
    private int id_admin;
    private String firstname;
    private String lastname;
    private String username;
    private String password;
    
    public Admin(){
        
        
    }
    public Admin(int id, String fname, String lname, String uname, String mypassword){
    id_admin = id;
    firstname = fname;
    lastname = lname;
    username = uname;
    password = mypassword;
        
    }
    /**
     * @return the id_admin
     */
    public int getId_admin() {
        return id_admin;
    }

    /**
     * @param id_admin the id_admin to set
     */
    public void setId_admin(int id_admin) {
        this.id_admin = id_admin;
    }

    /**
     * @return the firstname
     */
    public String getFirstname() {
        return firstname;
    }

    /**
     * @param firstname the firstname to set
     */
    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    /**
     * @return the lastname
     */
    public String getLastname() {
        return lastname;
    }

    /**
     * @param lastname the lastname to set
     */
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }
            
}//end of Admin Class sets and gets: Christian
