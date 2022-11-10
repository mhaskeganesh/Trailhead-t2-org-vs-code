import { LightningElement, api } from 'lwc';

export default class InvokeMethodChild extends LightningElement {
    @api
    childMethod(){
        alert('Hey, I am a child component\'s method hanks for the call');
    }
}