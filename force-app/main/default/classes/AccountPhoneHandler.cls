public class AccountPhoneHandler {

    public static void updatePhone(Map<Id, Account> newMap, Map<Id, Account> oldMap, List<Account> newAccList){
        Set<Id> accIds = new Set<Id>();
        List<Contact> contactsToUpdate = new List<Contact>();
        
        for(Account a: newAccList){
            if(oldMap.get(a.id).Phone != a.Phone)
                accIds.add(a.id);
        }
        
        List<Account> updatedAccounts = [ select id, Phone, (select id, HomePhone, OtherPhone from contacts) from Account where id in :accIds];
        
        for(Account acc: updatedAccounts){
            for(Contact c: acc.contacts){
                c.HomePhone = acc.Phone;
                System.debug(oldMap.get(acc.id));
                if(oldMap.get(acc.id).Phone != null)
                	c.OtherPhone = oldMap.get(acc.id).Phone;
                
                contactsToUpdate.add(c);
            }
        }
        
        update contactsToUpdate;
    }
}