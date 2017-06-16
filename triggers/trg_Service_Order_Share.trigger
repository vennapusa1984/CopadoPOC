trigger trg_Service_Order_Share on Service_Order_Assignment__c (after insert, after delete) {
    
    if(trigger.isInsert){
        List<Service_Order__Share> so_share = new List<Service_Order__Share>();
        System.debug('PHT*********** In insert');
        for(Service_Order_Assignment__c assignment : trigger.new){
            Service_Order__Share newShare = new Service_Order__Share();
            newShare.ParentId = assignment.Service_Order__c;
            newShare.UserOrGroupId = assignment.User__c;
            if (assignment.Service_Role__c == 'Service Engineer') {
                newShare.AccessLevel = 'edit';
                newShare.RowCause = Schema.Service_Order__Share.RowCause.RW_Service_Engineer__c;
            } // end if service engineer role
            else if (assignment.Service_Role__c == 'Sales Rep') {
                newShare.AccessLevel = 'read';
                newShare.RowCause = Schema.Service_Order__Share.RowCause.Read_Only_Sales_Rep__c;
            } // end if sales rep role
            System.debug('PHT*********** ParentId'+assignment.Service_Order__c);
            so_share.add(newShare);
        }// end for
		System.debug('PHT*********** Before Insert');
        Database.insert(so_share,false);
        System.debug('PHT*********** After Insert');
    } // end if
    
    else if (trigger.isDelete){
        
        
        System.debug('PHT*********** In delete');
        for(Service_Order_Assignment__c assignment : trigger.old){
            String rowCause = '';
            if (assignment.Service_Role__c == 'Service Engineer') {
                 rowCause = 'RW_Service_Engineer__c';
            } // end if service engineer role
            else if (assignment.Service_Role__c == 'Sales Rep') {
                rowCause = 'Read_Only_Sales_Rep__c';
            } // end if sales rep role
            List<Service_Order__Share> so_share = 
                [SELECT Id,ParentId,RowCause,UserOrGroupId 
                 FROM Service_Order__Share 
                 WHERE ParentId = :assignment.Service_Order__c 
                 AND RowCause = :rowCause 
                 AND UserOrGroupId = :assignment.User__c];
            System.debug('PHT*********** Count of Rec to delete'+so_share.size());
            Database.delete(so_share,false);
        }// end for

    } // end else
 	
   
} // end trigger