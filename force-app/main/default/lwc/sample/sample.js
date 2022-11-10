import { LightningElement } from 'lwc';

export default class Sample extends LightningElement {
    onChangeHandler(event){
        let btn = event.target.value;
         let target = this.template.querySelector(`[data-id="${btn}"]`);
         if(target){
            target.variant = "brand";
         }
    }
}