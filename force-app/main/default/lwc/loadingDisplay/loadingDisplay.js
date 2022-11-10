import { LightningElement } from 'lwc';

export default class LoadingDisplay extends LightningElement {
    handler(event){
        alert('You have clciked the button'+ event.target.label);

    }
}