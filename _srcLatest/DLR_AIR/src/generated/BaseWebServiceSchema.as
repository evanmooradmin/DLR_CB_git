package generated
{
	 import mx.rpc.xml.Schema
	 public class BaseWebServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseWebServiceSchema():void
		{
			 var xsdXML0:XML = <s:schema xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:tns="http://ws.evan-moor.com/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" attributeFormDefault="unqualified" elementFormDefault="qualified" targetNamespace="http://ws.evan-moor.com/">
    <s:element name="UpdateCheck">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="emcNum" type="s:string"/>
                <s:element minOccurs="0" name="licenseKey" type="s:string"/>
                <s:element minOccurs="0" name="passwordCheck" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="UpdateCheckResponse">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="UpdateCheckResult" type="tns:ArrayOfString"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:complexType name="ArrayOfString">
        <s:sequence>
            <s:element maxOccurs="unbounded" minOccurs="0" name="string" nillable="true" type="s:string"/>
        </s:sequence>
    </s:complexType>
    <s:element name="GetMD5HashFromRemoteFile">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="fileName" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="GetMD5HashFromRemoteFileResponse">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="GetMD5HashFromRemoteFileResult" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="GetFile">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="emcNum" type="s:string"/>
                <s:element minOccurs="0" name="licenseKey" type="s:string"/>
                <s:element minOccurs="0" name="passwordCheck" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="GetFileResponse">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="GetFileResult" type="s:base64Binary"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="ResetDownload">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="ActivationKey" type="s:string"/>
                <s:element minOccurs="0" name="emcNum" type="s:string"/>
                <s:element minOccurs="0" name="passwordCheck" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="ResetDownloadResponse">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="ResetDownloadResult" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="UpdateXMLInformation">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="emcNum" type="s:string"/>
                <s:element minOccurs="0" name="xmlComments" type="s:string"/>
                <s:element minOccurs="0" name="passwordCheck" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="UpdateXMLInformationResponse">
        <s:complexType/>
    </s:element>
    <s:element name="CreateEmcDir">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="emcNum" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="CreateEmcDirResponse">
        <s:complexType/>
    </s:element>
    <s:element name="UploadXML">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="emcNum" type="s:string"/>
                <s:element minOccurs="0" name="xmlFile" type="s:base64Binary"/>
                <s:element minOccurs="0" name="passwordCheck" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="UploadXMLResponse">
        <s:complexType/>
    </s:element>
</s:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','http://ws.evan-moor.com/'));
		}
	}
}