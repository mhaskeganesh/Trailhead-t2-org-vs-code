global class UpdateContactAddresses implements Database.Batchable<sObject> {
    
    global Database.queryLocator start(Database.batchableContext btc){

        return Database.getQueryLocator('select id, name from account');
    }

    global void execute(Database.batchableContext bcx, List<Account> accounts){

    }

    global void finish(Database.batchableContext btc){

    }
}