public class AccountHandler {
    public static Account insertNewAccount(String customname){
        Account acc =new Account(name=customname);
        Database.SaveResult sr = Database.insert(acc,false);
  
  //*********** Comment added      
    if (sr.isSuccess()) {
        // Operation was successful, so get the ID of the record that was processed
        System.debug('Successfully inserted account. Account ID: ' + sr.getId());
    } else { 
        acc = null;
        // Operation failed, so get all errors
        for(Database.Error err : sr.getErrors()) {
            System.debug('The following error has occurred.');
            System.debug(err.getStatusCode() + ': ' + err.getMessage());
            System.debug('Account fields that affected this error: ' + err.getFields());
    }


        }
    return acc;
    }
}