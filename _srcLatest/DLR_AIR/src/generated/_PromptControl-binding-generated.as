

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
	 * generated bindable wrapper for property paddingTop (virtual public)
	 * - generated setter
	 * - original getter left as-is
	 * - original virtual public setter 'paddingTop' moved to '_90130308paddingTop'
	 */

    [Bindable(event="propertyChange")]
    virtual public function set paddingTop(value:Number):void
    {
    	var oldValue:Object = this.paddingTop;
        if (oldValue !== value)
        {
            this._90130308paddingTop = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "paddingTop", oldValue, value));
        }
    }



}
