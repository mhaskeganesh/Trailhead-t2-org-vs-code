public class AccController {

    @AuraEnabled
    public static list<Account> searchAcc(String key){
        String key2 = '%'+key+'%';
        System.debug(key);
        list<Account> ls = [ select id,name from Account where name like :key2 limit 10];
        System.debug(ls);
        return ls;
    }
}