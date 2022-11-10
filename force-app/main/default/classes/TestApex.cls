public class TestApex {

    @AuraEnabled
    public static list<Account> func(String key){
        
        key='%'+key+'%';
        return [select id,name from account where name like :key];
    }
}