public with sharing class AccountsSender {
    @AuraEnabled
    public static List<Account> sendAccounts2(){
        return [select id, name from Account];
    }

    @AuraEnabled
    public static List<Account> sendAccounts(String searchKey){
        String condition = '%'+searchKey+'%';
        return [select id, name from Account where Name like :condition];
    } 
}