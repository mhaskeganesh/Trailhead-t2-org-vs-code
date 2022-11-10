public class Ass1 {
    public void m1()
    {
        List<Integer> l=new List<Integer>();
        for(Integer i=1;i<=20;i++)
        {
            l.add(i);
        } 
        
        Integer total=0;
        for(Integer i=0;i<20;i++)
        {
            if(math.mod(i,2)==0)
            {
                if(math.mod(l[i],2)!=0)
                    total=total+l[i];
            }
        }
        System.debug('Sum of even '+total);
    }
}