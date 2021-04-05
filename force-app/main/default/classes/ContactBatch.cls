global class ContactBatch implements database.batchable<sObject> {
    global database.QueryLocator start(database.batchableContext bc){
        string query='select id,Name from Contact';
        return database.getQueryLocator(query);
    }
    global void execute(database.batchableContext bc,list<Contact> scope){
 
        List<Contact> con = new List<Contact>();
        for(Integer i=0 ; i < 2000 ; i++){
            Contact c=new Contact();
            c.Lastname='Appirio';
            con.add(c);
        }
        insert con;
   }
   global void finish(database.batchableContext bc){
   
   }
}