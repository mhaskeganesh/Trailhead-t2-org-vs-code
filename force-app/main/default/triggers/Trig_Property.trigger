trigger Trig_Property on Property__c(before insert, before update){
	PropertyTriggerHandler.updatePrice(Trigger.new);
}