public class AssetListController {
    
    public List<Asset> getAssets() {

        String userId = UserInfo.getUserId();
        List<Asset> assets = [SELECT Name,Current_Price__c,Current_Value__c,PurchaseDate,AccountId
                              FROM Asset];
        
        //Where AccountId in (Select AccountId from User where Id = :userId)] ;
        return assets;
    }

}