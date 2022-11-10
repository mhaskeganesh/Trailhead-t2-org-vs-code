trigger TrigDuplicateContact on Contact (before insert, before update) {
    if(Trigger.isBefore && Trigger.isInsert)
        ContactTrigHandler.checkDuplicate(Trigger.new);
    if(Trigger.isBefore && Trigger.isUpdate)
        ContactTrigHandler.checkDuplicateUpdate(Trigger.new);
}