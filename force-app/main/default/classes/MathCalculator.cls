// Mathcalculator class performs addition and multiplication on given numbers
public  class MathCalculator {
    //add method returns summation of the given numbers
    private static Integer add(Integer number1, Integer number2){
        return number1+number2;
    }

    //substract method returns substraction of the given numbers
    private static Integer substract(Integer number1, Integer number2){
        return number1-number2;    }

    //multiply method returns multiplication of the given numbers
    private static Integer multiply(Integer number1, Integer number2){
        return number1*number2;    }

    //This method dipslays the result of addition/multiplication on debug log
    private static void printOut(Integer number1, Integer number2, String operation){
        switch on operation{
            when '+' {
                System.debug(add(number1,number2));
            }
            when '*' {
                System.debug(multiply(number1,number2));
            }
            when '-' {
                System.debug(substract(number1,number2));
            }
            when else {
               System.debug('Please enter a valid operation');
            }
        }
    }

    //This method takes 2 numbers, operation type and calls that operation related methods
    public static void doMath(Integer number1, Integer number2, String operation){
        printOut(number1, number2, operation);
    }
}