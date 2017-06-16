public class InvoiceControllerExtension {

    private final Invoice__c invoice;
    private final Account account;
    public String products;
    

    public InvoiceControllerExtension(ApexPages.StandardController stdController) {
        this.invoice = (Invoice__c)stdController.getRecord();
        Opportunity opp = [SELECT Account.Name, Account.BillingCity,Account.BillingState,Account.BillingPostalCode,
                           Account.BillingCountry, Account.BillingStreet, Account.Default_Discount_Code__c FROM Opportunity WHERE Id = :invoice.Opportunity__c];
        account = opp.Account;
        List<OpportunityLineItem>  olines = [SELECT id, productcode from  OpportunityLineItem
                                             Where OpportunityId = :opp.Id];
            if (olines != null) {
                for (OpportunityLineItem ol : olines) {
                    invoice.Products__c = invoice.Products__c + ' , ' + ol.ProductCode;
                }
            } // end if 
    }
    
    
    public Account getAccount() { return account;}

    public String getGreeting() {
        return 'Hello World Order';
    }
}