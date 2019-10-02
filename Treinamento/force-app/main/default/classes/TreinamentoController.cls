public class TreinamentoController {
    
    public Proprietario__c dono {get;set;}
    public TreinamentoController() {
        dono = [SELECT Id, Nome__c, Cpf__c FROM Proprietario__c
                   WHERE Id = 'a0Of400001E0eKcEAJ'];
    }

    @future
   public Proprietario__c getProprietario(){
       return dono;
   }

   public Pagereference save(){
        update dono;
        PageReference pref = new ApexPages.StandardController(dono).view();
	    return pref;
   }
}
