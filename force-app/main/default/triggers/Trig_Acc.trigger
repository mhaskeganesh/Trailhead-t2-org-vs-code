trigger Trig_Acc on Account (before delete) {
	Set<Id> accIds = new Set<Id>();
    for(Account acc : Trigger.old){
        accIds.add(acc.id);
    }
    
    List<Account> ls = [ select id, (select id from contacts) from account where id in :accIds];
    
    for(Account acc : ls){
        System.debug('****'+acc.contacts.size());
        if(acc.contacts.size() > 2){
            System.debug('11111');
            Trigger.oldMap.get(acc.id).addError('Account having more than 2 contacts cannot be deleted');
            System.debug('222222');
        }

    }
}