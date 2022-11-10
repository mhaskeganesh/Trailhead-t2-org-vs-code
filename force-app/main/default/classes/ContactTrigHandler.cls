public with sharing class ContactTrigHandler {
    //This method checks duplicates for newly inserted contacts
    public static void checkDuplicate(List<Contact> contacts){
        List<String> emails = new List<String>();
        List<String> phones = new List<String>();

        for(Contact con: [select email, phone from contact]){
            if(con.email != null)
                emails.add(con.email);
            if(con.phone != null)
                phones.add(con.phone);
        }

        for(Contact con: contacts){
            if(emails.contains(con.Email) || phones.contains(con.Phone))
                con.addError('Duplicate contacts are not allowed'+con.Phone+' '+con.Email);
        }


    }

    //This method checks duplicates for existing/updated contacts
    public static void checkDuplicateUpdate(List<Contact> contacts){
        List<String> emails = new List<String>();
        List<String> phones = new List<String>();

        for(Contact con: [select email, phone from contact]){
            if(con.email != null)
            emails.add(con.email);
        if(con.phone != null)
            phones.add(con.phone);
        }

        for(Contact con: contacts){
            if(emails.contains(con.Email) || phones.contains(con.Phone))
                con.addError('Duplicate contacts are not allowed');
        }
    }
}