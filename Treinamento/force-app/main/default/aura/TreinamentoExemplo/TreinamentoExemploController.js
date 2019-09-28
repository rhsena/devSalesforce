({
	doInit : function(component, event, helper) {
		component.set('v.nome','Hola');
        let list = ['1', '2', '3'];
        component.set('v.estruturaRepeticao',list);
        helper.getValorBack(component,event);
	},
    
    
    acaoDobotao: function(component,event,helper){
       helper.salvaRegistro(component);
    },
    acaoDobotaoConta : function(component,event,helper){
        alert('1>>'+component.get("v.carro.Nome__c"));
    }

    
})