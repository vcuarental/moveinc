trigger HelloWorldTrigger2 on Book__c (before insert) {
    
   Book__c[] books = Trigger.new;

   MyHelloWorld.applyDiscount(books);
}