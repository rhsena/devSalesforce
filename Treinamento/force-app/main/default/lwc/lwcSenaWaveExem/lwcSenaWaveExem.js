import getAccount from '@salesforce/apex/lwcSenaWaveExemController.getAccount';
//import ACCOUNT_OBJECT from '@salesforce/schema/Account'; 
import { LightningElement, api, wire } from 'lwc';

/* eslint-disable no-alert */
/* eslint-disable no-console */
export default class LwcSenaWaveExem extends LightningElement {
    @api showMessage;
    @api accountRecord;
    @wire (getAccount, { accId : '001f40000031MqEAAU' }) acc; 

    //render() {
        //this.accountRecord = this.acc;
       // console.log('accountrecord>>'+JSON.stringify(this.accountRecord));
       // console.log('acc>>'+JSON.stringify(this.acc));
      // this.showMessage = this.acc.Name;
        //console.log(JSON.stringify(this.acc));
    //}

    handleClick(){
        console.log(JSON.stringify(this.acc));
        alert(JSON.stringify(this.acc));
       
    }

    onInputCpf(event){
        this.inputTest = event.target.value;
    }
}