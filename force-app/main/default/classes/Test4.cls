public class Test4 {
        public static void showDate()
    {
        Date d = date.newInstance(1998, 08, 26);
        System.debug(d);
        d = d.addDays(3);
        System.debug(d);
        
        list<Integer> l = new list<Integer>();
        l.add(1);
        l.add(2);
           
        
        System.debug(l);
        
        String s1 = 'Ganesh';
        String s2 = 'Ganesh';
        
        System.debug(s1 == s2);
        System.debug(s1.equals(s2));
        
       Integer i = 10;
        System.debug((Math.mod(i,2) == 0) ? 'Even' : 'Odd' );
        
    }
}