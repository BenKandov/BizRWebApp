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
public class Ad {
    private String 
            Company, ItemName, Content, UnitPrice,
            NumAvailableUnits, AdvertisementType;

    public Ad(){
        
    }
    /**
     * @return the Company
     */
    public String getCompany() {
        return Company;
    }

    /**
     * @param Company the Company to set
     */
    public void setCompany(String Company) {
        this.Company = Company;
    }

    /**
     * @return the ItemName
     */
    public String getItemName() {
        return ItemName;
    }

    /**
     * @param ItemName the ItemName to set
     */
    public void setItemName(String ItemName) {
        this.ItemName = ItemName;
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
     * @return the UnitPrice
     */
    public String getUnitPrice() {
        return UnitPrice;
    }

    /**
     * @param UnitPrice the UnitPrice to set
     */
    public void setUnitPrice(String UnitPrice) {
        this.UnitPrice = UnitPrice;
    }

    /**
     * @return the NumAvailableUnits
     */
    public String getNumAvailableUnits() {
        return NumAvailableUnits;
    }

    /**
     * @param NumAvailableUnits the NumAvailableUnits to set
     */
    public void setNumAvailableUnits(String NumAvailableUnits) {
        this.NumAvailableUnits = NumAvailableUnits;
    }

    /**
     * @return the AdvertisementType
     */
    public String getAdvertisementType() {
        return AdvertisementType;
    }

    /**
     * @param AdvertisementType the AdvertisementType to set
     */
    public void setAdvertisementType(String AdvertisementType) {
        this.AdvertisementType = AdvertisementType;
    }
    
            
}
