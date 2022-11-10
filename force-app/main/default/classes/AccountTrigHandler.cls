public with sharing class AccountTrigHandler {
    public static void updateShippingAddress(List<Account> accounts){
        List<Account> accountsToUpdate = new List<Account>();

        AccountUtility.accountTrigExecuted = true;
        for(Account acc: accounts){
            Account temporaryAccount = new Account();
            temporaryAccount.id = acc.id;
            temporaryAccount.ShippingCity = acc.BillingCity;
            accountsToUpdate.add(temporaryAccount);
        }

        update accountsToUpdate;

    }

    public static void updateShippingAddress(List<Account> accounts, Map<id, Account> oldAccounts){
        List<Account> accountsToUpdate = new List<Account>();

        AccountUtility.accountTrigExecuted = true;
        for(Account acc: accounts){

            if(oldAccounts.get(acc.id).BillingAddress != acc.BillingAddress){
                Account temporaryAccount = new Account();
                temporaryAccount.ShippingCity = acc.BillingCity;
                temporaryAccount.id = acc.id;
                accountsToUpdate.add(temporaryAccount);
            }
        }

        update accountsToUpdate;
    } 

    public static void createClientContact(List<Account> newaccounts){
        List<Contact> clientContacts = new List<Contact>();
        for(Account acc: newaccounts){
            clientContacts.add(new Contact(LastName = acc.name));
        }

        insert clientContacts;

        for(Integer i = 0; i < newaccounts.size(); i++){
            newaccounts[i].Client_Contact__c = clientContacts[i].id;
        }
    }

}