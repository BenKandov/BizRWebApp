/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author Shane Kennedy
 */
public class Interest {
    private String accountNumber;
    private String interestTag;
    
    public Interest() {
        accountNumber = null;
        interestTag = null;
    }
    
    public Interest(String accountNumber, String interestTag) {
        this.accountNumber = accountNumber;
        this.interestTag = interestTag;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public String getInterestTag() {
        return interestTag;
    }

    public void setInterestTag(String interestTag) {
        this.interestTag = interestTag;
    }
   
}
