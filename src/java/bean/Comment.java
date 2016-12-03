/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.util.List;

/**
 *
 * @author benkandov
 */
public class Comment {
    
    private String postId;
    private String authorId;
    private String content;
    List<Like> likes;
    private String datePosted;
    private String commentId;
    
    public Comment(String commentId,String postId, String authorId, String content, List<Like> likes, String dateposted) {
        this.commentId = commentId;
        this.postId = postId;
        this.authorId = authorId;
        this.content = content;
        this.likes = likes;
        this.datePosted = dateposted;
    }
    
    public Comment(){
        
    }
    
    public String getPostId() {
        return postId;
    }
    
    public String getAuthorId() {
        return authorId;
    }
    
    public String getContent() {
        return content;
    }
    
    public void setContent(String newContent) {
        content = newContent;
    }
    
    public List<Like> getLikes() {
        return likes;
    }

    /**
     * @return the datePosted
     */
    public String getDatePosted() {
        return datePosted;
    }

    /**
     * @param datePosted the datePosted to set
     */
    public void setDatePosted(String datePosted) {
        this.datePosted = datePosted;
    }

    /**
     * @return the commentId
     */
    public String getCommentId() {
        return commentId;
    }

    /**
     * @param commentId the commentId to set
     */
    public void setCommentId(String commentId) {
        this.commentId = commentId;
    }

    /**
     * @param authorId the authorId to set
     */
    public void setAuthorId(String authorId) {
        this.authorId = authorId;
    }

    /**
     * @param postId the postId to set
     */
    public void setPostId(String postId) {
        this.postId = postId;
    }
}
