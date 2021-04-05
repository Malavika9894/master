global class AccScheduleApex  implements schedulable{
    global void execute(Schedulablecontext ctx)
    {
        AccBatchApex accobj = new AccBatchApex();
		Database.executeBatch(accobj,10);
    }

}