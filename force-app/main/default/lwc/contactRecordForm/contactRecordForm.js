import { LightningElement, api } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Contact.Name';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
export default class RecordFormExample extends LightningElement {
    // Expose a field to make it available in the template
   // fields = [NAME_FIELD];
    //objectApiName = CONTACT_OBJECT;
    // Flexipage provides recordId and objectApiName
    //@api recordId;
    //@api objectApiName = 'Contact';
}