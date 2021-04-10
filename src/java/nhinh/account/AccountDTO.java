/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nhinh.account;

import java.io.Serializable;
import nhinh.role.RoleDTO;
import nhinh.status.StatusDTO;

/**
 *
 * @author PC
 */
public class AccountDTO implements Serializable {

    private String email;
    private String password;
    private String name;
    private RoleDTO roleDTO;
    private StatusDTO statusDTO;
    private String avatar;

    public AccountDTO() {
    }

    public AccountDTO(String email, String password, String name, RoleDTO roleDTO, StatusDTO statusDTO,String avatar) {
        this.email = email;
        this.password = password;
        this.name = name;
        this.roleDTO = roleDTO;
        this.statusDTO = statusDTO;
        this.avatar = avatar;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
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

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the roleDTO
     */
    public RoleDTO getRoleDTO() {
        return roleDTO;
    }

    /**
     * @param roleDTO the roleDTO to set
     */
    public void setRoleDTO(RoleDTO roleDTO) {
        this.roleDTO = roleDTO;
    }

    /**
     * @return the statusDTO
     */
    public StatusDTO getStatusDTO() {
        return statusDTO;
    }

    /**
     * @param statusDTO the statusDTO to set
     */
    public void setStatusDTO(StatusDTO statusDTO) {
        this.statusDTO = statusDTO;
    }

    /**
     * @return the avatar
     */
    public String getAvatar() {
        return avatar;
    }

    /**
     * @param avatar the avatar to set
     */
    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    
    
}
