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
public class Post {
    private int PostId;
    private int AuthorId;
    private String Author;
    private String Content;
    private String PostedDate;
    private List<Comment> Comments;
    private List<Like> Likes;

    
    
    public Post(int postId, int authorId,String content, String postedDate,
            List<Comment> comments,List<Like> likes){
        
        
        
    }
        
    /**
     * @return the PostId
     */
    public int getPostId() {
        return PostId;
    }

    /**
     * @param PostId the PostId to set
     */
    public void setPostId(int PostId) {
        this.PostId = PostId;
    }

    /**
     * @return the AuthorId
     */
    public int getAuthorId() {
        return AuthorId;
    }

    /**
     * @param AuthorId the AuthorId to set
     */
    public void setAuthorId(int AuthorId) {
        this.AuthorId = AuthorId;
    }

    /**
     * @return the Author
     */
    public String getAuthor() {
        return Author;
    }

    /**
     * @param Author the Author to set
     */
    public void setAuthor(String Author) {
        this.Author = Author;
    }

    /**
     * @return the Content
     */
    public String getContent() {
        return Content;
    }

    /**
     * @param Content the Content to set
     */
    public void setContent(String Content) {
        this.Content = Content;
    }

    /**
     * @return the PostedDate
     */
    public String getPostedDate() {
        return PostedDate;
    }

    /**
     * @param PostedDate the PostedDate to set
     */
    public void setPostedDate(String PostedDate) {
        this.PostedDate = PostedDate;
    }

    /**
     * @return the Comments
     */
    public List<Comment> getComments() {
        return Comments;
    }

    /**
     * @param Comments the Comments to set
     */
    public void setComments(List<Comment> Comments) {
        this.Comments = Comments;
    }

    /**
     * @return the Likes
     */
    public List<Like> getLikes() {
        return Likes;
    }

    /**
     * @param Likes the Likes to set
     */
    public void setLikes(List<Like> Likes) {
        this.Likes = Likes;
    }
    
    
    
}
