

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.controls.Text;
import mx.controls.Label;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property lbTitle (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'lbTitle' moved to '_47374718lbTitle'
	 */

    [Bindable(event="propertyChange")]
    public function get lbTitle():mx.controls.Label
    {
        return this._47374718lbTitle;
    }

    public function set lbTitle(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._47374718lbTitle;
        if (oldValue !== value)
        {
            this._47374718lbTitle = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lbTitle", oldValue, value));
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



}
