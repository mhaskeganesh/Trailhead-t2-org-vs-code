public class FirstJob implements queueable{
    public void execute(System.QueueableContext context){
        System.debug('Inside firstJob');
        Id jobId = System.enqueueJob(new Second());
        System.debug('child job id - '+ jobId);
       
    }
}