/* eslint-disable no-alert */
/* eslint-disable no-console */
import { LightningElement, api, wire, track } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
import findRegistro from '@salesforce/apex/CarrosController.findRegistro';

const DELAY = 300;
const FIELDS = [
    'Carro__c.Nome__c',
    'Carro__c.Modelo__c'
];
export default class TreinamentoLWC extends LightningElement {

    @api recordId;
    @track nome;
    @track modelo;
    @track carro;
    @wire(getRecord, {recordId: '$recordId', fields : FIELDS}) 
    wiredRecord({ error, data }) {
        if (error) {
            let message = 'Unknown error';
            alert(message);

        } else if (data) {
            this.carro = data;
            this.nome = this.carro.fields.Nome__c.value;
            this.modelo = this.carro.fields.Nome__c.value;
        }
    }

    @wire(findRegistro, { searchKey: '$searchKey' }) carros

    goToEnviar() {
        alert(this.nome);
    }
    
    changeValue(evt){
        console.log('Current value of the input: ' + evt.target.value);
        this.nome = evt.target.value;
    }

    handleKeyChange(event) {
    
        window.clearTimeout(this.delayTimeout);
        const searchKey = event.target.value;
        // eslint-disable-next-line @lwc/lwc/no-async-operation
        this.delayTimeout = setTimeout(() => {
            this.searchKey = searchKey;
        }, DELAY);
    }

    funcao(){

    }

}