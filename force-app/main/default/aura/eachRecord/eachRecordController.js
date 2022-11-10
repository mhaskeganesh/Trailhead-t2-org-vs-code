({
    getProducts : function(component, event, helper) {
        var pr = component.get('v.searchProduct');
        if(pr != null){
            //alert("1111"+pr);
            var action = component.get("c.getProd");
            //alert("2222");
            action.setParams({
                prod : pr
            });
            //alert("3333"); 
            action.setCallback(this,function(res){
                var resp=res.getReturnValue();
                component.set("v.plist",resp) 
            });
            //alert("4444");
            $A.enqueueAction(action,false); 
        }
    },
    
    vDetails : function(component, event, helper) {
        var pr=event.getSource().get('v.name');
        var rec;
        //alert(pr);
        var action = component.get("c.getProd");
        action.setParams({
            prod : pr
        });
        action.setCallback(this,function(res){
            rec=res.getReturnValue();
            var evt = component.getEvent('LoadEvent');
           // alert(rec[0].Name+"111ccccc");
            evt.setParams({
                product : rec[0]
            });
            
            evt.fire();
            //alert(rec[0].Name+"222ccccc");
        });
        $A.enqueueAction(action,false); 
        
        
        
        
    },
    
    
})