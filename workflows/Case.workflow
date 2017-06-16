<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>Move to Hardware Desktop  Q</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Case.Category_Type__c</field>
            <operation>equals</operation>
            <value>Hardware</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Category_Subtype__c</field>
            <operation>equals</operation>
            <value>HW - Desktop</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
