public with sharing class ComputerTrigHandler {
    public static void updateCapacity(List<Computer_2__c> comps){
        for(Computer_2__c c: comps){
            if(c.RAM__c < 1 && c.Processor__c < 2 && c.Hard_Disk_size__c < 50){
                c.Capacity__c = 'Low Capacity';
            }
        }
    }

    public static void updateCapacity(List<Computer_2__c> comps, Map<id, Computer_2__c> compMap){
        for(Computer_2__c c: comps){

            Computer_2__c cOld = compMap.get(c.id);

            if(cOld.RAM__c != c.RAM__c || cOld.Processor__c != c.Processor__c || cOld.Hard_Disk_size__c != c.Hard_Disk_size__c){
                if(c.RAM__c < 1 && c.Processor__c < 2 && c.Hard_Disk_size__c < 50){
                    c.Capacity__c = 'Low Capacity';
                }
                else{
                    c.Capacity__c = '';
                }
            }
            
        }
    }
}