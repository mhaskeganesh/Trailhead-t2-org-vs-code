trigger Trig_Acc2 on Account (after update) {
    Set<Id> ids = new Set<Id>();
    List<Contact> cons =new List<Contact>();
    for(Account a: Trigger.new){
        if(Trigger.oldMap.get(a.id).balance__c != a.balance__c)
            ids.add(a.id);
    }
    
    List<Account> ls = [ select id,balance__c, (select id, balance__c from contacts) from Account where id in :ids ];
    
    Integer balance = 0;
    for(Account a: ls){
        if(a.contacts.size() > 0){
            balance = (Integer)(a.balance__c / a.contacts.size());
            for(Contact c: a.contacts){
                  c.balance__c =  balance;
                  cons.add(c);
            }
        }
    }
    
    update cons;
    
}