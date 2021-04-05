public class ComponentController {
    
    @Auraenabled
    public static String serverEcho(String Lastname , String Birthdate , String Country ,String msg){
        try
    {
        system.debug('Lastname' + Lastname);
        Date d = Date.valueOf(Birthdate);
        Contact con = new Contact (Lastname = Lastname , Birthdate = d , MailingCountry = Country );
        insert con;
        return('successfully created,' +con.id);
        
    }
        catch(Exception e)
        {
            return 'we are getting this exception:' +e.getMessage() ;
        }
             /*return null;*/
    }
}