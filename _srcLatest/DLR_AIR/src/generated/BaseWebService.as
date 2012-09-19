/**
 * BaseWebServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package generated
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	import mx.controls.treeClasses.DefaultDataDescriptor;
	import mx.utils.ObjectUtil;
	import mx.utils.ObjectProxy;
	import mx.messaging.events.MessageFaultEvent;
	import mx.messaging.MessageResponder;
	import mx.messaging.messages.SOAPMessage;
	import mx.messaging.messages.ErrorMessage;
   	import mx.messaging.ChannelSet;
	import mx.messaging.channels.DirectHTTPChannel;
	import mx.rpc.*;
	import mx.rpc.events.*;
	import mx.rpc.soap.*;
	import mx.rpc.wsdl.*;
	import mx.rpc.xml.*;
	import mx.rpc.soap.types.*;
	import mx.collections.ArrayCollection;
	
	/**
	 * Base service implementation, extends the AbstractWebService and adds specific functionality for the selected WSDL
	 * It defines the options and properties for each of the WSDL's operations
	 */ 
	public class BaseWebService extends AbstractWebService
    {
		private var results:Object;
		private var schemaMgr:SchemaManager;
		private var BaseWebServiceService:WSDLService;
		private var BaseWebServicePortType:WSDLPortType;
		private var BaseWebServiceBinding:WSDLBinding;
		private var BaseWebServicePort:WSDLPort;
		private var currentOperation:WSDLOperation;
		private var internal_schema:BaseWebServiceSchema;
	
		/**
		 * Constructor for the base service, initializes all of the WSDL's properties
		 * @param [Optional] The LCDS destination (if available) to use to contact the server
		 * @param [Optional] The URL to the WSDL end-point
		 */
		public function BaseWebService(destination:String=null, rootURL:String=null)
		{
			super(destination, rootURL);
			if(destination == null)
			{
				//no destination available; must set it to go directly to the target
				this.useProxy = false;
			}
			else
			{
				//specific destination requested; must set proxying to true
				this.useProxy = true;
			}
			
			if(rootURL != null)
			{
				this.endpointURI = rootURL;
			} 
			else 
			{
				this.endpointURI = null;
			}
			internal_schema = new BaseWebServiceSchema();
			schemaMgr = new SchemaManager();
			for(var i:int;i<internal_schema.schemas.length;i++)
			{
				internal_schema.schemas[i].targetNamespace=internal_schema.targetNamespaces[i];
				schemaMgr.addSchema(internal_schema.schemas[i]);
			}
BaseWebServiceService = new WSDLService("BaseWebServiceService");
			BaseWebServicePort = new WSDLPort("BaseWebServicePort",BaseWebServiceService);
        	BaseWebServiceBinding = new WSDLBinding("BaseWebServiceBinding");
	        BaseWebServicePortType = new WSDLPortType("BaseWebServicePortType");
       		BaseWebServiceBinding.portType = BaseWebServicePortType;
       		BaseWebServicePort.binding = BaseWebServiceBinding;
       		BaseWebServiceService.addPort(BaseWebServicePort);
       		BaseWebServicePort.endpointURI = "https://www.evan-moor.com/updates/FlashUpdate.asmx";
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseWebServicePort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
			var responseMessage:WSDLMessage;
			//define the WSDLOperation: new WSDLOperation(methodName)
            var updateCheck:WSDLOperation = new WSDLOperation("UpdateCheck");
				//input message for the operation
    	        requestMessage = new WSDLMessage("UpdateCheck");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","emcNum"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","licenseKey"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","passwordCheck"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://ws.evan-moor.com/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://ws.evan-moor.com/","UpdateCheck");
                
                responseMessage = new WSDLMessage("UpdateCheckResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","UpdateCheckResult"),null,new QName("http://ws.evan-moor.com/","ArrayOfString")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://ws.evan-moor.com/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://ws.evan-moor.com/","UpdateCheckResponse");
			updateCheck.inputMessage = requestMessage;
	        updateCheck.outputMessage = responseMessage;
            updateCheck.schemaManager = this.schemaMgr;
            updateCheck.soapAction = "http://ws.evan-moor.com/UpdateCheck";
            updateCheck.style = "document";
            BaseWebServiceService.getPort("BaseWebServicePort").binding.portType.addOperation(updateCheck);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getMD5HashFromRemoteFile:WSDLOperation = new WSDLOperation("GetMD5HashFromRemoteFile");
				//input message for the operation
    	        requestMessage = new WSDLMessage("GetMD5HashFromRemoteFile");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","fileName"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://ws.evan-moor.com/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://ws.evan-moor.com/","GetMD5HashFromRemoteFile");
                
                responseMessage = new WSDLMessage("GetMD5HashFromRemoteFileResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","GetMD5HashFromRemoteFileResult"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://ws.evan-moor.com/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://ws.evan-moor.com/","GetMD5HashFromRemoteFileResponse");
			getMD5HashFromRemoteFile.inputMessage = requestMessage;
	        getMD5HashFromRemoteFile.outputMessage = responseMessage;
            getMD5HashFromRemoteFile.schemaManager = this.schemaMgr;
            getMD5HashFromRemoteFile.soapAction = "http://ws.evan-moor.com/GetMD5HashFromRemoteFile";
            getMD5HashFromRemoteFile.style = "document";
            BaseWebServiceService.getPort("BaseWebServicePort").binding.portType.addOperation(getMD5HashFromRemoteFile);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getFile:WSDLOperation = new WSDLOperation("GetFile");
				//input message for the operation
    	        requestMessage = new WSDLMessage("GetFile");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","emcNum"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","licenseKey"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","passwordCheck"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://ws.evan-moor.com/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://ws.evan-moor.com/","GetFile");
                
                responseMessage = new WSDLMessage("GetFileResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","GetFileResult"),null,new QName("http://www.w3.org/2001/XMLSchema","base64Binary")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://ws.evan-moor.com/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://ws.evan-moor.com/","GetFileResponse");
			getFile.inputMessage = requestMessage;
	        getFile.outputMessage = responseMessage;
            getFile.schemaManager = this.schemaMgr;
            getFile.soapAction = "http://ws.evan-moor.com/GetFile";
            getFile.style = "document";
            BaseWebServiceService.getPort("BaseWebServicePort").binding.portType.addOperation(getFile);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var resetDownload:WSDLOperation = new WSDLOperation("ResetDownload");
				//input message for the operation
    	        requestMessage = new WSDLMessage("ResetDownload");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","ActivationKey"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","emcNum"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","passwordCheck"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://ws.evan-moor.com/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://ws.evan-moor.com/","ResetDownload");
                
                responseMessage = new WSDLMessage("ResetDownloadResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","ResetDownloadResult"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://ws.evan-moor.com/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://ws.evan-moor.com/","ResetDownloadResponse");
			resetDownload.inputMessage = requestMessage;
	        resetDownload.outputMessage = responseMessage;
            resetDownload.schemaManager = this.schemaMgr;
            resetDownload.soapAction = "http://ws.evan-moor.com/ResetDownload";
            resetDownload.style = "document";
            BaseWebServiceService.getPort("BaseWebServicePort").binding.portType.addOperation(resetDownload);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var updateXMLInformation:WSDLOperation = new WSDLOperation("UpdateXMLInformation");
				//input message for the operation
    	        requestMessage = new WSDLMessage("UpdateXMLInformation");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","emcNum"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","xmlComments"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","passwordCheck"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://ws.evan-moor.com/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://ws.evan-moor.com/","UpdateXMLInformation");
                
                responseMessage = new WSDLMessage("UpdateXMLInformationResponse");
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://ws.evan-moor.com/";
                responseMessage.encoding.useStyle="literal";				
				updateXMLInformation.inputMessage = requestMessage;
	        updateXMLInformation.outputMessage = responseMessage;
            updateXMLInformation.schemaManager = this.schemaMgr;
            updateXMLInformation.soapAction = "http://ws.evan-moor.com/UpdateXMLInformation";
            updateXMLInformation.style = "document";
            BaseWebServiceService.getPort("BaseWebServicePort").binding.portType.addOperation(updateXMLInformation);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var createEmcDir:WSDLOperation = new WSDLOperation("CreateEmcDir");
				//input message for the operation
    	        requestMessage = new WSDLMessage("CreateEmcDir");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","emcNum"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://ws.evan-moor.com/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://ws.evan-moor.com/","CreateEmcDir");
                
                responseMessage = new WSDLMessage("CreateEmcDirResponse");
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://ws.evan-moor.com/";
                responseMessage.encoding.useStyle="literal";				
				createEmcDir.inputMessage = requestMessage;
	        createEmcDir.outputMessage = responseMessage;
            createEmcDir.schemaManager = this.schemaMgr;
            createEmcDir.soapAction = "http://ws.evan-moor.com/CreateEmcDir";
            createEmcDir.style = "document";
            BaseWebServiceService.getPort("BaseWebServicePort").binding.portType.addOperation(createEmcDir);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var uploadXML:WSDLOperation = new WSDLOperation("UploadXML");
				//input message for the operation
    	        requestMessage = new WSDLMessage("UploadXML");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","emcNum"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","xmlFile"),null,new QName("http://www.w3.org/2001/XMLSchema","base64Binary")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.evan-moor.com/","passwordCheck"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://ws.evan-moor.com/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://ws.evan-moor.com/","UploadXML");
                
                responseMessage = new WSDLMessage("UploadXMLResponse");
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://ws.evan-moor.com/";
                responseMessage.encoding.useStyle="literal";				
				uploadXML.inputMessage = requestMessage;
	        uploadXML.outputMessage = responseMessage;
            uploadXML.schemaManager = this.schemaMgr;
            uploadXML.soapAction = "http://ws.evan-moor.com/UploadXML";
            uploadXML.style = "document";
            BaseWebServiceService.getPort("BaseWebServicePort").binding.portType.addOperation(uploadXML);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://ws.evan-moor.com/","ArrayOfString"),generated.ArrayOfString);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param emcNum* @param licenseKey* @param passwordCheck
		 * @return Asynchronous token
		 */
		public function updateCheck(emcNum:String,licenseKey:String,passwordCheck:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["emcNum"] = emcNum;
	            out["licenseKey"] = licenseKey;
	            out["passwordCheck"] = passwordCheck;
	            currentOperation = BaseWebServiceService.getPort("BaseWebServicePort").binding.portType.getOperation("UpdateCheck");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param fileName
		 * @return Asynchronous token
		 */
		public function getMD5HashFromRemoteFile(fileName:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["fileName"] = fileName;
	            currentOperation = BaseWebServiceService.getPort("BaseWebServicePort").binding.portType.getOperation("GetMD5HashFromRemoteFile");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param emcNum* @param licenseKey* @param passwordCheck
		 * @return Asynchronous token
		 */
		public function getFile(emcNum:String,licenseKey:String,passwordCheck:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["emcNum"] = emcNum;
	            out["licenseKey"] = licenseKey;
	            out["passwordCheck"] = passwordCheck;
	            currentOperation = BaseWebServiceService.getPort("BaseWebServicePort").binding.portType.getOperation("GetFile");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param ActivationKey* @param emcNum* @param passwordCheck
		 * @return Asynchronous token
		 */
		public function resetDownload(activationKey:String,emcNum:String,passwordCheck:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["ActivationKey"] = activationKey;
	            out["emcNum"] = emcNum;
	            out["passwordCheck"] = passwordCheck;
	            currentOperation = BaseWebServiceService.getPort("BaseWebServicePort").binding.portType.getOperation("ResetDownload");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param emcNum* @param xmlComments* @param passwordCheck
		 * @return Asynchronous token
		 */
		public function updateXMLInformation(emcNum:String,xmlComments:String,passwordCheck:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["emcNum"] = emcNum;
	            out["xmlComments"] = xmlComments;
	            out["passwordCheck"] = passwordCheck;
	            currentOperation = BaseWebServiceService.getPort("BaseWebServicePort").binding.portType.getOperation("UpdateXMLInformation");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param emcNum
		 * @return Asynchronous token
		 */
		public function createEmcDir(emcNum:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["emcNum"] = emcNum;
	            currentOperation = BaseWebServiceService.getPort("BaseWebServicePort").binding.portType.getOperation("CreateEmcDir");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param emcNum* @param xmlFile* @param passwordCheck
		 * @return Asynchronous token
		 */
		public function uploadXML(emcNum:String,xmlFile:flash.utils.ByteArray,passwordCheck:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["emcNum"] = emcNum;
	            out["xmlFile"] = xmlFile;
	            out["passwordCheck"] = passwordCheck;
	            currentOperation = BaseWebServiceService.getPort("BaseWebServicePort").binding.portType.getOperation("UploadXML");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
        /**
         * Performs the actual call to the remove server
         * It SOAP-encodes the message using the schema and WSDL operation options set above and then calls the server using 
         * an async invoker
         * It also registers internal event handlers for the result / fault cases
         * @private
         */
        private function call(operation:WSDLOperation,args:Object,token:AsyncToken,headers:Array=null):void
        {
	    	var enc:SOAPEncoder = new SOAPEncoder();
	        var soap:Object = new Object;
	        var message:SOAPMessage = new SOAPMessage();
	        enc.wsdlOperation = operation;
	        soap = enc.encodeRequest(args,headers);
	        message.setSOAPAction(operation.soapAction);
	        message.body = soap.toString();
	        message.url=endpointURI;
            var inv:AsyncRequest = new AsyncRequest();
            inv.destination = super.destination;
            //we need this to handle multiple asynchronous calls 
            var wrappedData:Object = new Object();
            wrappedData.operation = currentOperation;
            wrappedData.returnToken = token;
            if(!this.useProxy)
            {
            	var dcs:ChannelSet = new ChannelSet();	
	        	dcs.addChannel(new DirectHTTPChannel("direct_http_channel"));
            	inv.channelSet = dcs;
            }                
            var processRes:AsyncResponder = new AsyncResponder(processResult,faultResult,wrappedData);
            inv.invoke(message,processRes);
		}
        
        /**
         * Internal event handler to process a successful operation call from the server
         * The result is decoded using the schema and operation settings and then the events get passed on to the actual facade that the user employs in the application 
         * @private
         */
		private function processResult(result:Object,wrappedData:Object):void
           {
           		var headers:Object;
           		var token:AsyncToken = wrappedData.returnToken;
                var currentOperation:WSDLOperation = wrappedData.operation;
                var decoder:SOAPDecoder = new SOAPDecoder();
                decoder.resultFormat = "object";
                decoder.headerFormat = "object";
                decoder.multiplePartsFormat = "object";
                decoder.ignoreWhitespace = true;
                decoder.makeObjectsBindable=false;
                decoder.wsdlOperation = currentOperation;
                decoder.schemaManager = currentOperation.schemaManager;
                var body:Object = result.message.body;
                var stringResult:String = String(body);
                if(stringResult == null  || stringResult == "")
                	return;
                var soapResult:SOAPResult = decoder.decodeResponse(result.message.body);
                if(soapResult.isFault)
                {
	                var faults:Array = soapResult.result as Array;
	                for each (var soapFault:Fault in faults)
	                {
		                var soapFaultEvent:FaultEvent = FaultEvent.createEvent(soapFault,token,null);
		                token.dispatchEvent(soapFaultEvent);
	                }
                } else {
	                result = soapResult.result;
	                headers = soapResult.headers;
	                var event:ResultEvent = ResultEvent.createEvent(result,token,null);
	                event.headers = headers;
	                token.dispatchEvent(event);
                }
           }
           	/**
           	 * Handles the cases when there are errors calling the operation on the server
           	 * This is not the case for SOAP faults, which is handled by the SOAP decoder in the result handler
           	 * but more critical errors, like network outage or the impossibility to connect to the server
           	 * The fault is dispatched upwards to the facade so that the user can do something meaningful 
           	 * @private
           	 */
			private function faultResult(error:MessageFaultEvent,token:Object):void
			{
				//when there is a network error the token is actually the wrappedData object from above	
				if(!(token is AsyncToken))
					token = token.returnToken;
				token.dispatchEvent(new FaultEvent(FaultEvent.FAULT,true,true,new Fault(error.faultCode,error.faultString,error.faultDetail)));
			}
		}
	}

	import mx.rpc.AsyncToken;
	import mx.rpc.AsyncResponder;
	import mx.rpc.wsdl.WSDLBinding;
                
    /**
     * Internal class to handle multiple operation call scheduling
     * It allows us to pass data about the operation being encoded / decoded to and from the SOAP encoder / decoder units. 
     * @private
     */
    class PendingCall
    {
		public var args:*;
		public var headers:Array;
		public var token:AsyncToken;
		
		public function PendingCall(args:Object, headers:Array=null)
		{
			this.args = args;
			this.headers = headers;
			this.token = new AsyncToken(null);
		}
	}