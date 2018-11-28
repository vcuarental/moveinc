({
	myAction : function(component, event, helper) {
        component.set("v.Columns", [
    		{label:"Subject", fieldName:"Subject", type:"text"},
            {label:"Email", fieldName:"Email__c", type:"text"},
            {label:"Owner", fieldName:"Ownername__c", type:"hyperlink"},
		]);

        var action = component.get("c.getCases");
    	action.setParams({
    	recordId: component.get("v.recordId")
		});
	action.setCallback(this, function(data) {
    	component.set("v.Cases", data.getReturnValue());
	});
	$A.enqueueAction(action);
		
	}
})