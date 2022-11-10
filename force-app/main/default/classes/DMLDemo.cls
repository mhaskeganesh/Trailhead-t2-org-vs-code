public class DMLDemo {
    public static void showInsertOperation()
    {
        //Creating 1 account record and inserting into database.
        Account boatAccount = new Account(name = 'Boat company Ind Ltd');
        insert boatAccount;
    }
    
    public static void showUpdateOperation()
    {
        //updating the boatCompany account.
        Account boatAccount = [Select id,name,BillingAddress from account where name = 'Boat company Ind Ltd' ];
        
        boatAccount.Rating = 'Cold';
        update boatAccount;
    }
    
    public static void showDeleteOperation()
    {
        //Deleting the boatCompany account.
        Account boatAccount = [ Select id,name,BillingAddress from account where name = 'Boat company Ind Ltd' ];
        delete boatAccount;
    }
    
    //Bulk DML
    public static void showBulkDML()
    {
        // Create a list of contacts
        List<Contact> conList = new List<Contact> {
            new Contact(FirstName='Joe',LastName='Smith',Department='Finance'),
                new Contact(FirstName='Kathy',LastName='Smith',Department='Technology'),
                new Contact(FirstName='Caroline',LastName='Roth',Department='Finance'),
                new Contact(FirstName='Kim',LastName='Shain',Department='Education')
                };
                    
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
}