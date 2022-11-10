trigger TaskTrigger on Task (before delete) {
    TaskTriggerHandler.operationBeforeTaskDelete(Trigger.old);
}