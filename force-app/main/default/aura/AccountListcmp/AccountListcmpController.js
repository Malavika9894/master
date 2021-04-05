({
	doInit : function(component, event, helper) {
	let action = component.get("c.acclist");
        action.setCallback(this,function(response){
           let state = response.getState(); 
            if(state == "SUCCESS"){
                component.set("v.account",response.getReturnedValue());
            }
        });
        $A.enqueueAction(action);
	}
})