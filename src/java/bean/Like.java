/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author benkandov
 */
public class Like {
    private String likerId;
    private String mediumId;
    private boolean onPost;
    
    public Like(String likerId, String mediumId, boolean onPost) {
        this.likerId = likerId;
        this.mediumId = mediumId;
        this.onPost = onPost;
    }
    
    public String getLikerId() {
        return likerId;
    }
    
    public String getMediumId() {
        return mediumId;
    }
    
    public boolean onPost() {
        return onPost;
    }
}
