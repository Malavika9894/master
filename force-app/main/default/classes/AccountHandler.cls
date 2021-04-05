public class AccountHandler
{
    public static Account insertNewAccount(string name)
    {
        try
        {
        Account acc=new Account(Name = name);
        //a.Name=name;
        insert acc;     
        System.debug('Printing the result :' +acc);
        return acc;
        }
        Catch (Exception e) {
            System.debug('Exception is :' +e);
             return null;
            
        }
    }
}