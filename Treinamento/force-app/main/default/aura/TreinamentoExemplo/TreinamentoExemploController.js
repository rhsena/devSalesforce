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
    acaoDobotao2: function(component,event,helper){
		component.set("v.validaAlgo",  !component.get('v.validaAlgo'));
    }

    
})