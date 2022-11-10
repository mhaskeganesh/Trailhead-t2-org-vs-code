import { LightningElement, wire } from 'lwc';
import getMyAccounts from '@salesforce/apex/AccountController3.getMyAccounts';
//import Account from '@salesforce/schema/Case.Account';
export default class WireApex extends LightningElement {

    @wire(getMyAccounts)
    account;
}