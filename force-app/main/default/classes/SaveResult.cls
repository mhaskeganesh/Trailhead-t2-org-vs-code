public class SaveResult {

    public static void process(){
        List<Account> ls = new List<Account>();
        ls.add(new Account(Name='Account 1'));
        ls.add(new Account(Name='Account 2'));
        ls.add(new Account(Name='Account 3'));
        ls.add(new Account());
        ls.add(new Account(Name='Account 5'));
        
        
       Database.SaveResult[] sr=Database.insert(ls,false);
        for(Database.SaveResult s:sr)
        {
            if(s.isSuccess())
            {
                System.debug(s.getId()+' record is saved successfully');
            }
            else
            {
                for(Database.Error er : s.getErrors()){
                    System.debug(er.getMessage());
                    System.debug(er.getFields());
                }
            }
        }
    }
}