trigger case_trigger on Case (before update) {
    
    CaseTrigger_Handler CTH = new CaseTrigger_Handler();
    CTH.BeforeUpdate(Trigger.New);
    /*for(Case C:Trigger.New){
        if(C.Status == 'Closed'){
            Account Acc = [Select Id,Description FROM Account WHERE Id=:C.AccountId];
            Acc.Description ='Your case is closed';
            Update Acc;
        }
    }*/

}