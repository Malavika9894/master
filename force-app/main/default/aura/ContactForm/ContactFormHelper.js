({
	helperMethod : function(component) {
        var action=component.get("c.serverEcho");
        action.setParams(
            {
                Firstname :component.get("v.Lastname"),
                Birthdate :component.get("v.Birthdate"),
                Country :component.get("v.Country"),
                msg :component.get("v.msg")
            }       
                 );       
        action.setCallback(this, function(response)
        {
                  var state = response.getState();
       			 if(state ==="SUCCESS")       
        {
            console.log("from server : " + response.getReturnValue());
            component.set("v.msg" , response.getReturnValue());
            this.msgBox(component,'slds-show');
        }
        else if 
            (state ==="INCOMPLETE")
            {
                //                
            }
        else if
            (state ==="ERROR")
        {
            var errors =resposne.getError();
            if(errors)
            {
                if(errors[0] && errors[0].message)
                {
                    console.log("Error message:" +errors[0].message);
                    
                }
                else
                {
                    console.log("Unknown error");
                    
                }
            }
            
        }
        }
                );   
    $A.enqueueAction(action);    
                    
    }	
                           
})