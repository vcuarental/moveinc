public class AccountOperations {
    public static Account setDefaultBillingAddress(Account a){//Patrice Moore
        a.billingstreet = 'Basauri, 6';
        a.billingstate = 'Madrid';
        a.billingpostalcode ='28023';
        return a;
        }
    public static Account setDefaultPhone(Account a) {//DEV1
         a.Phone='667667667';
         return a;
        }
    public static Account setDefaultURL(Account a) { //Dev2
        a.website = 'www.copa.do'; //Dev2
        return a;
        }
}