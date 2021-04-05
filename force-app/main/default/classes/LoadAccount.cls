public class LoadAccount {
    
    public List<schema.Account> Acc{get; set;}
    
        public LoadAccount()
        {
          // Acc = new List<Account>();

           Acc = [select Id, name from Account];
           
        }
        
    

}