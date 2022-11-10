({
	search : function(component, event, helper) {
		alert("Hello");
        var key = component.get("v.key");
        var action = component.get("c.searchAcc");
        
        alert(key);
        action.setParams({
            key:key
        });
        action.setCallback(this,function(res){
            alert("Hello3");
            var ac=res.getReturnValue();
            alert("Hello4.1111");
            component.set("v.acc",ac);
            alert(ac)
        });
        
        $A.enqueueAction(action);
        alert("Hello2");
	}
})