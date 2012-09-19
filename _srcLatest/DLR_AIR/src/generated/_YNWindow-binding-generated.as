

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
import mx.controls.Label;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property btnNO (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnNO' moved to '_94069021btnNO'
	 */

    [Bindable(event="propertyChange")]
    public function get btnNO():mx.controls.Button
    {
        return this._94069021btnNO;
    }

    public function set btnNO(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._94069021btnNO;
        if (oldValue !== value)
        {
            this._94069021btnNO = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnNO", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property btnYes (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnYes' moved to '_1378816277btnYes'
	 */

    [Bindable(event="propertyChange")]
    public function get btnYes():mx.controls.Button
    {
        return this._1378816277btnYes;
    }

    public function set btnYes(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1378816277btnYes;
        if (oldValue !== value)
        {
            this._1378816277btnYes = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnYes", oldValue, value));
        }
    }

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
