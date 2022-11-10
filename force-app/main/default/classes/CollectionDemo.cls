public class CollectionDemo {
    public static void show()
    {
        List<Integer> ls = new List<Integer>();
        ls.add(100);
        ls.add(2);
        ls.add(89);
        ls.add(202);
        ls.add(45);
        ls.add(888);
        
        System.debug(ls);
        ls.sort();
        
        System.debug(ls);
        
        List<String> ls2 = new List<String>();
        ls2.add('Ganesh');
        ls2.add('Omkar');
        ls2.add('Saurabh');
        ls2.add('Dinesh');
        ls2.add('Mhetre');
        
        System.debug(ls2);
        ls2.sort();
        
        System.debug(ls2);
        
        
        
        
        Set<Integer> s = new Set<Integer>();
        s.add(10);
        s.add(2);
        s.add(34);
        s.add(7);
        s.add(190);
        
        System.debug(s);
        
        
        
        Account a = new Account(
            Name='Acme', 
            BillingCity='New York');
        
        Map<Integer, Account> map1 = new Map<Integer, Account> {};
            map1.put(1, a);
        
        Map<Integer, Account> map2 = map1.clone();
        map1.get(1).BillingCity = 
            'San Francisco';
        
        System.assertEquals(
            'San Francisco',
            map1.get(1).BillingCity);
        
        System.assertEquals(
            'San Francisco',
            map2.get(1).BillingCity);
        
    }
}