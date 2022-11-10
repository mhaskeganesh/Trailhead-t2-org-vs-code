({
	fun : function(component, event, helper) {
		var key = component.get('v.acc');
        alert(key+" is the name");
        
        var action = component.get('c.func');
        
        action.setParams({key : key});
        
        action.setCallback(this,function(res){
            if(res.getState()=== 'SUCCESS'){
                
                var ls = res.getReturnValue();
                alert(ls);
                component.set("v.accounts",ls);
                alert(ls);
            }
        });
        
        $A.enqueueAction(action);
	}
})