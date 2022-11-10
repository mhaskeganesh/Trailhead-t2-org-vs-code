import { LightningElement, wire } from 'lwc';
import getContacts from '@salesforce/apex/ContactController.getContacts';
import fname from '@salesforce/schema/Contact.FirstName';
import lname from '@salesforce/schema/Contact.LastName';
import email from '@salesforce/schema/Contact.Email';
import { reduceErrors } from 'c/ldsUtils';
const COLUMNS = [
    { label: 'First Name', fieldName: fname.fieldApiName, type: 'text' },
    { label: 'Last Name', fieldName: lname.fieldApiName, type: 'text' },
    { label: 'Email', fieldName: email.fieldApiName, type: 'email' }
];

export default class ContactList extends LightningElement {

   columns = COLUMNS;

    @wire(getContacts)
    contacts;

    get errors() {
        return this.contacts.error ? reduceErrors(this.contacts.error) : [];
    }
}