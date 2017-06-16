<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Affiliate_Account</fullName>
        <field>Affiliated_Account__c</field>
        <literalValue>1</literalValue>
        <name>Update Affiliate Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Autopopulate Affiliate Account</fullName>
        <actions>
            <name>Update_Affiliate_Account</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Check to see if role is Affiliate Fund Mgr</description>
        <formula>$Profile.Id = &apos;00ej00000012fpq&apos;</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
