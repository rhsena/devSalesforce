@RestResource(urlMapping='/Carros/*')
global class ExporIntegracaoRest {
    
    @HttpGet
    global static List<Carro__c> getCarros(){
        return [SELECT Nome__c, Modelo__c, IPVA__c FROM Carro__c ];        
    }

}