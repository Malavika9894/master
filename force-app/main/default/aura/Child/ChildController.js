({
	handleNameEvent : function(component, event, helper)
    {
	var event= component.getEvent("NameDataEvent");
        event.setParams(
            {
                myName : component.get(v.name)    
            }
        
        );
        event.fire();
	}
})