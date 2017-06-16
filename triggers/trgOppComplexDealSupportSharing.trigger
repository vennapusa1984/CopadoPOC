trigger trgOppComplexDealSupportSharing on Opportunity (after insert, after update) {
    if (Trigger.isInsert) {
    }
    else if (Trigger.isUpdate) {        
        for (Opportunity opp : Trigger.old) {
            System.debug('****PHT***** ForecastCategory '+opp.ForecastCategoryName);
            System.debug('****PHT***** opp.Amount '+opp.Amount);
            if (opp.ForecastCategoryName == 'Commit' && opp.Amount >=  1000000) {
                List<OpportunityShare> oppShares = new List<OpportunityShare>();
                // Is Account of Opportunity a VIP or not
                Boolean isVIP = false;
                Boolean isNewBusiness = false;
                Boolean isEquity = false;
                Boolean isDerivative = false;
                Boolean isForex = false;
                Integer vipCount = [SELECT count() 
                                    FROM Account 
                                    WHERE Id = :opp.AccountId AND VIP_Customer__c = true];
                if (vipCount > 0) {isVIP = true;}
                System.debug('****PHT***** VIP is '+isVIP);
                if (opp.Type == 'New Business') {isNewBusiness = true;}
                System.debug('****PHT***** isNewBusiness is '+isNewBusiness);
                if (opp.HasOpportunityLineItem) {
                    System.debug('****PHT***** hasOpportunity Line Item is true');
                    List<OpportunityLineItem> oppLineItems = [SELECT Id, PricebookEntryId 
                                                               FROM OpportunityLineItem
                                                               WHERE OpportunityId = :opp.Id];
                    for (OpportunityLineItem oppLineItem : oppLineItems) {
                        List<Product2> prod_types = [
                            SELECT Family 
                            FROM Product2
                            WHERE Id in (SELECT Product2Id
                                         FROM PriceBookEntry
                                         WHERE Id = :oppLineItem.PricebookEntryId)];
                        for (Product2 types : prod_types) {
                            System.debug('****PHT***** ProdTypes: '+types.Family);
                            if (types.Family == 'Equity') {isEquity = true;}
                            else if (types.Family == 'Derivative') {isDerivative = true;}
                            else if (types.Family == 'Forex') {isForex = true;}
                        } // end for Product2
                        System.debug('****PHT***** Equity: '+isEquity);
                        System.debug('****PHT***** isDerivative : '+isDerivative );
                        System.debug('****PHT***** isForex: '+isForex);
                    } // end for opp line item
                    // VIP Private assignment
                    if (isVip) {
                        // assign to different teams based on what type of product is in the opportunity
                        // if equity notify CDST for equity and give edit rights to opportunity
                        if (isEquity) {
                            // send email notification to this team
                            OpportunityShare os = new OpportunityShare();
                            os.OpportunityId = opp.Id;
                            os.OpportunityAccessLevel = 'Edit';
                            os.UserOrGroupId = '00Gj0000000kt7ZEAQ';
                            oppShares.add(os);
                        }
                        // if derivate notify CDST for derivative and give edit rights to opportunity
                        // if forex notify CDST for forex and give edit rights to opportunity
                    }
                    // Priority assignment
                    else {
                        // Assign to Complex Deal Support team or Prioity Customers
                        
                    }
                    
                } // if has line item
                else{
                    // assign to either generic NB team
                    // assign to generic existing business team
                }
				Database.upsert(oppShares,false);
            } // if >$1M & commit
            
        } // end for all old objects in trigger
    } // else trigger update
    else if (Trigger.isDelete) {
    }

}