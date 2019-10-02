public with sharing class CarrosController {
    @AuraEnabled(cacheable=true)
    public static List<Carro__c> findRegistro(string searchKey){
        String key = '%' + searchKey + '%';
        return [SELECT Id, Nome__c, Modelo__c FROM Carro__c WHERE Nome__c LIKE :key LIMIT 100];
    }

}
