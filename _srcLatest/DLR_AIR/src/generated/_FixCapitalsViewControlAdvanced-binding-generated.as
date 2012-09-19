

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import String;
import mx.controls.TextArea;
import mx.containers.HBox;
import mx.containers.VBox;
import mx.controls.Image;
import mx.controls.Text;
import Controls.Enviroment.TextExended;
import int;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property hBoxCorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'hBoxCorrect' moved to '_255341223hBoxCorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get hBoxCorrect():mx.containers.HBox
    {
        return this._255341223hBoxCorrect;
    }

    public function set hBoxCorrect(value:mx.containers.HBox):void
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
    public function get lbCorrect():Controls.Enviroment.TextExended
    {
        return this._315014636lbCorrect;
    }

    public function set lbCorrect(value:Controls.Enviroment.TextExended):void
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
    public function get lbIncorrect():Controls.Enviroment.TextExended
    {
        return this._2009878223lbIncorrect;
    }

    public function set lbIncorrect(value:Controls.Enviroment.TextExended):void
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
    public function get lbText():mx.controls.Text
    {
        return this._1109910589lbText;
    }

    public function set lbText(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._1109910589lbText;
        if (oldValue !== value)
        {
            this._1109910589lbText = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lbText", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property txtArCorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtArCorrect' moved to '_2093442665txtArCorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get txtArCorrect():mx.controls.TextArea
    {
        return this._2093442665txtArCorrect;
    }

    public function set txtArCorrect(value:mx.controls.TextArea):void
    {
    	var oldValue:Object = this._2093442665txtArCorrect;
        if (oldValue !== value)
        {
            this._2093442665txtArCorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtArCorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property txtArIncorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtArIncorrect' moved to '_1549971940txtArIncorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get txtArIncorrect():mx.controls.TextArea
    {
        return this._1549971940txtArIncorrect;
    }

    public function set txtArIncorrect(value:mx.controls.TextArea):void
    {
    	var oldValue:Object = this._1549971940txtArIncorrect;
        if (oldValue !== value)
        {
            this._1549971940txtArIncorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtArIncorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property txtInputText (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtInputText' moved to '_701876345txtInputText'
	 */

    [Bindable(event="propertyChange")]
    public function get txtInputText():mx.controls.TextArea
    {
        return this._701876345txtInputText;
    }

    public function set txtInputText(value:mx.controls.TextArea):void
    {
    	var oldValue:Object = this._701876345txtInputText;
        if (oldValue !== value)
        {
            this._701876345txtInputText = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtInputText", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property vBoxContainer (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'vBoxContainer' moved to '_1555797644vBoxContainer'
	 */

    [Bindable(event="propertyChange")]
    public function get vBoxContainer():mx.containers.VBox
    {
        return this._1555797644vBoxContainer;
    }

    public function set vBoxContainer(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._1555797644vBoxContainer;
        if (oldValue !== value)
        {
            this._1555797644vBoxContainer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vBoxContainer", oldValue, value));
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

	/**
	 * generated bindable wrapper for property _fontName (private)
	 * - generated setter
	 * - generated getter
	 * - original private var '_fontName' moved to '_455961817_fontName'
	 */

    [Bindable(event="propertyChange")]
    private function get _fontName():String
    {
        return this._455961817_fontName;
    }

    private function set _fontName(value:String):void
    {
    	var oldValue:Object = this._455961817_fontName;
        if (oldValue !== value)
        {
            this._455961817_fontName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_fontName", oldValue, value));
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
