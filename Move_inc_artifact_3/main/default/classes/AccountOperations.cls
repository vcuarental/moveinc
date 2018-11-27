public class AccountOperations {
    Public static Account setDefaultDescription(Account a){
        If (a.Description != null) return a;
          Else {
                 a.Description = 'Copa.do description'; // DEV 1     
                 return a;
               }
            }
    public static Account setDefaultPhone(Account a) {//DEV 1
         a.Phone='688456789'; //DEV1
         return a;
        }
    public static Account setDefaultURL(Account a) { //Dev2
        a.website = 'www.copa.do'; //Dev1
        return a;
        }
    public static Account setDefaultBillingAddress(Account a){//Dev3
        a.billingstreet = 'Basauri, 6';
        a.billingstate = 'Madrid';
        a.billingpostalcode ='28023';
        return a;
        }
    public static Account setDefaultShippingAddress(Account a){//Dev3
        a.shippingstreet = 'Basauri, 6';
        a.shippingstate = 'Madrid';
        a.shippingpostalcode ='28023';
        return a;
        }

}