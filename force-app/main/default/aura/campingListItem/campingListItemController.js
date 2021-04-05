({
    packItem : function(component, event, helper)
    {
        var checkbox = component.get("v.item",true);
        checkbox.Packed__c= true;
        component.set("v.item",checkbox);
        event.getSource().set('v.disabled',true);
    }
})
({
	doInit : function(component, event, helper) {
        component.set("v.price",1000);
       let action =  component.get("c.getItems");
        action.setCallback(this,function(response){
          let state = response.getState();
        if(state = "SUCCESS"){
            component.set("v.item",response.getReturnedValue());
        }

	});
        $A.enqueueAction(action);
    }
})