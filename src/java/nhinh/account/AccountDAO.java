/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nhinh.account;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.NamingException;
import nhinh.role.RoleDAO;
import nhinh.role.RoleDTO;
import nhinh.status.StatusDAO;
import nhinh.status.StatusDTO;
import nhinh.utils.DBHelper;

/**
 *
 * @author PC
 */
public class AccountDAO implements Serializable {

    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    private void closeConnection() throws SQLException {
        if (rs != null) {
            rs.close();
        }
        if (ps != null) {
            ps.close();
        }
        if (con != null) {
            con.close();
        }
    }

    public boolean checkLogin(String email, String password) throws SQLException, NamingException {

        boolean isCheck = false;
        try {
            con = DBHelper.makeConnection();
            if (con != null) {
                String sql = "select email,password "
                        + "from Account  "
                        + "where email = ? and password = ?";
                ps = con.prepareStatement(sql);
                ps.setString(1, email);
                ps.setString(2, password);
                rs = ps.executeQuery();
                if (rs.next()) {
                    String id = rs.getString("email");
                    String pass = rs.getString("password");
                    if (email.equals(id) && password.equals(pass)) {
                        isCheck = true;
                    }
                }
            }
        } finally {
            closeConnection();
        }
        return isCheck;
    }

    public AccountDTO getAccountDTO(String email) throws SQLException, NamingException {
        RoleDAO rdao = new RoleDAO();
        StatusDAO sdao = new StatusDAO();
        AccountDTO dTO = null;
        try {
            con = DBHelper.makeConnection();
            if (con != null) {
                String sql = "select password,fullname,roleID,statusID,avatar "
                        + "from Account "
                        + "where email = ? ";
                ps = con.prepareStatement(sql);
                ps.setString(1, email);
                rs = ps.executeQuery();
                if (rs.next()) {
                    String pass = rs.getString("password");
                    String roleID = rs.getString("roleID");
                    RoleDTO rdto = rdao.getRoleDTO(roleID);
                    String statusID = rs.getString("statusID");
                    StatusDTO sdto = sdao.getStatusDTO(statusID);
                    String fullname = rs.getString("fullname");
                    String avatar = rs.getString("avatar");
                    dTO = new AccountDTO(email, pass, fullname, rdto, sdto,avatar);
                }
            }
        } finally {
            closeConnection();
        }
        return dTO;
    }
    
    public boolean createNewAccount(AccountDTO dto) throws SQLException, NamingException {
        try {
            con = DBHelper.makeConnection();
            if (con != null) {
                String sql = "insert into Account(email,password,roleID,fullname,statusID,avatar) "
                        + "values(?,?,?,?,?,?)";
                ps = con.prepareStatement(sql);
                ps.setString(1, dto.getEmail());
                ps.setString(2, dto.getPassword());
                ps.setString(3, dto.getRoleDTO().getRoleID());
                ps.setString(4, dto.getName());
                ps.setString(5, dto.getStatusDTO().getStatusID());
                ps.setString(6, dto.getAvatar());
                int success = ps.executeUpdate();
                if (success == 1) {
                    return true;
                }
            }
        } finally {
            closeConnection();
        }
        return false;
    }

    public boolean checkEmailDup(String email) throws SQLException, NamingException {
        try {
            con = DBHelper.makeConnection();
            if (con != null) {
                String sql = "select email "
                        + "from Account "
                        + "where email = ?";
                ps = con.prepareStatement(sql);
                ps.setString(1, email);
                rs = ps.executeQuery();
                if (rs.next()) {
                    return true;
                }
            }
        } finally {
            closeConnection();
        }
        return false;
    }
    
     public boolean updateStatusActive(String username) throws SQLException, NamingException {
        try {
            con = DBHelper.makeConnection();
            if (con != null) {
                String sql = "update Account "
                        + "set statusID = (select statusID from Status where statusName = 'Active') "
                        + "where email = ?";
                ps = con.prepareStatement(sql);
                ps.setString(1, username);
                int success = ps.executeUpdate();
                if (success == 1) {
                    return true;
                }
            }
        } finally {
            closeConnection();
        }
        return false;
    }
}
