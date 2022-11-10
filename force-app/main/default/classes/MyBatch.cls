public class MyBatch implements Database.Batchable<Computer__c>{
    
    public static String query = 'select id,name,Skill__C from Computer__C';
	
    public list<Computer__C> start(Database.BatchableContext bc) {
        return [ select id,name from Computer__C ];
    }
	
	public void execute(Database.BatchableContext bc,list<Computer__C> comps){
	
	 list<Computer__C> upComps = new list<Computer__C>();
	 for(Computer__C c: comps){
	
		c.Skill__C = 'Salesforce '+c.name;
		upComps.add(c);
	 }
	 
	 update upComps;
	}
	
	public void finish(Database.BatchableContext bc){
	
	}
}