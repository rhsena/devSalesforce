public with sharing class CarroTriggerHandler implements ITriggerHandler
{
    public Boolean IsDisabled()
    {
        return true;
    }
 
    public void BeforeInsert(List<SObject> newItems) {

    }
 
    public void BeforeUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems) {
        Map<Id,Carro__c> carros = (Map<Id,Carro__c>)newItems;
        for(Carro__c qualquer : carros.values()){
            carro.Ipva2__c = carro.Preco__c * 0.04;
        }
    }
 
    public void BeforeDelete(Map<Id, SObject> oldItems) {

    }
 
    public void AfterInsert(Map<Id, SObject> newItems) {
        
    }
 
    public void AfterUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems) {}
 
    public void AfterDelete(Map<Id, SObject> oldItems) {}
 
    public void AfterUndelete(Map<Id, SObject> oldItems) {}
}