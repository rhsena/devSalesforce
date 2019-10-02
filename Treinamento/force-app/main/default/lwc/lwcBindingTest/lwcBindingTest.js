import { LightningElement , api, track } from 'lwc';
/* eslint-disable no-console */
export default class LwcBindingTest extends LightningElement {
    @track showMessage;
    @api inputTest;

    showMessage = 'testBindApi';
   
    connectedCallback() {
        this.inputTest = 'children LWC';
    }

}