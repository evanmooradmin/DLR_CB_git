

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.controls.Button;
import Class;
import mx.controls.Text;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property btnOK (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnOK' moved to '_94069048btnOK'
	 */

    [Bindable(event="propertyChange")]
    public function get btnOK():mx.controls.Button
    {
        return this._94069048btnOK;
    }

    public function set btnOK(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._94069048btnOK;
        if (oldValue !== value)
        {
            this._94069048btnOK = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnOK", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property txtContent (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtContent' moved to '_548181015txtContent'
	 */

    [Bindable(event="propertyChange")]
    public function get txtContent():mx.controls.Text
    {
        return this._548181015txtContent;
    }

    public function set txtContent(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._548181015txtContent;
        if (oldValue !== value)
        {
            this._548181015txtContent = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtContent", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property HandIcon (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'HandIcon' moved to '_65668520HandIcon'
	 */

    [Bindable(event="propertyChange")]
    private function get HandIcon():Class
    {
        return this._65668520HandIcon;
    }

    private function set HandIcon(value:Class):void
    {
    	var oldValue:Object = this._65668520HandIcon;
        if (oldValue !== value)
        {
            this._65668520HandIcon = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "HandIcon", oldValue, value));
        }
    }



}
