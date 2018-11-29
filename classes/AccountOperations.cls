public class AccountOperations {
    Public static Account setDefaultDescription(Account a){
        If (a.Description != null){ return a;}
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
        a.billingstreet = 'Paseo de la Castellana, 77';
        a.billingstate = 'Madrid';
        a.billingpostalcode ='28046';
        return a;
        }
    public static Account setDefaultShippingAddress(Account a){//Dev3
        a.shippingstreet = 'Gran via, 1';
        a.shippingstate = 'Majadahonda';
        a.shippingpostalcode ='28023';
        return a;
        }
    public static Account setDefaultNumber(Account a){//Dev1
        a.AccountNumber='CC1000';
        return a;
        }
    public static Account setDefaultIndustry( account a){
        a.Industry = 'Apparel';
        return a;
    }
}