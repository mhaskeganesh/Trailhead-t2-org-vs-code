public class ContactSearch {
    public static list<contact> searchForContacts(String lname, String mpCode){
        return [ select id,name from contact where lastname = :lname and MailingPostalCode = :mpCode ];
        
    }
}