public with sharing class AccountController3 {
    @AuraEnabled
    public static list<Account> getMyAccounts(){
        return [select id, name from Account];
    }
}