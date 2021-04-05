public class StringArrayTest {

    public static list<String> generateStringArray(Integer n){
        List<String> liststring = new List<String>();
        for(Integer i=0;i<n;i++){
            liststring.add('Test ' +i);
            System.debug(liststring[i]);
        }
        return liststring;
        
    }
}