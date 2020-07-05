global  class MyFirstBatchClass implements Database.Batchable<sObject> 
{
	global Database.QueryLocator  start(Database.BatchableContext bc) 
    {
        // collect the batches of records or objects to be passed to execute
			
        	String query='Select Id,Name From Doctor__c';
        	return Database.getQueryLocator(query);
    }

    global void execute(Database.BatchableContext bc, List<Doctor__c> accList)
    {
        // process each batch of records
		
        system.debug('accList = '+accList);
        for(Doctor__c doc:accList)
        {
            
        }
    }    

    global void finish(Database.BatchableContext bc)
    {
        // execute any post-processing operations
        system.debug('finish method can send mail');
    }

}