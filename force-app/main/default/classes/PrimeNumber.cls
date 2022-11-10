public class PrimeNumber {

    public static boolean checker(Integer num){
        
        for(Integer i=2;i<=num/2;i++){
            if(math.mod(num,i)==0)
                return false;
        }
        return true;
    }
}