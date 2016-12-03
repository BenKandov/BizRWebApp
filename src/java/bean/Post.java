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
    private String PostId;
    private String AuthorId;
    private String Author;
    private String Content;
    private String PostedDate;
    private String pageId;
    private List<Comment> Comments;
    private List<Like> Likes;

    
    
    public Post(String PostId, String AuthorId,String Content, String PostedDate,
            List<Comment> Comments,List<Like> Likes){
        this.PostId = PostId;
        this.AuthorId = AuthorId;
        this.Content = Content;
        this.PostedDate = PostedDate;
        this.Comments = Comments;
        this.Likes = Likes;
    }
    public Post(){
        
    }
        
    /**
     * @return the PostId
     */
    public String getPostId() {
        return PostId;
    }

    /**
     * @param PostId the PostId to set
     */
    public void setPostId(String PostId) {
        this.PostId = PostId;
    }

    /**
     * @return the AuthorId
     */
    public String getAuthorId() {
        return AuthorId;
    }

    /**
     * @param AuthorId the AuthorId to set
     */
    public void setAuthorId(String AuthorId) {
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

    /**
     * @return the pageId
     */
    public String getPageId() {
        return pageId;
    }

    /**
     * @param pageId the pageId to set
     */
    public void setPageId(String pageId) {
        this.pageId = pageId;
    }
    
    
    
}
