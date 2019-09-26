trigger CarrosTrigger on Carro__c (before insert, before update, before delete, after update) {
    TriggerDispatcher.Run(new CarroTriggerHandler());
}