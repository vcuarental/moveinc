public class NewCaseListController {
    public list<Case> getNewCases (){
        List<Case> results = [SELECT Id, CaseNumber FROM Case where status = 'New'];
        
        return results;
    }
}