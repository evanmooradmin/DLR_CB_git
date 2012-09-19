
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package generated{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IWebService
    {
    	//Stub functions for the UpdateCheck operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param emcNum
    	 * @param licenseKey
    	 * @param passwordCheck
    	 * @return An AsyncToken
    	 */
    	function updateCheck(emcNum:String,licenseKey:String,passwordCheck:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function updateCheck_send():AsyncToken;
        
        /**
         * The updateCheck operation lastResult property
         */
        function get updateCheck_lastResult():ArrayOfString;
		/**
		 * @private
		 */
        function set updateCheck_lastResult(lastResult:ArrayOfString):void;
       /**
        * Add a listener for the updateCheck operation successful result event
        * @param The listener function
        */
       function addupdateCheckEventListener(listener:Function):void;
       
       
        /**
         * The updateCheck operation request wrapper
         */
        function get updateCheck_request_var():UpdateCheck_request;
        
        /**
         * @private
         */
        function set updateCheck_request_var(request:UpdateCheck_request):void;
                   
    	//Stub functions for the GetMD5HashFromRemoteFile operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param fileName
    	 * @return An AsyncToken
    	 */
    	function getMD5HashFromRemoteFile(fileName:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getMD5HashFromRemoteFile_send():AsyncToken;
        
        /**
         * The getMD5HashFromRemoteFile operation lastResult property
         */
        function get getMD5HashFromRemoteFile_lastResult():String;
		/**
		 * @private
		 */
        function set getMD5HashFromRemoteFile_lastResult(lastResult:String):void;
       /**
        * Add a listener for the getMD5HashFromRemoteFile operation successful result event
        * @param The listener function
        */
       function addgetMD5HashFromRemoteFileEventListener(listener:Function):void;
       
       
        /**
         * The getMD5HashFromRemoteFile operation request wrapper
         */
        function get getMD5HashFromRemoteFile_request_var():GetMD5HashFromRemoteFile_request;
        
        /**
         * @private
         */
        function set getMD5HashFromRemoteFile_request_var(request:GetMD5HashFromRemoteFile_request):void;
                   
    	//Stub functions for the GetFile operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param emcNum
    	 * @param licenseKey
    	 * @param passwordCheck
    	 * @return An AsyncToken
    	 */
    	function getFile(emcNum:String,licenseKey:String,passwordCheck:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getFile_send():AsyncToken;
        
        /**
         * The getFile operation lastResult property
         */
        function get getFile_lastResult():flash.utils.ByteArray;
		/**
		 * @private
		 */
        function set getFile_lastResult(lastResult:flash.utils.ByteArray):void;
       /**
        * Add a listener for the getFile operation successful result event
        * @param The listener function
        */
       function addgetFileEventListener(listener:Function):void;
       
       
        /**
         * The getFile operation request wrapper
         */
        function get getFile_request_var():GetFile_request;
        
        /**
         * @private
         */
        function set getFile_request_var(request:GetFile_request):void;
                   
    	//Stub functions for the ResetDownload operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param ActivationKey
    	 * @param emcNum
    	 * @param passwordCheck
    	 * @return An AsyncToken
    	 */
    	function resetDownload(activationKey:String,emcNum:String,passwordCheck:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function resetDownload_send():AsyncToken;
        
        /**
         * The resetDownload operation lastResult property
         */
        function get resetDownload_lastResult():String;
		/**
		 * @private
		 */
        function set resetDownload_lastResult(lastResult:String):void;
       /**
        * Add a listener for the resetDownload operation successful result event
        * @param The listener function
        */
       function addresetDownloadEventListener(listener:Function):void;
       
       
        /**
         * The resetDownload operation request wrapper
         */
        function get resetDownload_request_var():ResetDownload_request;
        
        /**
         * @private
         */
        function set resetDownload_request_var(request:ResetDownload_request):void;
                   
    	//Stub functions for the UpdateXMLInformation operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param emcNum
    	 * @param xmlComments
    	 * @param passwordCheck
    	 * @return An AsyncToken
    	 */
    	function updateXMLInformation(emcNum:String,xmlComments:String,passwordCheck:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function updateXMLInformation_send():AsyncToken;
        
        /**
         * The updateXMLInformation operation lastResult property
         */
        function get updateXMLInformation_lastResult():Object;
		/**
		 * @private
		 */
        function set updateXMLInformation_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the updateXMLInformation operation successful result event
        * @param The listener function
        */
       function addupdateXMLInformationEventListener(listener:Function):void;
       
       
        /**
         * The updateXMLInformation operation request wrapper
         */
        function get updateXMLInformation_request_var():UpdateXMLInformation_request;
        
        /**
         * @private
         */
        function set updateXMLInformation_request_var(request:UpdateXMLInformation_request):void;
                   
    	//Stub functions for the CreateEmcDir operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param emcNum
    	 * @return An AsyncToken
    	 */
    	function createEmcDir(emcNum:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function createEmcDir_send():AsyncToken;
        
        /**
         * The createEmcDir operation lastResult property
         */
        function get createEmcDir_lastResult():Object;
		/**
		 * @private
		 */
        function set createEmcDir_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the createEmcDir operation successful result event
        * @param The listener function
        */
       function addcreateEmcDirEventListener(listener:Function):void;
       
       
        /**
         * The createEmcDir operation request wrapper
         */
        function get createEmcDir_request_var():CreateEmcDir_request;
        
        /**
         * @private
         */
        function set createEmcDir_request_var(request:CreateEmcDir_request):void;
                   
    	//Stub functions for the UploadXML operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param emcNum
    	 * @param xmlFile
    	 * @param passwordCheck
    	 * @return An AsyncToken
    	 */
    	function uploadXML(emcNum:String,xmlFile:flash.utils.ByteArray,passwordCheck:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function uploadXML_send():AsyncToken;
        
        /**
         * The uploadXML operation lastResult property
         */
        function get uploadXML_lastResult():Object;
		/**
		 * @private
		 */
        function set uploadXML_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the uploadXML operation successful result event
        * @param The listener function
        */
       function adduploadXMLEventListener(listener:Function):void;
       
       
        /**
         * The uploadXML operation request wrapper
         */
        function get uploadXML_request_var():UploadXML_request;
        
        /**
         * @private
         */
        function set uploadXML_request_var(request:UploadXML_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseWebService;
	}
}