<?xml version="1.0" encoding="UTF-8"?>
<jasperReport xmlns="http://jasperreports.sourceforge.net/jasperreports" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://jasperreports.sourceforge.net/jasperreports http://jasperreports.sourceforge.net/xsd/jasperreport.xsd" name="MeritList" language="groovy" pageWidth="595" pageHeight="842" columnWidth="555" leftMargin="20" rightMargin="20" topMargin="20" bottomMargin="20" uuid="55fa3fd9-ac3c-4eac-9910-afe7951fa58a">
	<property name="ireport.zoom" value="1.0"/>
	<property name="ireport.x" value="0"/>
	<property name="ireport.y" value="15"/>
	<queryString>
		<![CDATA[SELECT * FROM marksheet]]>
	</queryString>
	<field name="ID" class="java.lang.Long">
		<fieldDescription><![CDATA[]]></fieldDescription>
	</field>
	<field name="CREATED_BY" class="java.lang.String">
		<fieldDescription><![CDATA[]]></fieldDescription>
	</field>
	<field name="CREATED_DATETIME" class="java.sql.Timestamp">
		<fieldDescription><![CDATA[]]></fieldDescription>
	</field>
	<field name="MODIFIED_BY" class="java.lang.String">
		<fieldDescription><![CDATA[]]></fieldDescription>
	</field>
	<field name="MODIFIED_DATETIME" class="java.sql.Timestamp">
		<fieldDescription><![CDATA[]]></fieldDescription>
	</field>
	<field name="CHEMISTRY" class="java.lang.Integer">
		<fieldDescription><![CDATA[]]></fieldDescription>
	</field>
	<field name="MATHS" class="java.lang.Integer">
		<fieldDescription><![CDATA[]]></fieldDescription>
	</field>
	<field name="NAME" class="java.lang.String">
		<fieldDescription><![CDATA[]]></fieldDescription>
	</field>
	<field name="PHYSICS" class="java.lang.Integer">
		<fieldDescription><![CDATA[]]></fieldDescription>
	</field>
	<field name="ROLL_NO" class="java.lang.String">
		<fieldDescription><![CDATA[]]></fieldDescription>
	</field>
	<field name="STUDENT_ID" class="java.lang.Long">
		<fieldDescription><![CDATA[]]></fieldDescription>
	</field>
	<variable name="ROLL_NO_1" class="java.lang.Integer" resetType="Page" calculation="DistinctCount">
		<variableExpression><![CDATA[$F{ROLL_NO}]]></variableExpression>
	</variable>
	<background>
		<band splitType="Stretch"/>
	</background>
	<title>
		<band height="31" splitType="Stretch">
			<textField>
				<reportElement x="242" y="0" width="181" height="20" uuid="481e73e1-f505-463d-850d-d2e8f6509aaf"/>
				<textElement>
					<font size="14" isBold="true"/>
				</textElement>
				<textFieldExpression><![CDATA[MERIT LIST]]></textFieldExpression>
			</textField>
		</band>
	</title>
	<pageHeader>
		<band height="50" splitType="Stretch">
			<image>
				<reportElement x="204" y="13" width="134" height="37" uuid="04693be7-d2c1-40cb-9e75-8cc827fa8fc8"/>
				<imageExpression><![CDATA["D:\\ORSProj0\\src\\main\\webapp\\resources\\images\\customLogo.jpg"]]></imageExpression>
			</image>
		</band>
	</pageHeader>
	<columnHeader>
		<band height="61" splitType="Stretch">
			<textField>
				<reportElement x="17" y="13" width="100" height="20" uuid="54c0fd19-ac8f-439f-8554-0d72e8d217c3"/>
				<textFieldExpression><![CDATA[$F{ROLL_NO}]]></textFieldExpression>
			</textField>
			<textField>
				<reportElement x="117" y="13" width="100" height="20" uuid="33b1a0cc-f48e-456f-8e62-f81d2b8b9da0"/>
				<textFieldExpression><![CDATA[$F{NAME}]]></textFieldExpression>
			</textField>
			<textField>
				<reportElement x="185" y="13" width="100" height="20" uuid="32c453a6-7247-4054-a3ae-06927899d64c"/>
				<textFieldExpression><![CDATA[$F{PHYSICS}]]></textFieldExpression>
			</textField>
			<textField>
				<reportElement x="266" y="13" width="100" height="20" uuid="edc7c70e-d42c-4c9b-8848-bb88abbaabc1"/>
				<textFieldExpression><![CDATA[$F{CHEMISTRY}]]></textFieldExpression>
			</textField>
			<textField>
				<reportElement x="385" y="13" width="100" height="20" uuid="901392df-1783-4847-8794-777d2e07ca62"/>
				<textFieldExpression><![CDATA[$F{MATHS}]]></textFieldExpression>
			</textField>
			<textField>
				<reportElement x="455" y="13" width="100" height="20" uuid="95c7d5c0-0da2-4e24-b1a1-83f00e339a27"/>
				<textFieldExpression><![CDATA[$$F{TOTAL}]]></textFieldExpression>
			</textField>
		</band>
	</columnHeader>
	<detail>
		<band height="125" splitType="Stretch"/>
	</detail>
	<columnFooter>
		<band height="45" splitType="Stretch"/>
	</columnFooter>
	<pageFooter>
		<band height="54" splitType="Stretch"/>
	</pageFooter>
	<summary>
		<band height="42" splitType="Stretch"/>
	</summary>
</jasperReport>
