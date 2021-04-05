({
	handleClick : function(component, event, helper) {
        var btnclicked = event.getSource();
        var btnmessage = btnclicked.get("v.label");
        component.set("v.message",btnmessage);
	},
    handleClick1 : function(component, event, helper){
       let btnmessage1 = vent.getSource().get("v.label");
        component.set("v.message",btnmessage1);
    },
    handleClick2 : function(compoent, event,helper){
        component.set("v.message",event.getSource().get("v.label"));
    },
})