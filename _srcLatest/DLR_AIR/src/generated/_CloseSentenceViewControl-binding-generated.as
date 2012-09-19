

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.containers.HBox;
import mx.containers.VBox;
import mx.controls.Image;
import mx.controls.Text;
import int;
import Controls.FlowBox.FlowBox;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property flowBox (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'flowBox' moved to '_765833795flowBox'
	 */

    [Bindable(event="propertyChange")]
    public function get flowBox():Controls.FlowBox.FlowBox
    {
        return this._765833795flowBox;
    }

    public function set flowBox(value:Controls.FlowBox.FlowBox):void
    {
    	var oldValue:Object = this._765833795flowBox;
        if (oldValue !== value)
        {
            this._765833795flowBox = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "flowBox", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property hBoxIcorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'hBoxIcorrect' moved to '_953037500hBoxIcorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get hBoxIcorrect():mx.containers.HBox
    {
        return this._953037500hBoxIcorrect;
    }

    public function set hBoxIcorrect(value:mx.containers.HBox):void
    {
    	var oldValue:Object = this._953037500hBoxIcorrect;
        if (oldValue !== value)
        {
            this._953037500hBoxIcorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hBoxIcorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property imgIconCorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'imgIconCorrect' moved to '_1066573330imgIconCorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get imgIconCorrect():mx.controls.Image
    {
        return this._1066573330imgIconCorrect;
    }

    public function set imgIconCorrect(value:mx.controls.Image):void
    {
    	var oldValue:Object = this._1066573330imgIconCorrect;
        if (oldValue !== value)
        {
            this._1066573330imgIconCorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "imgIconCorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property imgIconIncorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'imgIconIncorrect' moved to '_1316479017imgIconIncorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get imgIconIncorrect():mx.controls.Image
    {
        return this._1316479017imgIconIncorrect;
    }

    public function set imgIconIncorrect(value:mx.controls.Image):void
    {
    	var oldValue:Object = this._1316479017imgIconIncorrect;
        if (oldValue !== value)
        {
            this._1316479017imgIconIncorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "imgIconIncorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property txtTextCorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtTextCorrect' moved to '_212942317txtTextCorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get txtTextCorrect():mx.controls.Text
    {
        return this._212942317txtTextCorrect;
    }

    public function set txtTextCorrect(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._212942317txtTextCorrect;
        if (oldValue !== value)
        {
            this._212942317txtTextCorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtTextCorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property txtTextIncorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtTextIncorrect' moved to '_1724598168txtTextIncorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get txtTextIncorrect():mx.controls.Text
    {
        return this._1724598168txtTextIncorrect;
    }

    public function set txtTextIncorrect(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._1724598168txtTextIncorrect;
        if (oldValue !== value)
        {
            this._1724598168txtTextIncorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtTextIncorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property vBox (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'vBox' moved to '_3582325vBox'
	 */

    [Bindable(event="propertyChange")]
    public function get vBox():mx.containers.VBox
    {
        return this._3582325vBox;
    }

    public function set vBox(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._3582325vBox;
        if (oldValue !== value)
        {
            this._3582325vBox = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vBox", oldValue, value));
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



}
