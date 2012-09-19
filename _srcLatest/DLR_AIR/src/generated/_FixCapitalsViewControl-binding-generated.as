

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.controls.Image;
import mx.controls.TextInput;
import mx.controls.Text;
import int;
import mx.controls.Label;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property imgCorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'imgCorrect' moved to '_1157433561imgCorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get imgCorrect():mx.controls.Image
    {
        return this._1157433561imgCorrect;
    }

    public function set imgCorrect(value:mx.controls.Image):void
    {
    	var oldValue:Object = this._1157433561imgCorrect;
        if (oldValue !== value)
        {
            this._1157433561imgCorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "imgCorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property imgIncorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'imgIncorrect' moved to '_100857054imgIncorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get imgIncorrect():mx.controls.Image
    {
        return this._100857054imgIncorrect;
    }

    public function set imgIncorrect(value:mx.controls.Image):void
    {
    	var oldValue:Object = this._100857054imgIncorrect;
        if (oldValue !== value)
        {
            this._100857054imgIncorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "imgIncorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property lbCorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'lbCorrect' moved to '_315014636lbCorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get lbCorrect():mx.controls.Text
    {
        return this._315014636lbCorrect;
    }

    public function set lbCorrect(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._315014636lbCorrect;
        if (oldValue !== value)
        {
            this._315014636lbCorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lbCorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property lbIncorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'lbIncorrect' moved to '_2009878223lbIncorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get lbIncorrect():mx.controls.Label
    {
        return this._2009878223lbIncorrect;
    }

    public function set lbIncorrect(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._2009878223lbIncorrect;
        if (oldValue !== value)
        {
            this._2009878223lbIncorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lbIncorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property lbText (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'lbText' moved to '_1109910589lbText'
	 */

    [Bindable(event="propertyChange")]
    public function get lbText():mx.controls.Label
    {
        return this._1109910589lbText;
    }

    public function set lbText(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._1109910589lbText;
        if (oldValue !== value)
        {
            this._1109910589lbText = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lbText", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property txtInputText (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtInputText' moved to '_701876345txtInputText'
	 */

    [Bindable(event="propertyChange")]
    public function get txtInputText():mx.controls.TextInput
    {
        return this._701876345txtInputText;
    }

    public function set txtInputText(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._701876345txtInputText;
        if (oldValue !== value)
        {
            this._701876345txtInputText = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtInputText", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property _left (private)
	 * - generated setter
	 * - generated getter
	 * - original private var '_left' moved to '_91052262_left'
	 */

    [Bindable(event="propertyChange")]
    private function get _left():int
    {
        return this._91052262_left;
    }

    private function set _left(value:int):void
    {
    	var oldValue:Object = this._91052262_left;
        if (oldValue !== value)
        {
            this._91052262_left = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_left", oldValue, value));
        }
    }



}
