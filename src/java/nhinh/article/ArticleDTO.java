/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nhinh.article;

import java.io.Serializable;
import nhinh.account.AccountDTO;

/**
 *
 * @author PC
 */
public class ArticleDTO implements Serializable{
    private String postID;
    private AccountDTO account;
    private String title;
    private String content;
    private String image;
    private String statusID;
    private String date;

    public ArticleDTO() {
    }

    public ArticleDTO(String postID, AccountDTO account, String title, String content, String image, String statusID, String date) {
        this.postID = postID;
        this.account = account;
        this.title = title;
        this.content = content;
        this.image = image;
        this.statusID = statusID;
        this.date = date;
    }

    /**
     * @return the postID
     */
    public String getPostID() {
        return postID;
    }

    /**
     * @param postID the postID to set
     */
    public void setPostID(String postID) {
        this.postID = postID;
    }

    /**
     * @return the account
     */
    public AccountDTO getAccount() {
        return account;
    }

    /**
     * @param account the account to set
     */
    public void setAccount(AccountDTO account) {
        this.account = account;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content the content to set
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * @return the image
     */
    public String getImage() {
        return image;
    }

    /**
     * @param image the image to set
     */
    public void setImage(String image) {
        this.image = image;
    }

    /**
     * @return the statusID
     */
    public String getStatusID() {
        return statusID;
    }

    /**
     * @param statusID the statusID to set
     */
    public void setStatusID(String statusID) {
        this.statusID = statusID;
    }

    /**
     * @return the date
     */
    public String getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(String date) {
        this.date = date;
    }
    
    
}
