/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author 8100548118
 */
class Admin {
    private int adminId;
    private String adminFname;
    private String adminLname;

    /**
     * @return the adminId
     */
    public int getAdminId() {
        return adminId;
    }
    
    public Admin() {
        
        
    }
    
    public Admin(int myId, String fName, String lName) {
        adminId = myId;
        adminFname = fName;
        adminLname = lName;
        
    }

    /**
     * @param adminId the adminId to set
     */
    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    /**
     * @return the adminFname
     */
    public String getAdminFname() {
        return adminFname;
    }

    /**
     * @param adminFname the adminFname to set
     */
    public void setAdminFname(String adminFname) {
        this.adminFname = adminFname;
    }

    /**
     * @return the adminLname
     */
    public String getAdminLname() {
        return adminLname;
    }

    /**
     * @param adminLname the adminLname to set
     */
    public void setAdminLname(String adminLname) {
        this.adminLname = adminLname;
    }
}
