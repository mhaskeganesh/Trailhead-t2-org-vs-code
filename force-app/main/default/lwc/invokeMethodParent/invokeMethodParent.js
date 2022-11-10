import { LightningElement } from 'lwc';

export default class InvokeMethodParent extends LightningElement {
    handleClick(event){
        this.template.querySelector('c-invoke-method-child').childMethod();
    }
}