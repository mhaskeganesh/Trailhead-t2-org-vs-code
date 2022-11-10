trigger TrigComputer on Computer_2__c (before insert, before update) {
    if(Trigger.isBefore && Trigger.isInsert)
        ComputerTrigHandler.updateCapacity(Trigger.new);
    if(Trigger.isBefore && Trigger.isUpdate)
        ComputerTrigHandler.updateCapacity(Trigger.new, Trigger.oldMap);
}