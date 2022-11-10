public class AccountFooRecordType {
    public String id {get;private set;}
    public AccountFooRecordType(){
        // This could breach the governor limits on describes
        // if a trigger is executed in bulk
        id = Account.sObjectType.getDescribe()
            .getRecordTypeInfosByName().get('Foo').getRecordTypeId();
    }
}