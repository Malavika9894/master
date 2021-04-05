global class AccBatchApex  implements Database.Batchable<sObject>{
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        String query='Select id,name from Account';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<Account> records)
    {
        for(Account acc:records)
        {
            acc.Phone='9999999999';
        }
        update records;
    }
    global void finish(Database.BatchableContext bc)
    {
        //comment
    }

}