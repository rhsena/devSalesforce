global class BatchbleExemple implements Database.Batchable<sObject>{
    public String query;

    global Database.QueryLocator start(Database.BatchableContext BC){ 
        return Database.getQueryLocator(query);  
    }

    global void execute(Database.BatchableContext BC, List<sObject> scope){
        List<Carro__c> carros = (List<Carro__c>)scope;
        for(Carro__c car : carros){
            if(car.Nome__c == 'Volkswagen'){
                car.Nome__c = 'VW';
            }else if(car.Nome__c == 'VW'){
                car.Nome__c = 'Volkswagen';
            }         
        }
        update carros;
    } 

    global void finish(Database.BatchableContext BC){
    }

}
