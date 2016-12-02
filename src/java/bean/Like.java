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
    private String timeLiked;
    private boolean onPost;
    
    public Like(String likerId, String mediumId, String timeLiked, boolean onPost) {
        this.likerId = likerId;
        this.mediumId = mediumId;
        this.timeLiked = timeLiked;
        this.onPost = onPost;
    }
    
    public String getLikerId() {
        return likerId;
    }
    
    public String getMediumId() {
        return mediumId;
    }
    
    public String getTimeLiked() {
        return timeLiked;
    }
    
    public boolean onPost() {
        return onPost;
    }
}
