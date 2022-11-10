public class QueueableDemo implements System.Queueable{
    public void execute(System.QueueableContext context){
        System.debug('I am inside queueable method');
        
        List<Account> accounts = [select id, name from Account];
        System.debug('Accounts in our org...'+ accounts);
    }
}