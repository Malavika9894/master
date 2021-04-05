trigger opportunity_trigger on Opportunity (before insert) {
    for(Opportunity Opp:Trigger.New){
    if(Opp.StageName =='Closed Won'){
        Opp.Description='Your opportunity is closed';
    }
    }
}