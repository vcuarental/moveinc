@isTest
public class AccountOperationsTest {
    @isTest static void testAccountHasDefaultDescription() {       
        // Perform test
        Test.startTest();
        Account acc = new Account(Name='Test Account');
        Database.SaveResult result = Database.insert(acc);
        Test.stopTest();
        // Verify
        Account savedAcc = [SELECT Description FROM Account WHERE Id = :result.getId()];
        System.assertEquals('Copa.do description', savedAcc.Description);
        System.assertEquals('688456789',savedAcc.Phone);
        System.assertEquals('www.copa.do',savedAcc.Website);
        System.assertEquals('Basauri, 6',savedAcc.BillingStreet);
    }
}