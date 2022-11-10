import { LightningElement, wire } from 'lwc';
import {getRecord, getFieldValue} from 'lightning/uiRecordApi';
import accName from '@salesforce/schema/Account.Name';

export default class WireProperty extends LightningElement {

    recordId = '0015g00000Z7KQkAAN';
    @wire(getRecord, {recordId : '$recordId', fields : [accName]})
    account;

    get name(){
        return getFieldValue(this.account.data, accName);
    }
    // name = 'Changed'+this.account.fields.Name.value;
    
}