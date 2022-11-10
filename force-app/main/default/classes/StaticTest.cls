public class StaticTest {
    
    Integer insVar = 100;
    static Integer statVar = 200;
    static
    {
        System.debug('I am inside static block');
    }
    
    public static void staticShow()
    {
        System.debug('Its a static method, can be called by instance/classname...I cannot access instance members. statVar = ' +statVar);
    }
    
    public void instanceShow()
    {
        System.debug('Its an instance method - can access static as well as instance var/members ');
        staticShow();
    }
}