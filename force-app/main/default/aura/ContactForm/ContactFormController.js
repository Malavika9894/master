({
	Submitform : function(component, event, helper) 
    {
        var name =component.get("v.Lastname");
        console.log(name);
       helper.helperMethod(component)
	}
    
})