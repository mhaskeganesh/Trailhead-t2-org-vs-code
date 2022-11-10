import { LightningElement } from 'lwc';
import sendAccounts from '@salesforce/apex/AccountsSender.sendAccounts';
import sendAccounts2 from '@salesforce/apex/AccountsSender.sendAccounts2';
export default class DisplayAccounts extends LightningElement {

    accounts='';
    searchKey='';
    handleClick(){
        //alert(this.searchKey);
        this.searchKey = this.template.querySelector('lightning-input').value;
        //alert(this.searchKey);
        if(this.searchKey){
            
            sendAccounts({searchKey : this.searchKey}).then(result => {this.accounts=result; alert('Inside then'+this.accounts)}).catch(error => {alert('Error in filled string'+error)});
           
        }
        else{
            alert('Entered');
            sendAccounts2().then(result => {this.accounts=result; alert('inside then : '+this.accounts)}).catch(error => {alert('Error in empty string'+error)});
            alert('Exited');
        }
        //sendAccounts().then(result => {this.accounts=result; alert(this.accounts)}).catch(error => {alert(error)});
    }
}