<?xml version="1.0" encoding="UTF-8"?>
<CustomApplication xmlns="http://soap.sforce.com/2006/04/metadata">
    <brand>
        <headerColor>#2218AB</headerColor>
        <logo>ComFamaLogo1</logo>
        <logoVersion>1</logoVersion>
        <shouldOverrideOrgTheme>true</shouldOverrideOrgTheme>
    </brand>
    <description>Consola de Servicio para Comercial Fama</description>
    <formFactors>Large</formFactors>
    <isNavAutoTempTabsDisabled>false</isNavAutoTempTabsDisabled>
    <isNavPersonalizationDisabled>false</isNavPersonalizationDisabled>
    <label>Comercial Fama Soporte</label>
    <navType>Console</navType>
    <setupExperience>service</setupExperience>
    <tabs>HOME</tabs>
    <tabs>standard-Account</tabs>
    <tabs>standard-Contact</tabs>
    <tabs>standard-Case</tabs>
    <tabs>standard-Event</tabs>
    <tabs>standard-Feed</tabs>
    <tabs>standard-report</tabs>
    <tabs>standard-Dashboard</tabs>
    <uiType>Lightning</uiType>
    <utilityBar>Custom_Console_UtilityBar</utilityBar>
    <workspaceConfig>
        <mappings>
            <tab>HOME</tab>
        </mappings>
        <mappings>
            <fieldName>ParentId</fieldName>
            <tab>standard-Account</tab>
        </mappings>
        <mappings>
            <tab>standard-Case</tab>
        </mappings>
        <mappings>
            <fieldName>AccountId</fieldName>
            <tab>standard-Contact</tab>
        </mappings>
        <mappings>
            <tab>standard-Dashboard</tab>
        </mappings>
        <mappings>
            <tab>standard-Event</tab>
        </mappings>
        <mappings>
            <tab>standard-Feed</tab>
        </mappings>
        <mappings>
            <tab>standard-report</tab>
        </mappings>
    </workspaceConfig>
</CustomApplication>