import { LightningElement } from 'lwc';

export default class IfElseDemo extends LightningElement {
    checker = false;

    handle(event){
        this.checker = !this.checker;
    }
}