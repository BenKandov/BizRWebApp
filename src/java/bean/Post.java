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
    private String postId;
    private String authorId;
    private String author;
    private String content;
    private String postedDate;
    private String pageId;
    private List<Comment> comments;
    private List<Like> likes;

    
    
    public Post(String postId, String authorId,String content, String postedDate,
            List<Comment> comments,List<Like> likes){
        this.postId = postId;
        this.authorId = authorId;
        this.content = content;
        this.postedDate = postedDate;
        this.comments = comments;
        this.likes = likes;
    }
    public Post(){
        
    }
        
    /**
     * @return the PostId
     */
    public String getPostId() {
        return postId;
    }

    /**
     * @param PostId the PostId to set
     */
    public void setPostId(String PostId) {
        this.postId = PostId;
    }

    /**
     * @return the AuthorId
     */
    public String getAuthorId() {
        return authorId;
    }

    /**
     * @param AuthorId the AuthorId to set
     */
    public void setAuthorId(String AuthorId) {
        this.authorId = AuthorId;
    }

    /**
     * @return the Author
     */
    public String getAuthor() {
        return author;
    }

    /**
     * @param Author the Author to set
     */
    public void setAuthor(String Author) {
        this.author = Author;
    }

    /**
     * @return the Content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param Content the Content to set
     */
    public void setContent(String Content) {
        this.content = Content;
    }

    /**
     * @return the PostedDate
     */
    public String getPostedDate() {
        return postedDate;
    }

    /**
     * @param PostedDate the PostedDate to set
     */
    public void setPostedDate(String PostedDate) {
        this.postedDate = PostedDate;
    }

    /**
     * @return the Comments
     */
    public List<Comment> getComments() {
        return comments;
    }

    /**
     * @param Comments the Comments to set
     */
    public void setComments(List<Comment> Comments) {
        this.comments = Comments;
    }

    /**
     * @return the Likes
     */
    public List<Like> getLikes() {
        return likes;
    }

    /**
     * @param Likes the Likes to set
     */
    public void setLikes(List<Like> Likes) {
        this.likes = Likes;
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
