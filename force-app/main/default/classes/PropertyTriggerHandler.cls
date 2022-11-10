public class PropertyTriggerHandler {
	public static void updatePrice(List<Property__c> props){
		for(Property__c p: props){
			if(p.type__c == 'Row House'){
                if(p.price__c != null)
				p.price__c = 0.95 * p.price__c;
			}
		}
	}
}