trigger EmployeeTrig on Employee__c (before insert) {
    EmployeeTrigHandler.updateStatus(Trigger.new);
}