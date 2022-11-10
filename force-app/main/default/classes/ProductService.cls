public class ProductService {

    @AuraEnabled
    public static list<Product2> getProd(String prod){
       // System.debug(prod+'  At Apex Class');
        prod='%'+prod+'%';
        list<Product2> plist=[ select Name,ProductCode,Description from Product2 where Name like :prod ];     
        return plist;
    }
}