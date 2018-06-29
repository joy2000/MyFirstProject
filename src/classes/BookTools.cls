public with sharing class BookTools {
	public static void processBookRecords(Books__c[] books) {
		for (Books__c book : books) {
			System.debug('Process book record: ' + book.Title__c);
			book.Language__c = 'TBD';
		}
	}
}