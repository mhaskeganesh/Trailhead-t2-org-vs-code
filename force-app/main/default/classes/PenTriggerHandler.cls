public class PenTriggerHandler{
    public static void updatePen(List<Parker_Pen__c> pens){
        for(Parker_Pen__c p: pens){
            if(p.Price__c > 100){
                p.Price__c= p.Price__c-20;
                p.Discount_Info__c = '20';
            }
        }
    }
}