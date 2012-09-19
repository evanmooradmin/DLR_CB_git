

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.containers.HBox;
import mx.controls.Image;
import mx.controls.Text;
import Controls.Enviroment.TextExended;
import Controls.DropAnswerControl;
import Controls.FlowBox.FlowBox;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property dropAnswer (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'dropAnswer' moved to '_397749133dropAnswer'
	 */

    [Bindable(event="propertyChange")]
    public function get dropAnswer():Controls.DropAnswerControl
    {
        return this._397749133dropAnswer;
    }

    public function set dropAnswer(value:Controls.DropAnswerControl):void
    {
    	var oldValue:Object = this._397749133dropAnswer;
        if (oldValue !== value)
        {
            this._397749133dropAnswer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dropAnswer", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property hBox (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'hBox' moved to '_3165251hBox'
	 */

    [Bindable(event="propertyChange")]
    public function get hBox():Controls.FlowBox.FlowBox
    {
        return this._3165251hBox;
    }

    public function set hBox(value:Controls.FlowBox.FlowBox):void
    {
    	var oldValue:Object = this._3165251hBox;
        if (oldValue !== value)
        {
            this._3165251hBox = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hBox", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property hBoxCorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'hBoxCorrect' moved to '_255341223hBoxCorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get hBoxCorrect():Controls.FlowBox.FlowBox
    {
        return this._255341223hBoxCorrect;
    }

    public function set hBoxCorrect(value:Controls.FlowBox.FlowBox):void
    {
    	var oldValue:Object = this._255341223hBoxCorrect;
        if (oldValue !== value)
        {
            this._255341223hBoxCorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hBoxCorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property hBoxIncorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'hBoxIncorrect' moved to '_366044834hBoxIncorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get hBoxIncorrect():mx.containers.HBox
    {
        return this._366044834hBoxIncorrect;
    }

    public function set hBoxIncorrect(value:mx.containers.HBox):void
    {
    	var oldValue:Object = this._366044834hBoxIncorrect;
        if (oldValue !== value)
        {
            this._366044834hBoxIncorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hBoxIncorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property img (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'img' moved to '_104387img'
	 */

    [Bindable(event="propertyChange")]
    public function get img():mx.controls.Image
    {
        return this._104387img;
    }

    public function set img(value:mx.controls.Image):void
    {
    	var oldValue:Object = this._104387img;
        if (oldValue !== value)
        {
            this._104387img = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "img", oldValue, value));
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
	 * generated bindable wrapper for property mainHBox (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'mainHBox' moved to '_8830564mainHBox'
	 */

    [Bindable(event="propertyChange")]
    public function get mainHBox():mx.containers.HBox
    {
        return this._8830564mainHBox;
    }

    public function set mainHBox(value:mx.containers.HBox):void
    {
    	var oldValue:Object = this._8830564mainHBox;
        if (oldValue !== value)
        {
            this._8830564mainHBox = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mainHBox", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property textAfter (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'textAfter' moved to '_1065679697textAfter'
	 */

    [Bindable(event="propertyChange")]
    public function get textAfter():Controls.Enviroment.TextExended
    {
        return this._1065679697textAfter;
    }

    public function set textAfter(value:Controls.Enviroment.TextExended):void
    {
    	var oldValue:Object = this._1065679697textAfter;
        if (oldValue !== value)
        {
            this._1065679697textAfter = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textAfter", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property textCorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'textCorrect' moved to '_115228285textCorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get textCorrect():mx.controls.Text
    {
        return this._115228285textCorrect;
    }

    public function set textCorrect(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._115228285textCorrect;
        if (oldValue !== value)
        {
            this._115228285textCorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textCorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property textIncorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'textIncorrect' moved to '_1138502408textIncorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get textIncorrect():mx.controls.Text
    {
        return this._1138502408textIncorrect;
    }

    public function set textIncorrect(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._1138502408textIncorrect;
        if (oldValue !== value)
        {
            this._1138502408textIncorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textIncorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property textTo (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'textTo' moved to '_877021048textTo'
	 */

    [Bindable(event="propertyChange")]
    public function get textTo():Controls.Enviroment.TextExended
    {
        return this._877021048textTo;
    }

    public function set textTo(value:Controls.Enviroment.TextExended):void
    {
    	var oldValue:Object = this._877021048textTo;
        if (oldValue !== value)
        {
            this._877021048textTo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textTo", oldValue, value));
        }
    }



}
