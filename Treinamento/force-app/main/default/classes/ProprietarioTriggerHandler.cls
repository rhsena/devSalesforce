public with sharing class ProprietarioTriggerHandler implements ITriggerHandler
{
    public Boolean IsDisabled()
    {
        return true;
    }
 
    public void BeforeInsert(List<SObject> newItems) {
        
    }
 
    public void BeforeUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems) {
        
    }
 
    public void BeforeDelete(Map<Id, SObject> oldItems) {

    }
 
    public void AfterInsert(Map<Id, SObject> newItems) {
       
    }
 
    public void AfterUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems) {
        Map<Id,Proprietario__c> proprietarios = (Map<Id,Proprietario__c>)newItems;
        List<Carro__c> carros = [SELECT Nome__c, Proprietario__r.Nome__c FROM Carro__c WHERE Proprietario__c IN :proprietarios.keySet() ];
        for(Carro__c carro : carros){
            carro.Nome__c = carro.Nome__c + ' do ' + carro.Proprietario__r.Nome__c;
        }
        update carros;
    }
 
    public void AfterDelete(Map<Id, SObject> oldItems) {}
 
    public void AfterUndelete(Map<Id, SObject> oldItems) {}
}
