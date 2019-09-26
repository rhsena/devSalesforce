public with sharing class ProprietarioHandler {
    
    public Proprietario__c criaProprietario(){
        Proprietario__c proprietario = new Proprietario__c();
        proprietario.Name = 'João';
        proprietario.Cpf__c = '88888888888';
        proprietario.Nome__c = ' Silva';
        insert proprietario;
        return proprietario;
    }

    public Proprietario__c criaProprietarioWithCar(){
        Proprietario__c proprietario = new Proprietario__c();
        proprietario.Name = 'José';
        proprietario.Cpf__c = '88888888888';
        proprietario.Nome__c = ' Francisco';
        insert proprietario;
        criaCarroHandler(proprietario);
        return proprietario;
    }

    private void criaCarroHandler(Proprietario__c prop){
        CarrosHandler carHandler = new CarrosHandler();
        carHandler.criaCarro(prop);
    
    }

   

}
