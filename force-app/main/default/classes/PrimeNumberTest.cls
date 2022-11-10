@isTest
public class PrimeNumberTest {

    @isTest
    public static void PrimeChecker(){
        
        System.assertEquals(false,PrimeNumber.checker(5),'ITS ERROR BRO');
        System.assertEquals(true,PrimeNumber.checker(3));
    }
}