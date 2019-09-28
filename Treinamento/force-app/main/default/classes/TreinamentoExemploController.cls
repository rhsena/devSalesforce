public class TreinamentoExemploController {
    
	@AuraEnabled    
    public static String salvaRecord(Carro__c car){
        try{
            update car;
            return 'registro salvo com sucesso';
        }catch(Exception e){
            return 'deu Erro no DML';
    	}
    }
    
    @AuraEnabled
    public static String getValordoBack(){
        return retorna();
    }
    
    
    public static String retorna(){
        return 'Valor retornado do BackEnd';
	}

}