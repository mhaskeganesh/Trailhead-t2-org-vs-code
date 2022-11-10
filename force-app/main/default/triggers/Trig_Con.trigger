trigger Trig_Con on Contact (before insert) {
    List<Account> acc = new List<Account>();
    List<Contact> cons =new List<Contact>();
    
    for(Contact c : Trigger.new){
        if(c.accountId == null){
            cons.add(c);
            System.debug(c);
            acc.add(new Account(name = 'Account for contact : '+c.FirstName));
        }
    }
    
    insert acc;
    
    for(Integer i = 0; i < cons.size(); i++ ){
        cons[i].accountId = acc[i].id;
    }
}