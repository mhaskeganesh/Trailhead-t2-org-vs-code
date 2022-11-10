import { LightningElement, api, wire } from 'lwc';
import sendAccounts from '@salesforce/apex/LwcController.sendAccounts';
export default class MyFirstLwcComponent extends LightningElement {
    fisrtNameInput = "";
    sampleVariable = "This is internal testing please ignore";
    @api lastName = 'Mhaske';
    result = "";

    handleChange(event){
        this.fisrtNameInput = event.target.value;
    }

    handleClick(event){

        alert("Button is clicked...changed2");
    }

    @wire(sendAccounts)
    wiredMethod({error, data}){
        //alert("I am inside wire method");
        if(data){
            this.result = data;
            //alert(this.result);
        }
        else if(error){
            //alert("We got an error");
        }
    }
}