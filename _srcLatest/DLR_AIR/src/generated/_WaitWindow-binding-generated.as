

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.controls.SWFLoader;
import mx.controls.Label;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property lbHeader (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'lbHeader' moved to '_1816433757lbHeader'
	 */

    [Bindable(event="propertyChange")]
    public function get lbHeader():mx.controls.Label
    {
        return this._1816433757lbHeader;
    }

    public function set lbHeader(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._1816433757lbHeader;
        if (oldValue !== value)
        {
            this._1816433757lbHeader = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lbHeader", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property swfLoader (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'swfLoader' moved to '_2145423051swfLoader'
	 */

    [Bindable(event="propertyChange")]
    public function get swfLoader():mx.controls.SWFLoader
    {
        return this._2145423051swfLoader;
    }

    public function set swfLoader(value:mx.controls.SWFLoader):void
    {
    	var oldValue:Object = this._2145423051swfLoader;
        if (oldValue !== value)
        {
            this._2145423051swfLoader = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "swfLoader", oldValue, value));
        }
    }



}
