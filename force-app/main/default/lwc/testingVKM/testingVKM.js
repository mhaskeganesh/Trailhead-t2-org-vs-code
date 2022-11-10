import { LightningElement } from 'lwc';

export default class TestingVKM extends LightningElement {
    truth = false;

    handler(event){
        this.truth = !this.truth;
    }
}