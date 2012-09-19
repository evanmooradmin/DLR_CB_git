

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.controls.Image;
import Controls.Enviroment.TextExended;
import mx.controls.Text;
import mx.controls.CheckBox;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property chVariant (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'chVariant' moved to '_79245216chVariant'
	 */

    [Bindable(event="propertyChange")]
    public function get chVariant():mx.controls.CheckBox
    {
        return this._79245216chVariant;
    }

    public function set chVariant(value:mx.controls.CheckBox):void
    {
    	var oldValue:Object = this._79245216chVariant;
        if (oldValue !== value)
        {
            this._79245216chVariant = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "chVariant", oldValue, value));
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
	 * generated bindable wrapper for property lbDefault (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'lbDefault' moved to '_274624491lbDefault'
	 */

    [Bindable(event="propertyChange")]
    public function get lbDefault():Controls.Enviroment.TextExended
    {
        return this._274624491lbDefault;
    }

    public function set lbDefault(value:Controls.Enviroment.TextExended):void
    {
    	var oldValue:Object = this._274624491lbDefault;
        if (oldValue !== value)
        {
            this._274624491lbDefault = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lbDefault", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property lbIncorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'lbIncorrect' moved to '_2009878223lbIncorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get lbIncorrect():mx.controls.Text
    {
        return this._2009878223lbIncorrect;
    }

    public function set lbIncorrect(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._2009878223lbIncorrect;
        if (oldValue !== value)
        {
            this._2009878223lbIncorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lbIncorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property visibleAnswer (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'visibleAnswer' moved to '_374570704visibleAnswer'
	 */

    [Bindable(event="propertyChange")]
    public function get visibleAnswer():mx.controls.Text
    {
        return this._374570704visibleAnswer;
    }

    public function set visibleAnswer(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._374570704visibleAnswer;
        if (oldValue !== value)
        {
            this._374570704visibleAnswer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "visibleAnswer", oldValue, value));
        }
    }



}
