public with sharing class Second implements Queueable {
    public void execute(QueueableContext context){
        System.debug('Second context');
    }
}