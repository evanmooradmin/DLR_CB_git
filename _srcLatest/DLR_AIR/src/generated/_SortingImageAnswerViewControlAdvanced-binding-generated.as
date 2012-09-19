

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
import Controls.Enviroment.TextExended;
import mx.controls.Label;
import Controls.DropAnswerControl;
import mx.containers.Canvas;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property canvasContainer (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'canvasContainer' moved to '_475301367canvasContainer'
	 */

    [Bindable(event="propertyChange")]
    public function get canvasContainer():mx.containers.Canvas
    {
        return this._475301367canvasContainer;
    }

    public function set canvasContainer(value:mx.containers.Canvas):void
    {
    	var oldValue:Object = this._475301367canvasContainer;
        if (oldValue !== value)
        {
            this._475301367canvasContainer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canvasContainer", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property descriptionText (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'descriptionText' moved to '_985849673descriptionText'
	 */

    [Bindable(event="propertyChange")]
    public function get descriptionText():Controls.Enviroment.TextExended
    {
        return this._985849673descriptionText;
    }

    public function set descriptionText(value:Controls.Enviroment.TextExended):void
    {
    	var oldValue:Object = this._985849673descriptionText;
        if (oldValue !== value)
        {
            this._985849673descriptionText = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descriptionText", oldValue, value));
        }
    }

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
	 * generated bindable wrapper for property hBoxContainer (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'hBoxContainer' moved to '_1368472446hBoxContainer'
	 */

    [Bindable(event="propertyChange")]
    public function get hBoxContainer():mx.containers.HBox
    {
        return this._1368472446hBoxContainer;
    }

    public function set hBoxContainer(value:mx.containers.HBox):void
    {
    	var oldValue:Object = this._1368472446hBoxContainer;
        if (oldValue !== value)
        {
            this._1368472446hBoxContainer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hBoxContainer", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property hBoxCorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'hBoxCorrect' moved to '_255341223hBoxCorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get hBoxCorrect():mx.containers.VBox
    {
        return this._255341223hBoxCorrect;
    }

    public function set hBoxCorrect(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._255341223hBoxCorrect;
        if (oldValue !== value)
        {
            this._255341223hBoxCorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hBoxCorrect", oldValue, value));
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
	 * generated bindable wrapper for property lbIndex (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'lbIndex' moved to '_57400068lbIndex'
	 */

    [Bindable(event="propertyChange")]
    public function get lbIndex():mx.controls.Label
    {
        return this._57400068lbIndex;
    }

    public function set lbIndex(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._57400068lbIndex;
        if (oldValue !== value)
        {
            this._57400068lbIndex = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lbIndex", oldValue, value));
        }
    }



}
