

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.containers.HBox;
import mx.effects.Resize;
import mx.containers.VBox;
import Controls.Enviroment.AutoResizableTextArea;
import mx.controls.Image;
import mx.containers.Box;
import Controls.Enviroment.TextExended;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property boxContent (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'boxContent' moved to '_457589806boxContent'
	 */

    [Bindable(event="propertyChange")]
    public function get boxContent():mx.containers.Box
    {
        return this._457589806boxContent;
    }

    public function set boxContent(value:mx.containers.Box):void
    {
    	var oldValue:Object = this._457589806boxContent;
        if (oldValue !== value)
        {
            this._457589806boxContent = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "boxContent", oldValue, value));
        }
    }

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
	 * generated bindable wrapper for property showResizeEffect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'showResizeEffect' moved to '_1100842754showResizeEffect'
	 */

    [Bindable(event="propertyChange")]
    public function get showResizeEffect():mx.effects.Resize
    {
        return this._1100842754showResizeEffect;
    }

    public function set showResizeEffect(value:mx.effects.Resize):void
    {
    	var oldValue:Object = this._1100842754showResizeEffect;
        if (oldValue !== value)
        {
            this._1100842754showResizeEffect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "showResizeEffect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property textAnswerCorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'textAnswerCorrect' moved to '_1362826593textAnswerCorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get textAnswerCorrect():Controls.Enviroment.TextExended
    {
        return this._1362826593textAnswerCorrect;
    }

    public function set textAnswerCorrect(value:Controls.Enviroment.TextExended):void
    {
    	var oldValue:Object = this._1362826593textAnswerCorrect;
        if (oldValue !== value)
        {
            this._1362826593textAnswerCorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textAnswerCorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property textAnswerIncorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'textAnswerIncorrect' moved to '_84934810textAnswerIncorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get textAnswerIncorrect():Controls.Enviroment.TextExended
    {
        return this._84934810textAnswerIncorrect;
    }

    public function set textAnswerIncorrect(value:Controls.Enviroment.TextExended):void
    {
    	var oldValue:Object = this._84934810textAnswerIncorrect;
        if (oldValue !== value)
        {
            this._84934810textAnswerIncorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textAnswerIncorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property textInput (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'textInput' moved to '_1058056547textInput'
	 */

    [Bindable(event="propertyChange")]
    public function get textInput():Controls.Enviroment.AutoResizableTextArea
    {
        return this._1058056547textInput;
    }

    public function set textInput(value:Controls.Enviroment.AutoResizableTextArea):void
    {
    	var oldValue:Object = this._1058056547textInput;
        if (oldValue !== value)
        {
            this._1058056547textInput = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textInput", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property textSentences (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'textSentences' moved to '_765023171textSentences'
	 */

    [Bindable(event="propertyChange")]
    public function get textSentences():Controls.Enviroment.TextExended
    {
        return this._765023171textSentences;
    }

    public function set textSentences(value:Controls.Enviroment.TextExended):void
    {
    	var oldValue:Object = this._765023171textSentences;
        if (oldValue !== value)
        {
            this._765023171textSentences = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textSentences", oldValue, value));
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



}
