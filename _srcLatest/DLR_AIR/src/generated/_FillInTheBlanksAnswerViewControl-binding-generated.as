

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.containers.HBox;
import mx.controls.Image;
import mx.controls.TextInput;
import mx.controls.Text;
import mx.controls.Label;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property hBox (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'hBox' moved to '_3165251hBox'
	 */

    [Bindable(event="propertyChange")]
    public function get hBox():mx.containers.HBox
    {
        return this._3165251hBox;
    }

    public function set hBox(value:mx.containers.HBox):void
    {
    	var oldValue:Object = this._3165251hBox;
        if (oldValue !== value)
        {
            this._3165251hBox = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hBox", oldValue, value));
        }
    }

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
    public function get lbCorrect():mx.controls.Label
    {
        return this._315014636lbCorrect;
    }

    public function set lbCorrect(value:mx.controls.Label):void
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
	 * generated bindable wrapper for property textInput (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'textInput' moved to '_1058056547textInput'
	 */

    [Bindable(event="propertyChange")]
    public function get textInput():mx.controls.TextInput
    {
        return this._1058056547textInput;
    }

    public function set textInput(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._1058056547textInput;
        if (oldValue !== value)
        {
            this._1058056547textInput = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textInput", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property txtAfter (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtAfter' moved to '_1482008244txtAfter'
	 */

    [Bindable(event="propertyChange")]
    public function get txtAfter():mx.controls.Text
    {
        return this._1482008244txtAfter;
    }

    public function set txtAfter(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._1482008244txtAfter;
        if (oldValue !== value)
        {
            this._1482008244txtAfter = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtAfter", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property txtTo (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtTo' moved to '_110817547txtTo'
	 */

    [Bindable(event="propertyChange")]
    public function get txtTo():mx.controls.Text
    {
        return this._110817547txtTo;
    }

    public function set txtTo(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._110817547txtTo;
        if (oldValue !== value)
        {
            this._110817547txtTo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtTo", oldValue, value));
        }
    }



}
