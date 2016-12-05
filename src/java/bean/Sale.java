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
public class Sale {
    private String adId, AccountId, NumUnits;

    /**
     * @return the adId
     */
    public String getAdId() {
        return adId;
    }

    /**
     * @param adId the adId to set
     */
    public void setAdId(String adId) {
        this.adId = adId;
    }

    /**
     * @return the AccountId
     */
    public String getAccountId() {
        return AccountId;
    }

    /**
     * @param AccountId the AccountId to set
     */
    public void setAccountId(String AccountId) {
        this.AccountId = AccountId;
    }

    /**
     * @return the NumUnits
     */
    public String getNumUnits() {
        return NumUnits;
    }

    /**
     * @param NumUnits the NumUnits to set
     */
    public void setNumUnits(String NumUnits) {
        this.NumUnits = NumUnits;
    }
    
}
