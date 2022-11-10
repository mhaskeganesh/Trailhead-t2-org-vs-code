trigger TeacherTrigger on Teacher__c (after insert, before update, after update) {
    if(Trigger.isAfter && Trigger.isInsert && TeacherUtility.firstTimeExecution){
        TeacherTriggerHandler.operationAfterInsert(Trigger.new);
    }
    
    if(Trigger.isBefore && Trigger.isUpdate && TeacherUtility.firstTimeExecution){
        TeacherTriggerHandler.operationBeforeUpdate(Trigger.new);
    }

    if(Trigger.isAfter && Trigger.isUpdate && TeacherUtility.firstTimeExecution){
        TeacherTriggerHandler.operationAfterUpdate(Trigger.new);
    }
    
}