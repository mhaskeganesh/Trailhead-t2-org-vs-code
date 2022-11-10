import {LightningElement} from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import ob from '@salesforce/schema/Student__c';
import i from '@salesforce/schema/Student__c.Id';
import sname from '@salesforce/schema/Student__c.Name';
import t from '@salesforce/schema/Student__c.Teacher__c';

export default class DisplayStudents extends LightningElement{
student = ob;
stuFields = [ sname, t];

handleSuccess(event){
    //alert('changes done2....Record got created successfully...ID : '+event.detail.id);
    alert('Inside');
    const toast = new ShowToastEvent({
        title : "Student Record Created",
        message : "Record id - "+event.detail.id,
        variant : "success"
    });

    /*  const toastEvent = new ShowToastEvent({
            title: "Student created",
            message: "Record ID: " + event.detail.id,
            variant: "success"
        });
        this.dispatchEvent(toastEvent);*/

    alert('there only22...');
    this.dispatchEvent(toast);
    alert('Exit');
}


}