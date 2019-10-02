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

    public static void CriaLote(){
        BatchbleExemple lote = new BatchbleExemple();
        lote.query = 'SELECT Id, Nome__c FROM Carro__c';
        ID batchprocessid = Database.executeBatch(lote);
    }

    public static void CriaScheduleJob(){
        ScheduleExemple shceduleExemp = new ScheduleExemple();
        System.schedule('Schedule Treinamento', '01 50 19 30 09 2019', shceduleExemp);
    }
     
    public static void CriaFila(){
        QueueableExemple fila = new QueueableExemple();
        System.enqueueJob(fila);
    }


}

