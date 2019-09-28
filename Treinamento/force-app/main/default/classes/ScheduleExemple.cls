global class ScheduleExemple implements Schedulable{
   global void execute(SchedulableContext sc){

       BatchbleExemple lote = new BatchbleExemple();
        lote.query = 'SELECT Id, Nome__c FROM Carro__c';
        ID batchprocessid = Database.executeBatch(lote);
   }

}
