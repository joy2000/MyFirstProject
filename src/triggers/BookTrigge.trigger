trigger BookTrigge on Books__c (before insert) {
        Books__c[] books = Trigger.new;

        BookTools.processBookRecords(books);
}