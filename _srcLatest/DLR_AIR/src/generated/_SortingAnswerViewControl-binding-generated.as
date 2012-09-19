

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.controls.Image;
import mx.controls.Text;
import Controls.DropAnswerControl;

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
    public function get textTo():mx.controls.Text
    {
        return this._877021048textTo;
    }

    public function set textTo(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._877021048textTo;
        if (oldValue !== value)
        {
            this._877021048textTo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textTo", oldValue, value));
        }
    }



}
