({
    searchProduct: function(component, event, hepler) {
        var product = component.find("searchPr").get("v.value");
        component.set('v.Pname', product);
    }
})