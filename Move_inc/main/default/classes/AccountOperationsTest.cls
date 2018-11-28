@isTest
public class AccountOperationsTest {
    @isTest static void testAccountHasDefaultDescription() {       
        // Perform test
        Test.startTest();
        Account acc = new Account(Name='Test Account');
        Database.SaveResult result = Database.insert(acc);
        Test.stopTest();
        // Verify
        Account savedAcc = [SELECT Description, Id, Phone, BillingStreet, Website FROM Account WHERE Id = :result.getId()];
        System.assertEquals('Copa.do description', savedAcc.Description);
        System.assertEquals('688456789',savedAcc.Phone);
        System.assertEquals('www.copa.do',savedAcc.Website);
        System.assertEquals('Paseo de la Castellana, 77',savedAcc.BillingStreet);
    }
}