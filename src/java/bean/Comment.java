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
public class Comment {
    
    private String postId;
    private String authorId;
    private String content;
    
    public Comment(String postId, String authorId, String content) {
        this.postId = postId;
        this.authorId = authorId;
        this.content = content;
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
}
