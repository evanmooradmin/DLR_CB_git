

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import Number;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property pTotal (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'pTotal' moved to '_1007505228pTotal'
	 */

    [Bindable(event="propertyChange")]
    public function get pTotal():Number
    {
        return this._1007505228pTotal;
    }

    public function set pTotal(value:Number):void
    {
    	var oldValue:Object = this._1007505228pTotal;
        if (oldValue !== value)
        {
            this._1007505228pTotal = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pTotal", oldValue, value));
        }
    }



}
