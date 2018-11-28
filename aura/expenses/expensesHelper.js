({
        createExpense: function(component, expense) {
        var action = component.get("c.saveExpense");
        action.setParams({
            "expense": expense
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                var expenses = component.get("v.expenses");
                console.log("Expenses before 'create': " + JSON.stringify(expenses));
                expenses.push(response.getReturnValue());
                component.set("v.expenses", expenses);
                console.log("Expenses after 'create': " + JSON.stringify(expenses));
            }
        });
        $A.enqueueAction(action);
    },
        updateExpense: function(component, expense) {
        var action = component.get("c.saveExpense");
        action.setParams({
            "expense": expense
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                // do nothing!
            }
        });
        $A.enqueueAction(action);
    },

})