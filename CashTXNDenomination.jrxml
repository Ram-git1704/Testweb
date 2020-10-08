<?xml version="1.0" encoding="UTF-8"?>
<!-- Created with Jaspersoft Studio version last-->
<jasperReport xmlns="http://jasperreports.sourceforge.net/jasperreports" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://jasperreports.sourceforge.net/jasperreports http://jasperreports.sourceforge.net/xsd/jasperreport.xsd" name="Blank A4 Landscape" language="groovy" pageWidth="842" pageHeight="650" orientation="Landscape" columnWidth="802" leftMargin="0" rightMargin="0" topMargin="0" bottomMargin="0" resourceBundle="resource_bundle" uuid="7d1d1d2e-41b7-45fb-be32-c648489da94c">
	<property name="com.jaspersoft.studio.data.defaultdataadapter" value="TARGET_DEV1"/>
	<template><![CDATA[$P{styles}+"TitleSubLabelStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"TitleLabelStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"TitleTextStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"PageHeaderLabelStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"PageHeaderTextStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"ColumnHeaderLabelStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"ColumnHeaderTextStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"GroupHeaderLabelStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"GroupHeaderTextStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"DetailLabelStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"DetailTextStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"DetailNumberStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"GroupFooterLabelStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"GroupFooterTextStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"GroupFooterNumberStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"ColumnFooterLabelStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"ColumnFooterTextStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"PageFooterLabelStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"PageFooterTextStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"SummaryLabelStyle.jrtx"]]></template>
	<template><![CDATA[$P{styles}+"SummaryTextStyle.jrtx"]]></template>
	<parameter name="workBranchID" class="java.lang.String">
		<parameterDescription><![CDATA[]]></parameterDescription>
	</parameter>
	<parameter name="fromDate" class="java.lang.String">
		<parameterDescription><![CDATA[]]></parameterDescription>
	</parameter>
	<parameter name="lvId" class="java.lang.String">
		<parameterDescription><![CDATA[]]></parameterDescription>
	</parameter>
	<parameter name="styles" class="java.lang.String">
		<parameterDescription><![CDATA[]]></parameterDescription>
		<defaultValueExpression><![CDATA["D:/WORKSPACE_REPORTS/styles/receivables/"]]></defaultValueExpression>
	</parameter>
	<parameter name="toDate" class="java.lang.String">
		<parameterDescription><![CDATA[]]></parameterDescription>
	</parameter>
	<parameter name="images" class="java.lang.String">
		<parameterDescription><![CDATA[]]></parameterDescription>
		<defaultValueExpression><![CDATA["D:/WORKSPACE_REPORTS/images/"]]></defaultValueExpression>
	</parameter>
	<parameter name="customerCode" class="java.lang.String">
		<parameterDescription><![CDATA[]]></parameterDescription>
	</parameter>
	<parameter name="uiDateFormat" class="java.lang.String">
		<parameterDescription><![CDATA[]]></parameterDescription>
		<defaultValueExpression><![CDATA["dd/MM/yyyy"]]></defaultValueExpression>
	</parameter>
	<parameter name="customerId" class="java.lang.String"/>
	<parameter name="dbDateFormat" class="java.lang.String">
		<parameterDescription><![CDATA[]]></parameterDescription>
		<defaultValueExpression><![CDATA["MM/dd/yyyy"]]></defaultValueExpression>
	</parameter>
	<parameter name="custCashId" class="java.lang.String"/>
	<parameter name="uiNumberFormat" class="java.lang.String">
		<defaultValueExpression><![CDATA[""]]></defaultValueExpression>
	</parameter>
	<parameter name="decimalFormatSymbols" class="java.text.DecimalFormatSymbols"/>
	<queryString>
		<![CDATA[select * from VW_CASH_RPT_DENOM
where
customer_id=$P{customerId}  and 
cust_cash_id=$P{custCashId}
order by denom_code asc,denom_value  desc]]>
	</queryString>
	<field name="DENOM_CODE" class="java.lang.String"/>
	<field name="DENOM_AMT" class="java.math.BigDecimal"/>
	<field name="DENOM_DESC" class="java.lang.String"/>
	<field name="DENOM_VALUE" class="java.math.BigDecimal"/>
	<field name="NOTE_COUNT" class="java.math.BigDecimal"/>
	<field name="CUSTOMER_ID" class="java.math.BigDecimal"/>
	<field name="CUST_CASH_ID" class="java.math.BigDecimal"/>
	<field name="MAJORMINOR" class="java.math.BigDecimal"/>
	<field name="TOTAL_AMOUNT" class="java.math.BigDecimal"/>
	<field name="DISPNT_NOTES_COUNT" class="java.math.BigDecimal"/>
	<field name="DISPNT_AMOUNT" class="java.math.BigDecimal"/>
	<field name="MUTL_NOTES_COUNT" class="java.math.BigDecimal"/>
	<field name="FAKE_NOTES_COUNT" class="java.math.BigDecimal"/>
	<variable name="TOTAL_AMOUNT" class="java.math.BigDecimal" calculation="Sum">
		<variableExpression><![CDATA[$F{TOTAL_AMOUNT}]]></variableExpression>
		<initialValueExpression><![CDATA[$F{TOTAL_AMOUNT}]]></initialValueExpression>
	</variable>
	<columnHeader>
		<band height="20">
			<rectangle>
				<reportElement uuid="2009dc7c-6f54-4468-8c6f-723341e8baf7" x="0" y="0" width="747" height="20" forecolor="#000000" backcolor="#E6E6E6"/>
			</rectangle>
			<textField isStretchWithOverflow="true">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderLabelStyle" x="0" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement/>
				<textFieldExpression><![CDATA[$R{cashTransactionReport.denominationType.label}]]></textFieldExpression>
			</textField>
			<textField isStretchWithOverflow="true">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderLabelStyle" x="83" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement/>
				<textFieldExpression><![CDATA[$R{cashTransactionReport.denominationValue.label}]]></textFieldExpression>
			</textField>
			<textField isStretchWithOverflow="true">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderLabelStyle" x="166" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement/>
				<textFieldExpression><![CDATA[$R{cashTransactionReport.description.label}]]></textFieldExpression>
			</textField>
			<textField isStretchWithOverflow="true" pattern="">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderLabelStyle" x="415" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement/>
				<textFieldExpression><![CDATA[$R{cashTransactionReport.mutilatedNoteCoinCount.label}]]></textFieldExpression>
			</textField>
			<textField isStretchWithOverflow="true" isBlankWhenNull="true">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderLabelStyle" x="332" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement/>
				<textFieldExpression><![CDATA[$R{cashTransactionReport.originalAmount.label}]]></textFieldExpression>
			</textField>
			<textField isStretchWithOverflow="true" isBlankWhenNull="true">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderLabelStyle" x="249" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement/>
				<textFieldExpression><![CDATA[$R{cashTransactionReport.noteCoinCount.label}]]></textFieldExpression>
			</textField>
			<textField isStretchWithOverflow="true" pattern="">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderLabelStyle" x="498" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement/>
				<textFieldExpression><![CDATA[$R{cashTransactionReport.fakeNoteCoinCount.label}]]></textFieldExpression>
			</textField>
			<textField isStretchWithOverflow="true" pattern="">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderLabelStyle" x="581" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement/>
				<textFieldExpression><![CDATA[$R{cashTransactionReport.discrepantNoteCoinCount.label}]]></textFieldExpression>
			</textField>
			<textField isStretchWithOverflow="true" pattern="">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderLabelStyle" x="664" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement/>
				<textFieldExpression><![CDATA[$R{cashTransactionReport.dicrepantAmount.label}]]></textFieldExpression>
			</textField>
		</band>
	</columnHeader>
	<detail>
		<band height="20" splitType="Stretch">
			<textField pattern="" isBlankWhenNull="true">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderTextStyle" x="0" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement>
					<font isBold="false"/>
				</textElement>
				<textFieldExpression><![CDATA[$F{DENOM_CODE}]]></textFieldExpression>
			</textField>
			<textField pattern="" isBlankWhenNull="true">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderTextStyle" x="498" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement textAlignment="Left">
					<font isBold="false"/>
				</textElement>
				<textFieldExpression><![CDATA[$F{FAKE_NOTES_COUNT}==null?"":$F{FAKE_NOTES_COUNT}]]></textFieldExpression>
			</textField>
			<textField pattern="" isBlankWhenNull="true">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderTextStyle" x="166" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement>
					<font isBold="false"/>
				</textElement>
				<textFieldExpression><![CDATA[$F{DENOM_DESC}]]></textFieldExpression>
			</textField>
			<textField pattern="" isBlankWhenNull="true">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderTextStyle" x="249" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement textAlignment="Left">
					<font isBold="false"/>
				</textElement>
				<textFieldExpression><![CDATA[$F{NOTE_COUNT}]]></textFieldExpression>
			</textField>
			<textField pattern="" isBlankWhenNull="true">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderTextStyle" x="83" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement textAlignment="Right">
					<font isBold="false"/>
				</textElement>
				<textFieldExpression><![CDATA[$F{DENOM_VALUE}==null?"":new DecimalFormat($P{uiNumberFormat},$P{decimalFormatSymbols}).format($F{DENOM_VALUE})]]></textFieldExpression>
			</textField>
			<textField pattern="" isBlankWhenNull="true">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderTextStyle" x="332" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement textAlignment="Right">
					<font isBold="false"/>
				</textElement>
				<textFieldExpression><![CDATA[$F{TOTAL_AMOUNT}==null?"":new DecimalFormat($P{uiNumberFormat},$P{decimalFormatSymbols}).format($F{TOTAL_AMOUNT})]]></textFieldExpression>
			</textField>
			<textField pattern="" isBlankWhenNull="true">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderTextStyle" x="415" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement textAlignment="Left">
					<font isBold="false"/>
				</textElement>
				<textFieldExpression><![CDATA[$F{MUTL_NOTES_COUNT}==null?"":$F{MUTL_NOTES_COUNT}]]></textFieldExpression>
			</textField>
			<textField pattern="" isBlankWhenNull="true">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderTextStyle" x="581" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement textAlignment="Left">
					<font isBold="false"/>
				</textElement>
				<textFieldExpression><![CDATA[$F{DISPNT_NOTES_COUNT}==null?"":$F{DISPNT_NOTES_COUNT}]]></textFieldExpression>
			</textField>
			<textField pattern="" isBlankWhenNull="true">
				<reportElement uuid="ea7018fc-eadd-4b22-8c4e-39d9ffa5ad6f" style="ColumnHeaderTextStyle" x="664" y="0" width="83" height="20"/>
				<box>
					<topPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<leftPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<bottomPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
					<rightPen lineWidth="0.1" lineStyle="Solid" lineColor="#000000"/>
				</box>
				<textElement textAlignment="Right">
					<font isBold="false"/>
				</textElement>
				<textFieldExpression><![CDATA[$F{DISPNT_AMOUNT}==null?"":new DecimalFormat($P{uiNumberFormat},$P{decimalFormatSymbols}).format($F{DISPNT_AMOUNT})]]></textFieldExpression>
			</textField>
		</band>
	</detail>
	<columnFooter>
		<band>
			<printWhenExpression><![CDATA[$V{REPORT_COUNT}!=0]]></printWhenExpression>
		</band>
	</columnFooter>
</jasperReport>
