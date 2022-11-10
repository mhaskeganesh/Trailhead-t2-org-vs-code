// This class performs DML operations
public with sharing class DMLOperation {
    public static void createAccount(){
        // Create the account sObject 
        Account acct = new Account(Name='Acme', Phone='(415)555-1212', NumberOfEmployees=100);

        // Insert the account by using DML
        insert acct;
        ID acctID = acct.Id;
        System.debug('ID = ' + acctID);
    }

    public static void createBulkContacts(){
        // Create a list of contacts
        List<Contact> conList = new List<Contact> {
        new Contact(FirstName='Joe',LastName='Smith',Department='Finance'),
        new Contact(FirstName='Kathy',LastName='Smith',Department='Technology'),
        new Contact(FirstName='Caroline',LastName='Roth',Department='Finance'),
        new Contact(FirstName='Kim',LastName='Shain',Department='Education')};
            
        // Bulk insert all contacts with one DML call
        insert conList;
        // List to hold the new contacts to update
        List<Contact> listToUpdate = new List<Contact>();
        // Iterate through the list and add a title only
        //   if the department is Finance
        for(Contact con : conList) {
            if (con.Department == 'Finance') {
                con.Title = 'Financial analyst';
            // Add updated contact sObject to the list.
            listToUpdate.add(con);
            }
        }
        // Bulk update all contacts with one DML call
        update listToUpdate;

    }

    public static void upsertData(){
        // Insert the Josh contact
        Contact josh = new Contact(FirstName='Josh',LastName='Kaplan',Department='Finance');       
        insert josh;
        
        josh.Description = 'Josh\'s record has been updated by the upsert operation.';
        Contact kathy = new Contact(FirstName='Kathy',LastName='Brown',Department='Technology');
        List<Contact> contacts = new List<Contact> { josh, kathy };

        upsert contacts;
    }
    
    //testing try and catch concept
    public static void exceptionMethod(){
        Account ac = new Account();
        try{
            insert ac;
        }catch(DmlException e){
            System.debug(e);
        }
    }
}