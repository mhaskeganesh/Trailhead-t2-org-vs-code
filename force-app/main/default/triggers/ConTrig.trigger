trigger ConTrig on Contact (after insert,after update) {
    
    Set<Id> accId = new Set<Id>();
    
    for(Contact c : Trigger.new){
        accId.add(c.AccountId);
    }
    
    list<Account> acc = [ select id,name,Count_of_contacts__c,(select id from contacts) from Account where id in :accId ];
    
    for(Account a : acc){
        a.Count_of_contacts__c = a.contacts.size();
    }
    
    update acc;
}