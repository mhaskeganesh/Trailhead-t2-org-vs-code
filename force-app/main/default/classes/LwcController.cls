public with sharing class LwcController {

    @AuraEnabled(cacheable=true)
    public static list<Account> sendAccounts(){
        System.debug('Hello World');
        return [select id, name from account limit 20];
    }
}