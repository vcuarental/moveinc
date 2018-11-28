({
    //registerEvent name="addItem" type="c:addItemEvent"
submitForm : function(component, event, helper) {
    console.log("entrou no createCampingList js");
    if(helper.validateCampingListForm(component))
    {
        console.log("entrou no if para criar o item");
        // Create the new item
        var newCampingItem = component.get("v.newItem");
        console.log("criou a variavel js");
        helper.createItemForm(component, newCampingItem);
        console.log("saiu do helper js");
    }               
}  
})