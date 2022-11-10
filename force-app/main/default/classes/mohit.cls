public class mohit{
    public static void syncParts(List<Map<Object,String>> toupsert, List<Map<Object,String>> todelete)
    {
        System.Debug('syncProducts');
        System.debug('toupsert--->'+toupsert);
        System.debug('todelete--->'+todelete);

        List<ProductConsumed> delIDs = new List<ProductConsumed>();
        for(Map<Object,String> m : todelete)
        {
            String strID = m.get('partId');
            if(strID.left(1)=='-')
                continue;
            delIDs.add(new ProductConsumed(Id=strID));
        }

        List<ProductConsumed> prods = new List<ProductConsumed>();
        for(Map<Object,String> m : toupsert)
        {
            String strID = m.get('partId');
            Id recordID = null;
            if(strID.left(1)!='-')
                recordID = strID;

            ProductConsumed prod = new ProductConsumed(Id=recordID,
                WorkOrderId=m.get('workOrderId'), 
                QuantityConsumed=1,   
                SRO__c = m.get('sroNumber'), 
                Tracking_Number__c = m.get('trackingNumber'),
                PricebookEntryId=m.get('priceBookEntryId'),
                Observation__c=m.get('observation'), 
                Critical_Part__c=m.get('criticalPart'), 
                Source__c=m.get('source'), 
                Status__c=m.get('status'), 
                NewSerialNumber__c=m.get('newSerialNumber'), 
                OldSerialNumber__c=m.get('oldSerialNumber'));
            
            prods.add(prod);
        }
        
        try 
        {
            /*
            Database.delete(delIDs, true);
            Database.upsert(prods, true);
            */

            delete delIDs;
            upsert prods;
        } 
        catch (Exception e) 
        {
            System.Debug(e.getMessage());
            throw(e);
        }
    }
}