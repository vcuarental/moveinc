public class StringArrayTest {
	// Public method
    public static list<string> generateStringArray(Integer i){
        string test = 'Test ';
        list<string> list_test =new list<string>();
        for (Integer n=0; n<i ; n++){
            list_test.add(test + n);
        }
        
            return list_test;
        
    }
}