/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nhinh.article;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;
import nhinh.account.AccountDAO;
import nhinh.account.AccountDTO;
import nhinh.utils.DBHelper;

/**
 *
 * @author PC
 */
public class ArticleDAO implements Serializable {

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

    private List<ArticleDTO> articleList;

    public List<ArticleDTO> getArticleList() {
        return articleList;
    }

    public void getAllArticle() throws SQLException, NamingException {
        AccountDAO adao = new AccountDAO();
        try {
            con = DBHelper.makeConnection();
            if (con != null) {
                String sql = "select postID,email, title, description, image,statusID, date "
                        + "from Article "
                        + "where statusID = (select statusID from Status where statusName = 'Active')";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    String postID = rs.getString("postID");
                    String email = rs.getString("email");
                    AccountDTO adto = adao.getAccountDTO(email);
                    String title = rs.getString("title");
                    String description = rs.getString("description");
                    String image = rs.getString("image");
                    String statusID = rs.getString("statusID");
                    String date = rs.getString("date");
                    ArticleDTO articleDTO = new ArticleDTO(postID, adto, title, description, image, statusID, date);
                    if (this.articleList == null) {
                        this.articleList = new ArrayList<>();
                    }
                    this.articleList.add(articleDTO);
                }
            }
        } finally {
            closeConnection();
        }
    }
}
