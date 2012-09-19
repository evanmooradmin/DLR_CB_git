<?xml version="1.0" encoding="UTF-8"?><wsdl:definitions xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:tns="http://ws.evan-moor.com/" targetNamespace="http://ws.evan-moor.com/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://ws.evan-moor.com/">
      <s:element name="UpdateCheck">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="emcNum" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="0" name="licenseKey" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="0" name="passwordCheck" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="UpdateCheckResponse">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="UpdateCheckResult" type="tns:ArrayOfString"/>
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
            <s:element maxOccurs="1" minOccurs="0" name="fileName" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetMD5HashFromRemoteFileResponse">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="GetMD5HashFromRemoteFileResult" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetFile">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="emcNum" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="0" name="licenseKey" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="0" name="passwordCheck" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetFileResponse">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="GetFileResult" type="s:base64Binary"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ResetDownload">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="ActivationKey" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="0" name="emcNum" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="0" name="passwordCheck" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ResetDownloadResponse">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="ResetDownloadResult" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="UpdateXMLInformation">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="emcNum" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="0" name="xmlComments" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="0" name="passwordCheck" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="UpdateXMLInformationResponse">
        <s:complexType/>
      </s:element>
      <s:element name="CreateEmcDir">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="emcNum" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CreateEmcDirResponse">
        <s:complexType/>
      </s:element>
      <s:element name="UploadXML">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="emcNum" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="0" name="xmlFile" type="s:base64Binary"/>
            <s:element maxOccurs="1" minOccurs="0" name="passwordCheck" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="UploadXMLResponse">
        <s:complexType/>
      </s:element>
    </s:schema>
  </wsdl:types>
  <wsdl:message name="GetFileSoapOut">
    <wsdl:part element="tns:GetFileResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="ResetDownloadSoapOut">
    <wsdl:part element="tns:ResetDownloadResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="UploadXMLSoapIn">
    <wsdl:part element="tns:UploadXML" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="UpdateCheckSoapOut">
    <wsdl:part element="tns:UpdateCheckResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetFileSoapIn">
    <wsdl:part element="tns:GetFile" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="CreateEmcDirSoapOut">
    <wsdl:part element="tns:CreateEmcDirResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="ResetDownloadSoapIn">
    <wsdl:part element="tns:ResetDownload" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="UpdateXMLInformationSoapOut">
    <wsdl:part element="tns:UpdateXMLInformationResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="UpdateXMLInformationSoapIn">
    <wsdl:part element="tns:UpdateXMLInformation" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetMD5HashFromRemoteFileSoapOut">
    <wsdl:part element="tns:GetMD5HashFromRemoteFileResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="CreateEmcDirSoapIn">
    <wsdl:part element="tns:CreateEmcDir" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="UploadXMLSoapOut">
    <wsdl:part element="tns:UploadXMLResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="UpdateCheckSoapIn">
    <wsdl:part element="tns:UpdateCheck" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetMD5HashFromRemoteFileSoapIn">
    <wsdl:part element="tns:GetMD5HashFromRemoteFile" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:portType name="FlashUpdateSoap">
    <wsdl:operation name="UpdateCheck">
      <wsdl:input message="tns:UpdateCheckSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:UpdateCheckSoapOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMD5HashFromRemoteFile">
      <wsdl:input message="tns:GetMD5HashFromRemoteFileSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:GetMD5HashFromRemoteFileSoapOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetFile">
      <wsdl:input message="tns:GetFileSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:GetFileSoapOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ResetDownload">
      <wsdl:input message="tns:ResetDownloadSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:ResetDownloadSoapOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UpdateXMLInformation">
      <wsdl:input message="tns:UpdateXMLInformationSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:UpdateXMLInformationSoapOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CreateEmcDir">
      <wsdl:input message="tns:CreateEmcDirSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:CreateEmcDirSoapOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UploadXML">
      <wsdl:input message="tns:UploadXMLSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:UploadXMLSoapOut">
    </wsdl:output>
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="FlashUpdateSoap12" type="tns:FlashUpdateSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http"/>
    <wsdl:operation name="UpdateCheck">
      <soap12:operation soapAction="http://ws.evan-moor.com/UpdateCheck" style="document"/>
      <wsdl:input>
        <soap12:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMD5HashFromRemoteFile">
      <soap12:operation soapAction="http://ws.evan-moor.com/GetMD5HashFromRemoteFile" style="document"/>
      <wsdl:input>
        <soap12:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetFile">
      <soap12:operation soapAction="http://ws.evan-moor.com/GetFile" style="document"/>
      <wsdl:input>
        <soap12:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ResetDownload">
      <soap12:operation soapAction="http://ws.evan-moor.com/ResetDownload" style="document"/>
      <wsdl:input>
        <soap12:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UpdateXMLInformation">
      <soap12:operation soapAction="http://ws.evan-moor.com/UpdateXMLInformation" style="document"/>
      <wsdl:input>
        <soap12:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CreateEmcDir">
      <soap12:operation soapAction="http://ws.evan-moor.com/CreateEmcDir" style="document"/>
      <wsdl:input>
        <soap12:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UploadXML">
      <soap12:operation soapAction="http://ws.evan-moor.com/UploadXML" style="document"/>
      <wsdl:input>
        <soap12:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="FlashUpdateSoap" type="tns:FlashUpdateSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http"/>
    <wsdl:operation name="UpdateCheck">
      <soap:operation soapAction="http://ws.evan-moor.com/UpdateCheck" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMD5HashFromRemoteFile">
      <soap:operation soapAction="http://ws.evan-moor.com/GetMD5HashFromRemoteFile" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetFile">
      <soap:operation soapAction="http://ws.evan-moor.com/GetFile" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ResetDownload">
      <soap:operation soapAction="http://ws.evan-moor.com/ResetDownload" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UpdateXMLInformation">
      <soap:operation soapAction="http://ws.evan-moor.com/UpdateXMLInformation" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CreateEmcDir">
      <soap:operation soapAction="http://ws.evan-moor.com/CreateEmcDir" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UploadXML">
      <soap:operation soapAction="http://ws.evan-moor.com/UploadXML" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="FlashUpdate">
    <wsdl:port binding="tns:FlashUpdateSoap12" name="FlashUpdateSoap12">
      <soap12:address location="https://www.evan-moor.com/updates/FlashUpdate.asmx"/>
    </wsdl:port>
    <wsdl:port binding="tns:FlashUpdateSoap" name="FlashUpdateSoap">
      <soap:address location="https://www.evan-moor.com/updates/FlashUpdate.asmx"/>
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>