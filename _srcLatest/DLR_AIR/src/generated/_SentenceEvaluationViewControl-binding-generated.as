

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.containers.HBox;
import mx.effects.Resize;
import mx.effects.Parallel;
import mx.containers.VBox;
import mx.controls.Image;
import Controls.Enviroment.TextExended;
import int;
import mx.states.State;

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
	 * generated bindable wrapper for property showPromptEffect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'showPromptEffect' moved to '_1282736050showPromptEffect'
	 */

    [Bindable(event="propertyChange")]
    public function get showPromptEffect():mx.effects.Parallel
    {
        return this._1282736050showPromptEffect;
    }

    public function set showPromptEffect(value:mx.effects.Parallel):void
    {
    	var oldValue:Object = this._1282736050showPromptEffect;
        if (oldValue !== value)
        {
            this._1282736050showPromptEffect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "showPromptEffect", oldValue, value));
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
	 * generated bindable wrapper for property stCorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'stCorrect' moved to '_1223520969stCorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get stCorrect():mx.states.State
    {
        return this._1223520969stCorrect;
    }

    public function set stCorrect(value:mx.states.State):void
    {
    	var oldValue:Object = this._1223520969stCorrect;
        if (oldValue !== value)
        {
            this._1223520969stCorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "stCorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property txtCorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtCorrect' moved to '_544546854txtCorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get txtCorrect():Controls.Enviroment.TextExended
    {
        return this._544546854txtCorrect;
    }

    public function set txtCorrect(value:Controls.Enviroment.TextExended):void
    {
    	var oldValue:Object = this._544546854txtCorrect;
        if (oldValue !== value)
        {
            this._544546854txtCorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtCorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property txtIncorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtIncorrect' moved to '_472748821txtIncorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get txtIncorrect():Controls.Enviroment.TextExended
    {
        return this._472748821txtIncorrect;
    }

    public function set txtIncorrect(value:Controls.Enviroment.TextExended):void
    {
    	var oldValue:Object = this._472748821txtIncorrect;
        if (oldValue !== value)
        {
            this._472748821txtIncorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtIncorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property vBoxAnswers (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'vBoxAnswers' moved to '_934737600vBoxAnswers'
	 */

    [Bindable(event="propertyChange")]
    public function get vBoxAnswers():mx.containers.VBox
    {
        return this._934737600vBoxAnswers;
    }

    public function set vBoxAnswers(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._934737600vBoxAnswers;
        if (oldValue !== value)
        {
            this._934737600vBoxAnswers = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vBoxAnswers", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property vBoxContent (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'vBoxContent' moved to '_864191812vBoxContent'
	 */

    [Bindable(event="propertyChange")]
    public function get vBoxContent():mx.containers.VBox
    {
        return this._864191812vBoxContent;
    }

    public function set vBoxContent(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._864191812vBoxContent;
        if (oldValue !== value)
        {
            this._864191812vBoxContent = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vBoxContent", oldValue, value));
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
