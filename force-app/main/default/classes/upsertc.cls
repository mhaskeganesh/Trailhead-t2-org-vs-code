public class upsertc {

    public static void op(){
        list<Computer__c> ls = new list<Computer__C>();
        Computer__c c = [ select id,name,price__c from computer__c where id='a015g00000ZcaAZAAZ'];        
        c.price__c=00000;
        Computer__c c2 = new Computer__c(name='Apex comp 2');
        c2.Price__c=111111;
        
        ls.add(c);
        ls.add(c2);
        upsert ls;
    }
}