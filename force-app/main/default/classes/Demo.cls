global class Demo implements Queueable{

	public void execute(QueueableContext con){
          System.debug('Hello Queueable');
        }
}