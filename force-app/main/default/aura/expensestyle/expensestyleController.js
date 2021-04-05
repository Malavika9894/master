({
	clickCreate : function(component, event, helper) {
        var newAcc = component.get("v.clickCreate");
        var saveAcc = component.get("c.saveAcc");
        action.setParams({
            "e":newAcc
        });
         action.setCallback(this, function(a) {
           var state = a.getState();
            if (state === "SUCCESS") {
                var name = a.getReturnValue();
               alert("hello from here"+name);
            }
        });
		$A.enqueueAction(action)
	}
})