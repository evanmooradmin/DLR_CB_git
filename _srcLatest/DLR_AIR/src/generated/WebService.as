/**
 * WebServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:WebService= new WebService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addUpdateCheckEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.UpdateCheck(myemcNum,mylicenseKey,mypasswordCheck);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="generated.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:WebService id="myService">
  *   <srv:UpdateCheck_request_var>
  *		<srv:UpdateCheck_request emcNum=myValue,licenseKey=myValue,passwordCheck=myValue/>
  *   </srv:UpdateCheck_request_var>
  * </srv:WebService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.UpdateCheck_send()" />
  */
package generated
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation UpdateCheck completes with success
     * and returns some data
     * @eventType UpdateCheckResultEvent
     */
    [Event(name="UpdateCheck_result", type="generated.UpdateCheckResultEvent")]
    
    /**
     * Dispatches when a call to the operation GetMD5HashFromRemoteFile completes with success
     * and returns some data
     * @eventType GetMD5HashFromRemoteFileResultEvent
     */
    [Event(name="GetMD5HashFromRemoteFile_result", type="generated.GetMD5HashFromRemoteFileResultEvent")]
    
    /**
     * Dispatches when a call to the operation GetFile completes with success
     * and returns some data
     * @eventType GetFileResultEvent
     */
    [Event(name="GetFile_result", type="generated.GetFileResultEvent")]
    
    /**
     * Dispatches when a call to the operation ResetDownload completes with success
     * and returns some data
     * @eventType ResetDownloadResultEvent
     */
    [Event(name="ResetDownload_result", type="generated.ResetDownloadResultEvent")]
    
    /**
     * Dispatches when a call to the operation UpdateXMLInformation completes with success
     * and returns some data
     * @eventType UpdateXMLInformationResultEvent
     */
    [Event(name="UpdateXMLInformation_result", type="generated.UpdateXMLInformationResultEvent")]
    
    /**
     * Dispatches when a call to the operation CreateEmcDir completes with success
     * and returns some data
     * @eventType CreateEmcDirResultEvent
     */
    [Event(name="CreateEmcDir_result", type="generated.CreateEmcDirResultEvent")]
    
    /**
     * Dispatches when a call to the operation UploadXML completes with success
     * and returns some data
     * @eventType UploadXMLResultEvent
     */
    [Event(name="UploadXML_result", type="generated.UploadXMLResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class WebService extends EventDispatcher implements IWebService
	{
    	private var _baseService:BaseWebService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function WebService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseWebService(destination,rootURL);
        }
        
		//stub functions for the UpdateCheck operation
          

        /**
         * @see IWebService#UpdateCheck()
         */
        public function updateCheck(emcNum:String,licenseKey:String,passwordCheck:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.updateCheck(emcNum,licenseKey,passwordCheck);
            _internal_token.addEventListener("result",_UpdateCheck_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IWebService#UpdateCheck_send()
		 */    
        public function updateCheck_send():AsyncToken
        {
        	return updateCheck(_UpdateCheck_request.emcNum,_UpdateCheck_request.licenseKey,_UpdateCheck_request.passwordCheck);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _UpdateCheck_request:UpdateCheck_request;
		/**
		 * @see IWebService#UpdateCheck_request_var
		 */
		[Bindable]
		public function get updateCheck_request_var():UpdateCheck_request
		{
			return _UpdateCheck_request;
		}
		
		/**
		 * @private
		 */
		public function set updateCheck_request_var(request:UpdateCheck_request):void
		{
			_UpdateCheck_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _updateCheck_lastResult:ArrayOfString;
		[Bindable]
		/**
		 * @see IWebService#UpdateCheck_lastResult
		 */	  
		public function get updateCheck_lastResult():ArrayOfString
		{
			return _updateCheck_lastResult;
		}
		/**
		 * @private
		 */
		public function set updateCheck_lastResult(lastResult:ArrayOfString):void
		{
			_updateCheck_lastResult = lastResult;
		}
		
		/**
		 * @see IWebService#addUpdateCheck()
		 */
		public function addupdateCheckEventListener(listener:Function):void
		{
			addEventListener(UpdateCheckResultEvent.UpdateCheck_RESULT,listener);
		}
			
		/**
		 * @private
		 */
    private function _UpdateCheck_populate_results(event:ResultEvent):void
		{
			var e:UpdateCheckResultEvent = new UpdateCheckResultEvent();
		            e.result = event.result as ArrayOfString;
		                       e.headers = event.headers;
		             updateCheck_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the GetMD5HashFromRemoteFile operation
          

        /**
         * @see IWebService#GetMD5HashFromRemoteFile()
         */
        public function getMD5HashFromRemoteFile(fileName:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getMD5HashFromRemoteFile(fileName);
            _internal_token.addEventListener("result",_GetMD5HashFromRemoteFile_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IWebService#GetMD5HashFromRemoteFile_send()
		 */    
        public function getMD5HashFromRemoteFile_send():AsyncToken
        {
        	return getMD5HashFromRemoteFile(_GetMD5HashFromRemoteFile_request.fileName);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _GetMD5HashFromRemoteFile_request:GetMD5HashFromRemoteFile_request;
		/**
		 * @see IWebService#GetMD5HashFromRemoteFile_request_var
		 */
		[Bindable]
		public function get getMD5HashFromRemoteFile_request_var():GetMD5HashFromRemoteFile_request
		{
			return _GetMD5HashFromRemoteFile_request;
		}
		
		/**
		 * @private
		 */
		public function set getMD5HashFromRemoteFile_request_var(request:GetMD5HashFromRemoteFile_request):void
		{
			_GetMD5HashFromRemoteFile_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getMD5HashFromRemoteFile_lastResult:String;
		[Bindable]
		/**
		 * @see IWebService#GetMD5HashFromRemoteFile_lastResult
		 */	  
		public function get getMD5HashFromRemoteFile_lastResult():String
		{
			return _getMD5HashFromRemoteFile_lastResult;
		}
		/**
		 * @private
		 */
		public function set getMD5HashFromRemoteFile_lastResult(lastResult:String):void
		{
			_getMD5HashFromRemoteFile_lastResult = lastResult;
		}
		
		/**
		 * @see IWebService#addGetMD5HashFromRemoteFile()
		 */
		public function addgetMD5HashFromRemoteFileEventListener(listener:Function):void
		{
			addEventListener(GetMD5HashFromRemoteFileResultEvent.GetMD5HashFromRemoteFile_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _GetMD5HashFromRemoteFile_populate_results(event:ResultEvent):void
		{
			var e:GetMD5HashFromRemoteFileResultEvent = new GetMD5HashFromRemoteFileResultEvent();
		            e.result = event.result as String;
		                       e.headers = event.headers;
		             getMD5HashFromRemoteFile_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the GetFile operation
          

        /**
         * @see IWebService#GetFile()
         */
        public function getFile(emcNum:String,licenseKey:String,passwordCheck:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getFile(emcNum,licenseKey,passwordCheck);
            _internal_token.addEventListener("result",_GetFile_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IWebService#GetFile_send()
		 */    
        public function getFile_send():AsyncToken
        {
        	return getFile(_GetFile_request.emcNum,_GetFile_request.licenseKey,_GetFile_request.passwordCheck);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _GetFile_request:GetFile_request;
		/**
		 * @see IWebService#GetFile_request_var
		 */
		[Bindable]
		public function get getFile_request_var():GetFile_request
		{
			return _GetFile_request;
		}
		
		/**
		 * @private
		 */
		public function set getFile_request_var(request:GetFile_request):void
		{
			_GetFile_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getFile_lastResult:flash.utils.ByteArray;
		[Bindable]
		/**
		 * @see IWebService#GetFile_lastResult
		 */	  
		public function get getFile_lastResult():flash.utils.ByteArray
		{
			return _getFile_lastResult;
		}
		/**
		 * @private
		 */
		public function set getFile_lastResult(lastResult:flash.utils.ByteArray):void
		{
			_getFile_lastResult = lastResult;
		}
		
		/**
		 * @see IWebService#addGetFile()
		 */
		public function addgetFileEventListener(listener:Function):void
		{
			addEventListener(GetFileResultEvent.GetFile_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _GetFile_populate_results(event:ResultEvent):void
		{
			var e:GetFileResultEvent = new GetFileResultEvent();
		            e.result = event.result as flash.utils.ByteArray;
		                       e.headers = event.headers;
		             getFile_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the ResetDownload operation
          

        /**
         * @see IWebService#ResetDownload()
         */
        public function resetDownload(activationKey:String,emcNum:String,passwordCheck:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.resetDownload(activationKey,emcNum,passwordCheck);
            _internal_token.addEventListener("result",_ResetDownload_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IWebService#ResetDownload_send()
		 */    
        public function resetDownload_send():AsyncToken
        {
        	return resetDownload(_ResetDownload_request.ActivationKey,_ResetDownload_request.emcNum,_ResetDownload_request.passwordCheck);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _ResetDownload_request:ResetDownload_request;
		/**
		 * @see IWebService#ResetDownload_request_var
		 */
		[Bindable]
		public function get resetDownload_request_var():ResetDownload_request
		{
			return _ResetDownload_request;
		}
		
		/**
		 * @private
		 */
		public function set resetDownload_request_var(request:ResetDownload_request):void
		{
			_ResetDownload_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _resetDownload_lastResult:String;
		[Bindable]
		/**
		 * @see IWebService#ResetDownload_lastResult
		 */	  
		public function get resetDownload_lastResult():String
		{
			return _resetDownload_lastResult;
		}
		/**
		 * @private
		 */
		public function set resetDownload_lastResult(lastResult:String):void
		{
			_resetDownload_lastResult = lastResult;
		}
		
		/**
		 * @see IWebService#addResetDownload()
		 */
		public function addresetDownloadEventListener(listener:Function):void
		{
			addEventListener(ResetDownloadResultEvent.ResetDownload_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _ResetDownload_populate_results(event:ResultEvent):void
		{
			var e:ResetDownloadResultEvent = new ResetDownloadResultEvent();
		            e.result = event.result as String;
		                       e.headers = event.headers;
		             resetDownload_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the UpdateXMLInformation operation
          

        /**
         * @see IWebService#UpdateXMLInformation()
         */
        public function updateXMLInformation(emcNum:String,xmlComments:String,passwordCheck:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.updateXMLInformation(emcNum,xmlComments,passwordCheck);
            _internal_token.addEventListener("result",_UpdateXMLInformation_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IWebService#UpdateXMLInformation_send()
		 */    
        public function updateXMLInformation_send():AsyncToken
        {
        	return updateXMLInformation(_UpdateXMLInformation_request.emcNum,_UpdateXMLInformation_request.xmlComments,_UpdateXMLInformation_request.passwordCheck);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _UpdateXMLInformation_request:UpdateXMLInformation_request;
		/**
		 * @see IWebService#UpdateXMLInformation_request_var
		 */
		[Bindable]
		public function get updateXMLInformation_request_var():UpdateXMLInformation_request
		{
			return _UpdateXMLInformation_request;
		}
		
		/**
		 * @private
		 */
		public function set updateXMLInformation_request_var(request:UpdateXMLInformation_request):void
		{
			_UpdateXMLInformation_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _updateXMLInformation_lastResult:Object;
		[Bindable]
		/**
		 * @see IWebService#UpdateXMLInformation_lastResult
		 */	  
		public function get updateXMLInformation_lastResult():Object
		{
			return _updateXMLInformation_lastResult;
		}
		/**
		 * @private
		 */
		public function set updateXMLInformation_lastResult(lastResult:Object):void
		{
			_updateXMLInformation_lastResult = lastResult;
		}
		
		/**
		 * @see IWebService#addUpdateXMLInformation()
		 */
		public function addupdateXMLInformationEventListener(listener:Function):void
		{
			addEventListener(UpdateXMLInformationResultEvent.UpdateXMLInformation_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _UpdateXMLInformation_populate_results(event:ResultEvent):void
		{
			var e:UpdateXMLInformationResultEvent = new UpdateXMLInformationResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             updateXMLInformation_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the CreateEmcDir operation
          

        /**
         * @see IWebService#CreateEmcDir()
         */
        public function createEmcDir(emcNum:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.createEmcDir(emcNum);
            _internal_token.addEventListener("result",_CreateEmcDir_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IWebService#CreateEmcDir_send()
		 */    
        public function createEmcDir_send():AsyncToken
        {
        	return createEmcDir(_CreateEmcDir_request.emcNum);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _CreateEmcDir_request:CreateEmcDir_request;
		/**
		 * @see IWebService#CreateEmcDir_request_var
		 */
		[Bindable]
		public function get createEmcDir_request_var():CreateEmcDir_request
		{
			return _CreateEmcDir_request;
		}
		
		/**
		 * @private
		 */
		public function set createEmcDir_request_var(request:CreateEmcDir_request):void
		{
			_CreateEmcDir_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _createEmcDir_lastResult:Object;
		[Bindable]
		/**
		 * @see IWebService#CreateEmcDir_lastResult
		 */	  
		public function get createEmcDir_lastResult():Object
		{
			return _createEmcDir_lastResult;
		}
		/**
		 * @private
		 */
		public function set createEmcDir_lastResult(lastResult:Object):void
		{
			_createEmcDir_lastResult = lastResult;
		}
		
		/**
		 * @see IWebService#addCreateEmcDir()
		 */
		public function addcreateEmcDirEventListener(listener:Function):void
		{
			addEventListener(CreateEmcDirResultEvent.CreateEmcDir_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _CreateEmcDir_populate_results(event:ResultEvent):void
		{
			var e:CreateEmcDirResultEvent = new CreateEmcDirResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             createEmcDir_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the UploadXML operation
          

        /**
         * @see IWebService#UploadXML()
         */
        public function uploadXML(emcNum:String,xmlFile:flash.utils.ByteArray,passwordCheck:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.uploadXML(emcNum,xmlFile,passwordCheck);
            _internal_token.addEventListener("result",_UploadXML_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IWebService#UploadXML_send()
		 */    
        public function uploadXML_send():AsyncToken
        {
        	return uploadXML(_UploadXML_request.emcNum,_UploadXML_request.xmlFile,_UploadXML_request.passwordCheck);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _UploadXML_request:UploadXML_request;
		/**
		 * @see IWebService#UploadXML_request_var
		 */
		[Bindable]
		public function get uploadXML_request_var():UploadXML_request
		{
			return _UploadXML_request;
		}
		
		/**
		 * @private
		 */
		public function set uploadXML_request_var(request:UploadXML_request):void
		{
			_UploadXML_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _uploadXML_lastResult:Object;
		[Bindable]
		/**
		 * @see IWebService#UploadXML_lastResult
		 */	  
		public function get uploadXML_lastResult():Object
		{
			return _uploadXML_lastResult;
		}
		/**
		 * @private
		 */
		public function set uploadXML_lastResult(lastResult:Object):void
		{
			_uploadXML_lastResult = lastResult;
		}
		
		/**
		 * @see IWebService#addUploadXML()
		 */
		public function adduploadXMLEventListener(listener:Function):void
		{
			addEventListener(UploadXMLResultEvent.UploadXML_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _UploadXML_populate_results(event:ResultEvent):void
		{
			var e:UploadXMLResultEvent = new UploadXMLResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             uploadXML_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see IWebService#getWebService()
		 */
		public function getWebService():BaseWebService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addWebServiceFaultEventListener(listener:Function):void
		{
			addEventListener("fault",listener);
		}
		
		/**
		 * Internal function to re-dispatch the fault event passed on by the base service implementation
		 * @private
		 */
		 
		 private function throwFault(event:FaultEvent):void
		 {
		 	dispatchEvent(event);
		 }
    }
}
