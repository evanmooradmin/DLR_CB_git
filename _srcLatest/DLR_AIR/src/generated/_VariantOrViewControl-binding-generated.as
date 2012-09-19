

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.effects.Resize;
import mx.effects.Parallel;
import mx.containers.VBox;
import mx.controls.Image;
import mx.controls.TextInput;
import mx.controls.Text;
import Controls.FlowBox.FlowBox;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property HboxCorrectConteiner (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'HboxCorrectConteiner' moved to '_1678118878HboxCorrectConteiner'
	 */

    [Bindable(event="propertyChange")]
    public function get HboxCorrectConteiner():Controls.FlowBox.FlowBox
    {
        return this._1678118878HboxCorrectConteiner;
    }

    public function set HboxCorrectConteiner(value:Controls.FlowBox.FlowBox):void
    {
    	var oldValue:Object = this._1678118878HboxCorrectConteiner;
        if (oldValue !== value)
        {
            this._1678118878HboxCorrectConteiner = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "HboxCorrectConteiner", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property HboxIncorrectConteiner (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'HboxIncorrectConteiner' moved to '_529656253HboxIncorrectConteiner'
	 */

    [Bindable(event="propertyChange")]
    public function get HboxIncorrectConteiner():Controls.FlowBox.FlowBox
    {
        return this._529656253HboxIncorrectConteiner;
    }

    public function set HboxIncorrectConteiner(value:Controls.FlowBox.FlowBox):void
    {
    	var oldValue:Object = this._529656253HboxIncorrectConteiner;
        if (oldValue !== value)
        {
            this._529656253HboxIncorrectConteiner = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "HboxIncorrectConteiner", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property VboxIncorrectConteiner (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'VboxIncorrectConteiner' moved to '_1002326773VboxIncorrectConteiner'
	 */

    [Bindable(event="propertyChange")]
    public function get VboxIncorrectConteiner():mx.containers.VBox
    {
        return this._1002326773VboxIncorrectConteiner;
    }

    public function set VboxIncorrectConteiner(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._1002326773VboxIncorrectConteiner;
        if (oldValue !== value)
        {
            this._1002326773VboxIncorrectConteiner = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "VboxIncorrectConteiner", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property descriptionHeader (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'descriptionHeader' moved to '_2130483799descriptionHeader'
	 */

    [Bindable(event="propertyChange")]
    public function get descriptionHeader():mx.controls.Text
    {
        return this._2130483799descriptionHeader;
    }

    public function set descriptionHeader(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._2130483799descriptionHeader;
        if (oldValue !== value)
        {
            this._2130483799descriptionHeader = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descriptionHeader", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property descriptionHeaderCorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'descriptionHeaderCorrect' moved to '_333522303descriptionHeaderCorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get descriptionHeaderCorrect():mx.controls.Text
    {
        return this._333522303descriptionHeaderCorrect;
    }

    public function set descriptionHeaderCorrect(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._333522303descriptionHeaderCorrect;
        if (oldValue !== value)
        {
            this._333522303descriptionHeaderCorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descriptionHeaderCorrect", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property descriptionHeaderIncorrect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'descriptionHeaderIncorrect' moved to '_1403879420descriptionHeaderIncorrect'
	 */

    [Bindable(event="propertyChange")]
    public function get descriptionHeaderIncorrect():mx.controls.Text
    {
        return this._1403879420descriptionHeaderIncorrect;
    }

    public function set descriptionHeaderIncorrect(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._1403879420descriptionHeaderIncorrect;
        if (oldValue !== value)
        {
            this._1403879420descriptionHeaderIncorrect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descriptionHeaderIncorrect", oldValue, value));
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
	 * generated bindable wrapper for property textArea (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'textArea' moved to '_1004197030textArea'
	 */

    [Bindable(event="propertyChange")]
    public function get textArea():mx.controls.TextInput
    {
        return this._1004197030textArea;
    }

    public function set textArea(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._1004197030textArea;
        if (oldValue !== value)
        {
            this._1004197030textArea = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textArea", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property vbContainer (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'vbContainer' moved to '_2072305867vbContainer'
	 */

    [Bindable(event="propertyChange")]
    public function get vbContainer():mx.containers.VBox
    {
        return this._2072305867vbContainer;
    }

    public function set vbContainer(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._2072305867vbContainer;
        if (oldValue !== value)
        {
            this._2072305867vbContainer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vbContainer", oldValue, value));
        }
    }



}
