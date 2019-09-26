trigger ProprietarioTrigger on Proprietario__c (before insert, after update) {
    TriggerDispatcher.Run(new ProprietarioTriggerHandler());
}