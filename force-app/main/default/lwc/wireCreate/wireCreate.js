import { LightningElement } from 'lwc';
import {createRecord} from 'lightning/uiRecordApi';
import accountObj from '@salesforce/schema/Account';
import accountName from '@salesforce/schema/Account.Name';

export default class WireCreate extends LightningElement {
    handleClick(event){
        const obj ={
        apiName : accountObj.objectApiName,
        fields : {
            [accountName.fieldApiName] : 'Wired Record'
        }
        };

        createRecord(obj).then(account => {alert('Got cerated');}).catch(error => {alert('Gerror '+error);});
         
    }

   
}