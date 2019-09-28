({
	helperMethod : function(component,event) {
		alert('entrei no helper method');
        this.helperMethod2(component,event);
	},
    
    salvaRegistro : function(component){
        var action = component.get("c.salvaRecord");

        action.setParams({
            "car": component.get('v.carro')
        });
       action.setCallback(this, function(response){
            var state = response.getState();
           	alert(state);
            if (component.isValid() && state === "SUCCESS") {
				let retorno = response.getReturnValue(); 
                alert(retorno);
            }
            else if( state ==="ERROR") {
                console.log('nao deu sucesso');				
            }else{
                
			}
        });
        $A.enqueueAction(action);
        
    },
    
    getValorBack: function(component,event){
        //getValordoBack
        
       var action = component.get("c.getValordoBack");
       action.setCallback(this, function(response){
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {
				let retorno = response.getReturnValue(); 
                component.set("v.nome", retorno);
            }
            else if( state ==="ERROR") {
                console.log('nao deu sucesso');				
            }else{
                
			}
        });
        $A.enqueueAction(action);
       
    }
})