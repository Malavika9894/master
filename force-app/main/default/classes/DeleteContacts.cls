global class DeleteContacts implements database.batchable<sObject> {
    global database.QueryLocator start(database.batchableContext bc){
        string query='select id,Name from Contact where Lastname= Appirio';
        return database.getQueryLocator(query);
    }
    global void execute(database.batchableContext bc,list<Contact> scope){
 
        List<Contact> con = new List<Contact>();
       
        
        Delete con;
   }
   global void finish(database.batchableContext bc){
   
   }
}