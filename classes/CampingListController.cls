public with sharing class CampingListController {

    @AuraEnabled
    public static List<Camping_Item__c> getItems() {
        // Perform isAccessible() checking first, then
        return [SELECT Id, Name, price__c, Quantity__c, Packed__c 
                FROM Camping_Item__c];
    }
    
    @AuraEnabled
    public static Camping_Item__c saveItem(Camping_Item__c campingItem) {
       // List<Camping_Item__c> newList = getItems();
       // system.debug('the new item '+campingItem);
       // system.debug('campingItem b4 adding'+newList);
       //newList.add(campingItem);
       // system.debug('campingItem after adding'+newList);
        upsert campingItem; 
        return campingItem;
    }
}