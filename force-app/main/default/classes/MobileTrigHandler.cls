public with sharing class MobileTrigHandler {

    public static void calculateDiscound(List<Mobile__c> mobs){

        for(Mobile__c m: mobs){

            if(m.Brand__c == 'Apple' ){
                m.Price__c = m.Price__c * 0.80;
                m.Status__c = 'Congrats! You got 20% discount';
            }
            else if(m.Brand__c == 'Samsung'){
                m.Price__c = m.Price__c * 0.90;
                m.Status__c = 'Congrats! You got 10% discount';
            }
        }
    }

    public static void calculateDiscound(List<Mobile__c> mobs, Map<id,Mobile__c> mapMob){

        for(Mobile__c m: mobs){

            if(mapMob.get(m.id).Brand__c != m.Brand__c)
                if(m.Brand__c == 'Samsung'){
                    m.Price__c = m.Price__c * 0.95;
                    m.Status__c = 'Congrats! You got 5% discount';
                }
        }
    }

}