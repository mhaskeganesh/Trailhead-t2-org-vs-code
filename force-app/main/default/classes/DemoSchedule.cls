public with sharing class DemoSchedule implements Schedulable {
    public void execute(SchedulableContext context){

    }
    public void show(){
        System.debug('Hello World');
    }
}