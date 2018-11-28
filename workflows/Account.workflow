<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Alerta_de_email</fullName>
        <description>Alerta de email</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/info_supeco_com</template>
    </alerts>
    <fieldUpdates>
        <fullName>OwnerUpdate</fullName>
        <field>OwnerId</field>
        <lookupValue>rcaparros@vectoritcgroup.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>OwnerUpdate</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Seguimiento Cliente</fullName>
        <actions>
            <name>Alerta_de_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>OwnerUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Seguimiento_de_Cliente</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Jurídico,Físico</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.BillingState</field>
            <operation>equals</operation>
            <value>Madrid</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Aviso_de_creaci_n_de_cliente_Importante_Seguimiento</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Account.CreatedDate</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>Aviso_de_creaci_n_de_cliente_Importante_Seguimiento</fullName>
        <assignedTo>vcb@copado.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Aviso de creación de cliente. Importante Seguimiento.</subject>
    </tasks>
    <tasks>
        <fullName>Seguimiento_de_Cliente</fullName>
        <assignedTo>vcb@copado.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Account.CreatedDate</offsetFromField>
        <priority>High</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Seguimiento de Cliente</subject>
    </tasks>
</Workflow>
