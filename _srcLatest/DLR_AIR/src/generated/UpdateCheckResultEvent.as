/**
 * UpdateCheckResultEvent.as
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
    
	public class UpdateCheckResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var UpdateCheck_RESULT:String="UpdateCheck_result";
		/**
		 * Constructor for the new event type
		 */
		public function UpdateCheckResultEvent()
		{
			super(UpdateCheck_RESULT,false,false);
		}
        
		private var _headers:Object;
		private var _result:ArrayOfString;
		public function get result():ArrayOfString
		{
			return _result;
		}

		public function set result(value:ArrayOfString):void
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