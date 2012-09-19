

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.controls.Button;
import mx.controls.Text;
import mx.controls.LinkButton;
import mx.controls.Label;

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
	 * generated bindable wrapper for property lbVersion (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'lbVersion' moved to '_918571390lbVersion'
	 */

    [Bindable(event="propertyChange")]
    public function get lbVersion():mx.controls.Label
    {
        return this._918571390lbVersion;
    }

    public function set lbVersion(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._918571390lbVersion;
        if (oldValue !== value)
        {
            this._918571390lbVersion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lbVersion", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property lnkBtnViewTerms (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'lnkBtnViewTerms' moved to '_715884719lnkBtnViewTerms'
	 */

    [Bindable(event="propertyChange")]
    public function get lnkBtnViewTerms():mx.controls.LinkButton
    {
        return this._715884719lnkBtnViewTerms;
    }

    public function set lnkBtnViewTerms(value:mx.controls.LinkButton):void
    {
    	var oldValue:Object = this._715884719lnkBtnViewTerms;
        if (oldValue !== value)
        {
            this._715884719lnkBtnViewTerms = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lnkBtnViewTerms", oldValue, value));
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
