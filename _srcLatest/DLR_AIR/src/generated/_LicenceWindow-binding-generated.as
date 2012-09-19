

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.controls.Button;
import Class;
import mx.controls.TextInput;
import mx.controls.LinkButton;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property btnCancel (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnCancel' moved to '_117924854btnCancel'
	 */

    [Bindable(event="propertyChange")]
    public function get btnCancel():mx.controls.Button
    {
        return this._117924854btnCancel;
    }

    public function set btnCancel(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._117924854btnCancel;
        if (oldValue !== value)
        {
            this._117924854btnCancel = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnCancel", oldValue, value));
        }
    }

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
	 * generated bindable wrapper for property linkButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'linkButton' moved to '_357588940linkButton'
	 */

    [Bindable(event="propertyChange")]
    public function get linkButton():mx.controls.LinkButton
    {
        return this._357588940linkButton;
    }

    public function set linkButton(value:mx.controls.LinkButton):void
    {
    	var oldValue:Object = this._357588940linkButton;
        if (oldValue !== value)
        {
            this._357588940linkButton = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "linkButton", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property txtInputKey (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtInputKey' moved to '_1224276165txtInputKey'
	 */

    [Bindable(event="propertyChange")]
    public function get txtInputKey():mx.controls.TextInput
    {
        return this._1224276165txtInputKey;
    }

    public function set txtInputKey(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._1224276165txtInputKey;
        if (oldValue !== value)
        {
            this._1224276165txtInputKey = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtInputKey", oldValue, value));
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
