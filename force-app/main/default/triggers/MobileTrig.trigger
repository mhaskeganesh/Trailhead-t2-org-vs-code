trigger MobileTrig on Mobile__c (before insert) {

    if(Trigger.isBefore && Trigger.isInsert)
        MobileTrigHandler.calculateDiscound(Trigger.new);
}