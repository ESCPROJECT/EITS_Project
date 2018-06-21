/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author 8100548118
 */
public class Customer {
    private int myAge;
    private String myUname;
    private String myFname;
    private String myLname;
    private String myPassword;
    
public Customer(){
    
    
}

public Customer(int age, String Uname, String Fname, String Lname, String Password){
    myAge = age;
    myUname = Uname;    
    myFname = Fname;
    myLname = Lname;
    myPassword = Password;
    
}


    /**
     * @return the myAge
     */
    public int getMyAge() {
        return myAge;
    }

    /**
     * @param myAge the myAge to set
     */
    public void setMyAge(int myAge) {
        this.myAge = myAge;
    }

    /**
     * @return the myEmail
     */
    public String getMyUname() {
        return myUname;
    }

    /**
     * @param myUname the myEmail to set
     */
    public void setMyUname(String myUname) {
        this.myUname = myUname;
    }

    /**
     * @return the myFname
     */
    public String getMyFname() {
        return myFname;
    }

    /**
     * @param myFname the myFname to set
     */
    public void setMyFname(String myFname) {
        this.myFname = myFname;
    }

    /**
     * @return the myLname
     */
    public String getMyLname() {
        return myLname;
    }

    /**
     * @param myLname the myLname to set
     */
    public void setMyLname(String myLname) {
        this.myLname = myLname;
    }

    /**
     * @return the myPassword
     */
    public String getMyPassword() {
        return myPassword;
    }

    /**
     * @param myPassword the myPassword to set
     */
    public void setMyPassword(String myPassword) {
        this.myPassword = myPassword;
    }
}
