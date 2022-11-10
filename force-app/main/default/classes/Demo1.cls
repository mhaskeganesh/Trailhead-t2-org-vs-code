public class Demo1 
{
    public static void showDatatypes()
    {
        String o = 'Hello World'; //String
        System.debug('Blob: ' + Blob.valueOf(o)); //Blob
        
        Boolean isActive = true;
        System.debug('Boolean: ' + isActive); //Boolean
        System.debug('Date: ' + Date.newInstance(2020, 01, 18)); //Date
        
        Datetime currDateTime = Datetime.now();
        System.debug('Date: ' + currDateTime); //DateTime
        System.debug('Time: ' + Time.newInstance(22, 40, 36, 03)); //Time
        
        Decimal decValue = 27.01;
        System.debug('Decimal: ' + decValue); //Decimal
        
        Id recordId = [Select Id From Account Limit 1][0].Id;
        System.debug('ID: ' + recordId); //ID
        
        Integer intValue = 27;
        System.debug('Integer: ' + intValue); //Integer
        
        Long longValue = 2147483648L;
        System.debug('Long: ' + longValue); //Long
        
        Object objValue = o;
        System.debug('Object: ' + objValue); //Object
    }
    
   /* public static void showCollections()
    {
        List<Integer> listOfNumbers = new List <Integer> ();
        listOfNumbers.add(1);
        listOfNumbers.add(2);
        listOfNumbers.add(3);
        listOfNumbers.add(3);
        System.debug('listOfNumbers: ' + listOfNumbers);
        
        Set<Integer> setOfNumbers = new Set<Integer>();
        setOfNumbers.add(3);
        setOfNumbers.add(2);
        setOfNumbers.add(2);
        setOfNumbers.add(1);
        System.debug('setOfNumbers: ' + setOfNumbers);
        
        Map <Integer,String> mapOfIntegerString = new Map <Integer,String> ();
        mapOfIntegerString.put(1, 'one');
        mapOfIntegerString.put(2, 'two');
        mapOfIntegerString.put(3, 'three');
        mapOfIntegerString.put(3, 'four');
        System.debug('mapOfIntegerString: ' + mapOfIntegerString);
        System.debug('Value at 3: ' + mapOfIntegerString.get(3));
    }*/
    
    public static void showLoops()
    {
        List<integer> listOfNumbers = new List <integer> ();
        Integer maxListSize = 5;
        for(Integer i = 1; i <= maxListSize; i++)
        {
            listOfNumbers.add(i);
        }
        System.debug('listOfNumbers: ' + listOfNumbers);
        
        //for each loop to display elements in 
        for(Integer temp : listOfNumbers)
        {
            System.debug(temp);
        }
    }
}