public class LeadTrigger_Handler {
    
    public void InsertUpdate(List<Lead> Llist)
    {
           for (Lead L:Llist)     
    {
        if (L.LeadSource == 'Web')
        {
            L.Rating = 'Warm';
            L.Description = 'Rating successfully updated';
        }
    }
    }

}