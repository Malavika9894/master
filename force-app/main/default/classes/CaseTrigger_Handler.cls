public class CaseTrigger_Handler {
	
    public void BeforeUpdate(List<Case> Clist){
         for(Case C:Clist){
        if(C.Status == 'Closed'){
            Account Acc = [Select Id,Description FROM Account WHERE Id=:C.AccountId];
            Acc.Description ='Your case is closed';
            Update Acc;
        }
    }
    }
}