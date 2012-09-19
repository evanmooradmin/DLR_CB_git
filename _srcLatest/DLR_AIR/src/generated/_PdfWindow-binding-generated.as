

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.controls.Button;
import mx.effects.Fade;
import mx.controls.HTML;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property btnClose (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnClose' moved to '_2082343164btnClose'
	 */

    [Bindable(event="propertyChange")]
    public function get btnClose():mx.controls.Button
    {
        return this._2082343164btnClose;
    }

    public function set btnClose(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._2082343164btnClose;
        if (oldValue !== value)
        {
            this._2082343164btnClose = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnClose", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property fadeHidePdfWindow (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'fadeHidePdfWindow' moved to '_817122116fadeHidePdfWindow'
	 */

    [Bindable(event="propertyChange")]
    public function get fadeHidePdfWindow():mx.effects.Fade
    {
        return this._817122116fadeHidePdfWindow;
    }

    public function set fadeHidePdfWindow(value:mx.effects.Fade):void
    {
    	var oldValue:Object = this._817122116fadeHidePdfWindow;
        if (oldValue !== value)
        {
            this._817122116fadeHidePdfWindow = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fadeHidePdfWindow", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property fadeShowPdfWindow (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'fadeShowPdfWindow' moved to '_73297943fadeShowPdfWindow'
	 */

    [Bindable(event="propertyChange")]
    public function get fadeShowPdfWindow():mx.effects.Fade
    {
        return this._73297943fadeShowPdfWindow;
    }

    public function set fadeShowPdfWindow(value:mx.effects.Fade):void
    {
    	var oldValue:Object = this._73297943fadeShowPdfWindow;
        if (oldValue !== value)
        {
            this._73297943fadeShowPdfWindow = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fadeShowPdfWindow", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property myWin (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'myWin' moved to '_104355472myWin'
	 */

    [Bindable(event="propertyChange")]
    public function get myWin():mx.controls.HTML
    {
        return this._104355472myWin;
    }

    public function set myWin(value:mx.controls.HTML):void
    {
    	var oldValue:Object = this._104355472myWin;
        if (oldValue !== value)
        {
            this._104355472myWin = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "myWin", oldValue, value));
        }
    }



}
