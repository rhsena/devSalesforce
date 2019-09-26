public with sharing class Utils {

    public SObject incrementaNome(soBject objeto){
        String nome  = (String)objeto.get('Nome__c');
        objeto.put('Nome__c', nome + ' upsert');
        update objeto;
        return objeto;
    }
    
}
