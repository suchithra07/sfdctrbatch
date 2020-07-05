global class mydailyJobClass implements Schedulable 
{
  

     global void execute(SchedulableContext cscontext)
     {
		MyFirstBatchClass mybatch = new MyFirstBatchClass();
		Id runId = Database.executeBatch(mybatch);
     }

}