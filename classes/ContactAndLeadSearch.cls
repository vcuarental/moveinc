public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String naming){
        List<List<sObject>> searchList = [FIND :naming IN ALL FIELDS RETURNING Lead(FirstName,LastName),Contact(FirstName,LastName)];
    	return searchList;
    }

}