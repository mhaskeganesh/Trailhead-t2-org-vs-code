public class AccountHandler {
    public static Account insertNewAccount(String name) {
        Account acc = new Account(name = name);
        try{
            insert acc;
        }catch(DMLException e){
            return null;
        }
        return acc;
    }
}