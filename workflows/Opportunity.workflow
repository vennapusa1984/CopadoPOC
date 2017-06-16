<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Opportunity_Approval</fullName>
        <ccEmails>phuongtran2k@gmail.com</ccEmails>
        <description>Opportunity Approval</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Opportunity_Approval</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_Rejection</fullName>
        <ccEmails>phuongtran2k@gmail.com</ccEmails>
        <description>Opportunity Rejection</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Opportunity_Rejection</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_Rejection_Notificiation</fullName>
        <ccEmails>phuongtran2k@gmail.com</ccEmails>
        <description>Opportunity Rejection</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Opportunity_Rejection</template>
    </alerts>
    <fieldUpdates>
        <fullName>CEO_Approved</fullName>
        <field>Management_Approval_Stage__c</field>
        <literalValue>CEO Approval</literalValue>
        <name>CEO Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CEO_Rejected</fullName>
        <field>Management_Approval_Stage__c</field>
        <literalValue>CEO Rejected</literalValue>
        <name>CEO Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Save_Original_Deal_Amount</fullName>
        <field>Original_Deal_Amount__c</field>
        <formula>Amount</formula>
        <name>Save Original Deal Amount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Mgmt_Approval</fullName>
        <description>Uncheck Mgmt Approval Once going through the submission process</description>
        <field>Management_Approval__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Mgmt Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approval_Stage_Dir_Approved</fullName>
        <field>Management_Approval_Stage__c</field>
        <literalValue>Director Approved</literalValue>
        <name>Update Approval Stage - Dir Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approval_Stage_Dir_Rejected</fullName>
        <field>Management_Approval_Stage__c</field>
        <literalValue>Director Rejected</literalValue>
        <name>Update Approval Stage - Dir Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approval_Stage_EMEA_Approved</fullName>
        <field>Management_Approval_Stage__c</field>
        <literalValue>Director Approved</literalValue>
        <name>Update Approval Stage - EMEA Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approval_Stage_EMEA_Rjected</fullName>
        <field>Management_Approval_Stage__c</field>
        <literalValue>Director Rejected</literalValue>
        <name>Update Approval Stage - EMEA Rjected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approval_Stage_Management_Appro</fullName>
        <description>Updates picklist to Manager Appoval</description>
        <field>Management_Approval_Stage__c</field>
        <literalValue>Manager Approval</literalValue>
        <name>Update Approval Stage - Manager Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approval_Stage_Mgr_Approved</fullName>
        <description>Updates to Manager Approved</description>
        <field>Management_Approval_Stage__c</field>
        <literalValue>Manager Approved</literalValue>
        <name>Update Approval Stage - Mgr Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approval_Stage_Mgr_Rejected</fullName>
        <field>Management_Approval_Stage__c</field>
        <literalValue>Manager Rejected</literalValue>
        <name>Update Approval Stage - Mgr Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approval_Stage_Overall_App</fullName>
        <field>Management_Approval_Stage__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Approval Stage - Overall App</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approval_Stage_Rjected</fullName>
        <field>Management_Approval_Stage__c</field>
        <literalValue>Rejected</literalValue>
        <name>Update Approval Stage - Rjected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Mgmt_Approval</fullName>
        <description>Update Mgmt Field to Approved</description>
        <field>Management_Approval__c</field>
        <literalValue>1</literalValue>
        <name>Update Mgmt Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Mgmt_Rejection</fullName>
        <field>Management_Approval__c</field>
        <literalValue>0</literalValue>
        <name>Update Mgmt Rejection</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Opp_Tracker_Field</fullName>
        <field>Opportunity_Amount_Tracker__c</field>
        <formula>if (ISNEW() ||  ISNULL( Opportunity_Amount_Tracker__c ) , 0,  Opportunity_Amount_Tracker__c +1)</formula>
        <name>Update Opp Tracker Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>PublishOpportunity</fullName>
        <apiVersion>35.0</apiVersion>
        <endpointUrl>http://intg-playground.herokuapp.com/sfdc/omlistener/endpoint/ece97f64-a7a3-4b26-9c53-6d7a8cacd20f</endpointUrl>
        <fields>Id</fields>
        <fields>IsWon</fields>
        <fields>Name</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>phuongtran2k-badge@salesforce.com</integrationUser>
        <name>PublishOpportunity</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>newopp</fullName>
        <apiVersion>35.0</apiVersion>
        <endpointUrl>http://google</endpointUrl>
        <fields>CampaignId</fields>
        <fields>CloseDate</fields>
        <fields>ContractId</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>CurrencyIsoCode</fields>
        <fields>Id</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>phuongtran2k-badge@salesforce.com</integrationUser>
        <name>newopp</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Opportunity Change Tracker</fullName>
        <actions>
            <name>Update_Opp_Tracker_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( Amount )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>PublishOppOnCloseWon</fullName>
        <actions>
            <name>PublishOpportunity</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Save Original Deal Amount</fullName>
        <actions>
            <name>Save_Original_Deal_Amount</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Saves the original deal amount when opp is created</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
