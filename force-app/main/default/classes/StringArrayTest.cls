public class StringArrayTest {
	public static list<String> generateStringArray(Integer size)
    {
        list<String> listOfStrings = new list<String>();
        for(Integer i = 0; i < size; i++)
        {
            listOfStrings.add('Test ' +i);
        }
        return listOfStrings;
    }
}