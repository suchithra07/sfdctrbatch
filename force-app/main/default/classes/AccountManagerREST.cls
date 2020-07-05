@Restresource(urlMapping='/myaccount/*')
global class AccountManagerREST 
{
    @Httpget
    global static Account getAccountByID()
    {
       RestRequest request=RestContext.request;//to read the URL
        String paramRecID=request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        
        Account ac=[select id ,name,Phone from Account where id=:paramRecID];
       
        return ac;
     }
     
    
    @httpPost
    global static Id createAccount(String acName,String Phone)
    {
        Account myac=new Account();
        myac.Name=acName;
        myac.Phone=Phone;
        
        insert myac;
        return myac.Id;
        
    }
        
}