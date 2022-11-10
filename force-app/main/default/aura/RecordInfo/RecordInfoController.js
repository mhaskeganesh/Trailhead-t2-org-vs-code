({
	
    getValueFromEvent : function(cmp, event) {
        alert(" record info");
        var res = event.getParam("product");
        alert(res+" record info");
        cmp.set("v.record", res);
    }

})