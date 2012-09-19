/**
 * GetMD5HashFromRemoteFileResultEvent.as
 * This file was auto-generated from WSDL
 * Any change made to this file will be overwritten when the code is re-generated.
*/
package generated
{
	import mx.utils.ObjectProxy;
	import flash.events.Event;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Typed event handler for the result of the operation
	 */
    
	public class GetMD5HashFromRemoteFileResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var GetMD5HashFromRemoteFile_RESULT:String="GetMD5HashFromRemoteFile_result";
		/**
		 * Constructor for the new event type
		 */
		public function GetMD5HashFromRemoteFileResultEvent()
		{
			super(GetMD5HashFromRemoteFile_RESULT,false,false);
		}
        
		private var _headers:Object;
		private var _result:String;
		public function get result():String
		{
			return _result;
		}

		public function set result(value:String):void
		{
			_result = value;
		}

		public function get headers():Object
		{
			return _headers;
		}

		public function set headers(value:Object):void
		{
			_headers = value;
		}
	}
}