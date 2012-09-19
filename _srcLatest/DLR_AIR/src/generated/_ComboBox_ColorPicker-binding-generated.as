

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.controls.Image;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property image (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'image' moved to '_100313435image'
	 */

    [Bindable(event="propertyChange")]
    public function get image():mx.controls.Image
    {
        return this._100313435image;
    }

    public function set image(value:mx.controls.Image):void
    {
    	var oldValue:Object = this._100313435image;
        if (oldValue !== value)
        {
            this._100313435image = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "image", oldValue, value));
        }
    }



}
