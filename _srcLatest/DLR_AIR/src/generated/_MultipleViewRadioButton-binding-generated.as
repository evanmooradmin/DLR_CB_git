

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.containers.HBox;
import mx.controls.Image;
import Controls.Enviroment.TextExended;
import mx.controls.Text;
import int;
import mx.controls.RadioButton;

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
    public function get lbDefault():mx.controls.Text
    {
        return this._274624491lbDefault;
    }

    public function set lbDefault(value:mx.controls.Text):void
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
	 * generated bindable wrapper for property rbVariant (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'rbVariant' moved to '_1006781493rbVariant'
	 */

    [Bindable(event="propertyChange")]
    public function get rbVariant():mx.controls.RadioButton
    {
        return this._1006781493rbVariant;
    }

    public function set rbVariant(value:mx.controls.RadioButton):void
    {
    	var oldValue:Object = this._1006781493rbVariant;
        if (oldValue !== value)
        {
            this._1006781493rbVariant = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rbVariant", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property txVariantText (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txVariantText' moved to '_1298325970txVariantText'
	 */

    [Bindable(event="propertyChange")]
    public function get txVariantText():Controls.Enviroment.TextExended
    {
        return this._1298325970txVariantText;
    }

    public function set txVariantText(value:Controls.Enviroment.TextExended):void
    {
    	var oldValue:Object = this._1298325970txVariantText;
        if (oldValue !== value)
        {
            this._1298325970txVariantText = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txVariantText", oldValue, value));
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

	/**
	 * generated bindable wrapper for property _fontSize (private)
	 * - generated setter
	 * - generated getter
	 * - original private var '_fontSize' moved to '_456118863_fontSize'
	 */

    [Bindable(event="propertyChange")]
    private function get _fontSize():int
    {
        return this._456118863_fontSize;
    }

    private function set _fontSize(value:int):void
    {
    	var oldValue:Object = this._456118863_fontSize;
        if (oldValue !== value)
        {
            this._456118863_fontSize = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_fontSize", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property _rbY (private)
	 * - generated setter
	 * - generated getter
	 * - original private var '_rbY' moved to '_2942826_rbY'
	 */

    [Bindable(event="propertyChange")]
    private function get _rbY():int
    {
        return this._2942826_rbY;
    }

    private function set _rbY(value:int):void
    {
    	var oldValue:Object = this._2942826_rbY;
        if (oldValue !== value)
        {
            this._2942826_rbY = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_rbY", oldValue, value));
        }
    }



}
