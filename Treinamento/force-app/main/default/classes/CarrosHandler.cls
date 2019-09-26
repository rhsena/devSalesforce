public class CarrosHandler {

    //Carro__c carro = new Carro__c();
    //carro.Modelo__c = 'Corolla';
    //carro.Nome__c = 'Toyota';
    //carro.Cor__c = 'Prata';
    
    public Carro__c criaCarro(Carro__c carro){
        salvaCarro(carro);
        Utils util = New Utils();
        util.incrementaNome(carro); 
        return carro;
    }

    public Carro__c criaCarro(Carro__c carro, Proprietario__c prop){
        carro.Proprietario__c = prop.Id;   //criando relacionamento
        salvaCarro(carro);

        return carro;
    }

    private void salvaCarro(Carro__c carro){
        insert carro;
    }



     



}

