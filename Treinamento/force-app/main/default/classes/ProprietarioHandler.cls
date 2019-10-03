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
        Carro__c carro = new Carro__c();
        carro.Modelo__c = 'Corolla';
        carro.Nome__c = 'Toyota';
        carro.Cor__c = 'Prata';
       
        carHandler.criaCarro(carro,prop);
    
    }

   

}
