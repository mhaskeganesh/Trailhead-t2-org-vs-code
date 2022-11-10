public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String name){
        return [Find :name in Name fields returning Contact(FirstName,LastName),Lead(FirstName,LastName)];
    }
}