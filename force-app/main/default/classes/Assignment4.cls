public with sharing class Assignment4 {
    //This method creates an account and 5 related contacts
    public static void createAccount(){
        List<Contact> contacts = new List<Contact>();
        Account ac = new Account(name = 'Assignment 4 account demo 2');
        insert ac;

        for(Integer i = 0; i < 5; i++){
            contacts.add(new Contact(Firstname = 'Demo contact ' +(i+1), AccountId = ac.id,Lastname = 'Assignemtnt 4 demo 2'));
        }

        insert contacts;
    }
}