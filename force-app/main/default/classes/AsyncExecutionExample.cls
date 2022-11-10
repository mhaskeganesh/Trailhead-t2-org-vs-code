public class AsyncExecutionExample implements Queueable {
    public void execute(QueueableContext context){
        System.debug('Inside execute method of queueable class....creating an account');
        Account acc = new Account(Name = 'Account from Queuable job');
        insert acc;
    }
}