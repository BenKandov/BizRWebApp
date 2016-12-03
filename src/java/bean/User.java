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
public class User {
    private String UserId;
    private String FirstName, LastName, Email, PhoneNumber, Address,
        State,City, ZipCode, CreditCard, CreationDate;
    
    public User(String userid, String fname, String lname,
            String email, String pnumber, String address, String state,
            String city, String zip, String credit, String creation){
        this.UserId = userid;
        this.FirstName = fname;
        this.LastName = lname;
        this.Email = email;
        this.PhoneNumber = pnumber;
        this.Address = address;
        this.State = state;
        this.City = city;
        this.ZipCode = zip;
        this.CreditCard = credit;
        this.CreationDate = creation;
    }
       public User( String fname, String lname,
            String email, String pnumber, String address, String state,
            String city, String zip, String credit){
  
        this.FirstName = fname;
        this.LastName = lname;
        this.Email = email;
        this.PhoneNumber = pnumber;
        this.Address = address;
        this.State = state;
        this.City = city;
        this.ZipCode = zip;
        this.CreditCard = credit;
    }
       
       public User(){
           
       }

    /**
     * @return the UserId
     */
    public String getUserId() {
        return UserId;
    }

    /**
     * @param UserId the UserId to set
     */
    public void setUserId(String UserId) {
        this.UserId = UserId;
    }

    /**
     * @return the FirstName
     */
    public String getFirstName() {
        return FirstName;
    }

    /**
     * @param FirstName the FirstName to set
     */
    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    /**
     * @return the LastName
     */
    public String getLastName() {
        return LastName;
    }

    /**
     * @param LastName the LastName to set
     */
    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    /**
     * @return the Email
     */
    public String getEmail() {
        return Email;
    }

    /**
     * @param Email the Email to set
     */
    public void setEmail(String Email) {
        this.Email = Email;
    }

    /**
     * @return the PhoneNumber
     */
    public String getPhoneNumber() {
        return PhoneNumber;
    }

    /**
     * @param PhoneNumber the PhoneNumber to set
     */
    public void setPhoneNumber(String PhoneNumber) {
        this.PhoneNumber = PhoneNumber;
    }

    /**
     * @return the Address
     */
    public String getAddress() {
        return Address;
    }

    /**
     * @param Address the Address to set
     */
    public void setAddress(String Address) {
        this.Address = Address;
    }

    /**
     * @return the State
     */
    public String getState() {
        return State;
    }

    /**
     * @param State the State to set
     */
    public void setState(String State) {
        this.State = State;
    }

    /**
     * @return the City
     */
    public String getCity() {
        return City;
    }

    /**
     * @param City the City to set
     */
    public void setCity(String City) {
        this.City = City;
    }

    /**
     * @return the ZipCode
     */
    public String getZipCode() {
        return ZipCode;
    }

    /**
     * @param ZipCode the ZipCode to set
     */
    public void setZipCode(String ZipCode) {
        this.ZipCode = ZipCode;
    }

    /**
     * @return the CreditCard
     */
    public String getCreditCard() {
        return CreditCard;
    }

    /**
     * @param CreditCard the CreditCard to set
     */
    public void setCreditCard(String CreditCard) {
        this.CreditCard = CreditCard;
    }

    /**
     * @return the CreationDate
     */
    public String getCreationDate() {
        return CreationDate;
    }

    /**
     * @param CreationDate the CreationDate to set
     */
    public void setCreationDate(String CreationDate) {
        this.CreationDate = CreationDate;
    }
    
}
