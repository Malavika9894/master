({
	Myfirstfunction : function(component, event, helper) {
        var myatt = component.get("v.Testatt");
        
        if(myatt == "Test"){
            component.set("v.Testatt","Sample");
        }
		
	}
})