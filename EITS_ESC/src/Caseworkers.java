/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author 6105411017
 */
public class Caseworkers {
    private int id_caseworkers;
    private String firstname;
    private String lastname;
    private String caseworkerPassword;
    private String username;
    
public Caseworkers() {
    
    
}
public Caseworkers(int id, String fname, String lname, String password, String Uname) {
    id_caseworkers = id;
    firstname = fname;
    lastname = lname;
    caseworkerPassword = password;
    username = Uname;
    
}
    

    /**
     * @return the id_caseworkers
     */
    public int getId_caseworkers() {
        return id_caseworkers;
    }

    /**
     * @param id_caseworkers the id_caseworkers to set
     */
    public void setId_caseworkers(int id_caseworkers) {
        this.id_caseworkers = id_caseworkers;
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
     * @return the caseworkerPassword
     */
    public String getCaseworkerPassword() {
        return caseworkerPassword;
    }

    /**
     * @param caseworkerPassword the caseworkerPassword to set
     */
    public void setCaseworkerPassword(String caseworkerPassword) {
        this.caseworkerPassword = caseworkerPassword;
    }

    /**
     * @return the caseworkerAge
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the caseworkerAge to set
     */
    public void setUsername(String username) {
        this.username = username;
    }
}//end of Caseworkers sets and gets: Christian
