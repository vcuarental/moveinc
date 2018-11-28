public class ContactSearch {
    public static list<contact> searchForContacts(String lastnamep,String PostalCode){
        list<contact> listcont =[SELECT ID, NAME from contact where (LastName=:lastnamep) AND (MailingPostalCode =: PostalCode)];
        return listcont;
    }
}