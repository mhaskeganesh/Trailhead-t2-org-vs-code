public class Assignment1 {
	public static void addNumbers(){
        List<Integer> listOfNumbers = new List<Integer>();
        Integer iterator = 0;
        Integer sumOfEvenIndexNumbers = 0;
        
        while(iterator < 20){
            listOfNumbers.add(++iterator);
        }
        
        iterator = 0;
        While(iterator < 20){
            if(Math.mod(iterator,2) == 0)
                sumOfEvenIndexNumbers = sumOfEvenIndexNumbers + listOfNumbers[iterator];
            iterator++;
        }
        
        System.debug(sumOfEvenIndexNumbers);
    }
}