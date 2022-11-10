public class DeleteTeachers {

    public static void dt(){
        
        list<Teacher__c> ts = [ select id,name from Teacher__c ];
        delete ts;
    }
}