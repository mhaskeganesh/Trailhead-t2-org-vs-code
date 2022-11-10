@isTest
public class Trig_Acc3Test {
    
    @testSetup
    public static void setup(){
        Account acc = new Account(Name = 'Test Account', Phone = '123456789');
        insert acc;
        
        List<Contact> cons = new List<Contact>();
        cons.add(new Contact(LastName = 'Test Contact 1', HomePhone = '123', OtherPhone= '321', accountId = acc.Id));
        cons.add(new Contact(LastName = 'Test Contact 2', HomePhone = '888', OtherPhone= '555', accountId = acc.Id));
        
        insert cons;
    }
	
    @isTest
    public static void testAccountTrig(){
        List<Account> ls = [ select id, name, Phone from Account limit 1 ];
        
        ls[0].Phone = '99999999';
        update ls;
        List<Contact> cons = [ select Id, HomePhone,OtherPhone from contact where accountId = :ls[0].Id ];
        
        System.assertEquals(cons[0].HomePhone, '99999999');
        System.assertEquals(cons[0].OtherPhone, '123456789');
        
        System.assertEquals(cons[1].HomePhone, '99999999');
        System.assertEquals(cons[1].OtherPhone, '123456789');
 
    }
}