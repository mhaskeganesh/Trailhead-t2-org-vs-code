public with sharing class TaskTriggerHandler {
    public static void operationBeforeTaskDelete(List<Task> tasks){
        if(userInfo.getProfileId() != [select id from profile where name = 'System Administrator'][0].id){
            for(Task t: tasks){
                t.addError('Task can only be deleted by System Administrator, please contact your System Administrator');
            } 
        }
    }
}