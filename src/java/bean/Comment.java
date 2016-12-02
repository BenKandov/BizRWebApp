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
    
    public Comment(String postId, String authorId, String content, List<Like> likes) {
        this.postId = postId;
        this.authorId = authorId;
        this.content = content;
        this.likes = likes;
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
}
