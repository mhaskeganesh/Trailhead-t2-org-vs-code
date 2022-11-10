trigger ConDelete on Contact (before delete, after delete) {
    
    System.debug(Trigger.isBefore);
    System.debug(Trigger.isAfter);
    System.debug(Trigger.old[0]);
    
    if(Trigger.isBefore)
        System.debug('Before Deleting the contact: '+Trigger.new[0]);
    else if(Trigger.isAfter)
        System.debug('After Deleting the contact: '+Trigger.new[0]);
}