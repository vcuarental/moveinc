public class MyCaseListController {
@AuraEnabled
public static List<Case> getCases(Id recordId) {
   return [SELECT Account.Name,Contact.Email,CreatedBy.Name, Email__c,CreatedDate, Subject, Priority, Ownername__c FROM Case Where AccountId = :recordId];
    }
}