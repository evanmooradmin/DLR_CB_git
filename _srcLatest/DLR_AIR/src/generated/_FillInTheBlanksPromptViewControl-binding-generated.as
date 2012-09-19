

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
import Controls.FlowBox.FlowBox;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property HbIncorrectContainer (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'HbIncorrectContainer' moved to '_1103048982HbIncorrectContainer'
	 */

    [Bindable(event="propertyChange")]
    public function get HbIncorrectContainer():mx.containers.HBox
    {
        return this._1103048982HbIncorrectContainer;
    }

    public function set HbIncorrectContainer(value:mx.containers.HBox):void
    {
    	var oldValue:Object = this._1103048982HbIncorrectContainer;
        if (oldValue !== value)
        {
            this._1103048982HbIncorrectContainer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "HbIncorrectContainer", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property VbContainer (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'VbContainer' moved to '_404437227VbContainer'
	 */

    [Bindable(event="propertyChange")]
    public function get VbContainer():mx.containers.VBox
    {
        return this._404437227VbContainer;
    }

    public function set VbContainer(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._404437227VbContainer;
        if (oldValue !== value)
        {
            this._404437227VbContainer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "VbContainer", oldValue, value));
        }
    }

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
	 * generated bindable wrapper for property vbStrings (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'vbStrings' moved to '_248353334vbStrings'
	 */

    [Bindable(event="propertyChange")]
    public function get vbStrings():mx.containers.VBox
    {
        return this._248353334vbStrings;
    }

    public function set vbStrings(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._248353334vbStrings;
        if (oldValue !== value)
        {
            this._248353334vbStrings = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vbStrings", oldValue, value));
        }
    }



}
