

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import int;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property gradeNumber (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'gradeNumber' moved to '_584119808gradeNumber'
	 */

    [Bindable(event="propertyChange")]
    public function get gradeNumber():int
    {
        return this._584119808gradeNumber;
    }

    public function set gradeNumber(value:int):void
    {
    	var oldValue:Object = this._584119808gradeNumber;
        if (oldValue !== value)
        {
            this._584119808gradeNumber = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "gradeNumber", oldValue, value));
        }
    }



}
