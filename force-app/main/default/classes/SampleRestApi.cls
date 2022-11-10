public class SampleRestApi{
    public static void getData(){
        Http hp = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        req.setMethod('GET');
        
        HttpResponse res = hp.send(req);
        if(res.getStatusCode() == 200){
            Map<String, Object> result = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());
            List<Object> animals = (List<Object>) result.get('animals');
            
            System.debug(animals);
            
            for(Object animal : animals){
                System.debug(animal);
            }
            
        }
        
    }
    
}