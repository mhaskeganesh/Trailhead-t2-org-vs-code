public with sharing class testFuture {
    @future
    public  static void showFuture(){
        for(Integer i = 0; i < 100; i++)
        System.debug('Future method...round'+i);
    }

    public static void showNonFuture(){
        for(Integer i = 0; i < 100; i++)
        System.debug('Normal method .... round'+i);
    }

    @future
    public  static void showFuture2(){
        for(Integer i = 0; i < 100; i++)
        System.debug('Future method 2...round'+i);
      
    }

}