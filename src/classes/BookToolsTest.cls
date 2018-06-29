@isTest
public with sharing class BookToolsTest {
   static testMethod void validateProcessBookRecords() {
     Books__c book = new Books__c(Title__c='Harry Potter and the Deathly Hallows', ISBN__c='9780545010221');
     System.debug('Create new book record: ' + book.Title__c);
     insert book;
     Books__c updatedBook = [SELECT Language__c FROM Books__c WHERE Id =:book.Id];
     System.debug('Search Value: ' + updatedBook.Title__c + updatedBook.ISBN__c);
     System.assertEquals('TBD', updatedBook.Language__c);

     book = new Books__c(Title__c='test', ISBN__c='1234567890');
     System.debug('Create new book record: ' + book.Title__c);
     insert book;
     updatedBook = [SELECT Language__c FROM Books__c WHERE Id =:book.Id];
     System.assertEquals('TBD', updatedBook.Language__c);
   }
}