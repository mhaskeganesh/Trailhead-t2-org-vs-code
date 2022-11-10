import { LightningElement } from 'lwc';
import ShowToastEvent from 'lightning/platformShowToastEvent';
import objName1 from '@salesforce/schema/Contact';
import firstName from '@salesforce/schema/Contact.FirstName';
import lastName from '@salesforce/schema/Contact.LastName';
import email from '@salesforce/schema/Contact.Email';

export default class ContactCreator extends LightningElement {
    objName = objName1;
    conFields = [firstName, lastName, email];

    handleSuccess(event){
        const toast = new ShowToastEvent({
            title : 'Contact created',
            message : 'Contact ID is'+event.detail.id,
            variant : 'success'
        });

        this.dispatchEvent(toast);
    }
}