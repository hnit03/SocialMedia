/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nhinh.role;

import java.io.Serializable;

/**
 *
 * @author PC
 */
public class RoleDTO implements Serializable{
    private String roleID;
    private String roleName;

    public RoleDTO() {
    }

    public RoleDTO(String roleID, String roleName) {
        this.roleID = roleID;
        this.roleName = roleName;
    }

    /**
     * @return the roleID
     */
    public String getRoleID() {
        return roleID;
    }

    /**
     * @param roleID the roleID to set
     */
    public void setRoleID(String roleID) {
        this.roleID = roleID;
    }

    /**
     * @return the roleName
     */
    public String getRoleName() {
        return roleName;
    }

    /**
     * @param roleName the roleName to set
     */
    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
}