public with sharing class CrudOperations {
    
    @AuraEnabled(cacheable =true)
    public static List<Account> getAccountDetails()
    {
        return [select id,Name from Account LIMIT 10];
    }
}