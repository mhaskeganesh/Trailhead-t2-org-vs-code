public with sharing class EmployeeTrigHandler {
    public static void updateStatus(List<Employee__c> emps){
        for(Employee__c emp: emps){
            if(emp.Age__c < 30 && emp.Experience__c > 8)
                emp.Status__c = 'Selected';
        }
    }
}