trigger lead_trigger on Lead (before Update,before Insert) 
{  
    LeadTrigger_Handler LTH = new LeadTrigger_Handler();
    LTH.InsertUpdate(Trigger.New);
    /*for (lead L:trigger.new)     
    {
        if (L.LeadSource == 'Web')
        {
            L.Rating = 'Warm';
        }
    }*/

}