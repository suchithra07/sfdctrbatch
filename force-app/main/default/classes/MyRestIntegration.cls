public class MyRestIntegration 
{
	public static void doCheckPhone()
    {
        //Rest Callouts
        //
        string myEndPoint='http://apilayer.net/api/validate?access_key=b19efb6912a9ba7159c47d79fe7408b9&number=4049334029&country_code=US&format%20=%201';
        map<String,Object> ResponseMap = new map<String,Object>();
        
        HTTP myhttp=new Http();//
        
        HTTPRequest myhttpRequest= new HTTPRequest(); //
        myhttpRequest.setMethod('GET');//
        myhttpRequest.setEndpoint(myEndPoint);//
        
        HttpResponse resp=myhttp.send(myhttprequest);//sending the request
        
        System.debug('Status='+ resp.getStatusCode());
        System.debug('my response='+ resp);
        System.debug('my response get body ='+ resp.getBody());
        ResponseMap=(map<String,Object>) JSON.deserializeUntyped(resp.getbody());
        System.debug('response map='+ ResponseMap);
        
        WrapClass mydata= new WrapClass();
        
         mydata.validnum=  (boolean)ResponseMap.get('valid');
         mydata.Mobnumber=(String)ResponseMap.get('number');
         mydata.LineType=(String)ResponseMap.get('line_type');
         mydata.Country=(String)ResponseMap.get('country_name');
         mydata.Location=(String)ResponseMap.get('location');
        
        System.debug('My data is : '+mydata);
            
    }
    //processing the map
    public class WrapClass
    {
        public boolean validnum {get;set;}
        Public string Mobnumber {get; set;}
        Public string LineType {get; set;}
        Public string Country {get; set;}
        Public string Location {get; set;} 
    }
    
    
}