

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.containers.HBox;
import mx.controls.Button;
import mx.effects.Parallel;
import mx.effects.Fade;
import Controls.Enviroment.TextExended;
import mx.controls.Label;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property ParallelEffectHide (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'ParallelEffectHide' moved to '_478610426ParallelEffectHide'
	 */

    [Bindable(event="propertyChange")]
    public function get ParallelEffectHide():mx.effects.Parallel
    {
        return this._478610426ParallelEffectHide;
    }

    public function set ParallelEffectHide(value:mx.effects.Parallel):void
    {
    	var oldValue:Object = this._478610426ParallelEffectHide;
        if (oldValue !== value)
        {
            this._478610426ParallelEffectHide = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ParallelEffectHide", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property ParallelEffectShow (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'ParallelEffectShow' moved to '_478937525ParallelEffectShow'
	 */

    [Bindable(event="propertyChange")]
    public function get ParallelEffectShow():mx.effects.Parallel
    {
        return this._478937525ParallelEffectShow;
    }

    public function set ParallelEffectShow(value:mx.effects.Parallel):void
    {
    	var oldValue:Object = this._478937525ParallelEffectShow;
        if (oldValue !== value)
        {
            this._478937525ParallelEffectShow = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ParallelEffectShow", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property btnShow (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnShow' moved to '_206192505btnShow'
	 */

    [Bindable(event="propertyChange")]
    public function get btnShow():mx.controls.Button
    {
        return this._206192505btnShow;
    }

    public function set btnShow(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._206192505btnShow;
        if (oldValue !== value)
        {
            this._206192505btnShow = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnShow", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property fadeEffectHide (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'fadeEffectHide' moved to '_88825329fadeEffectHide'
	 */

    [Bindable(event="propertyChange")]
    public function get fadeEffectHide():mx.effects.Fade
    {
        return this._88825329fadeEffectHide;
    }

    public function set fadeEffectHide(value:mx.effects.Fade):void
    {
    	var oldValue:Object = this._88825329fadeEffectHide;
        if (oldValue !== value)
        {
            this._88825329fadeEffectHide = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fadeEffectHide", oldValue, value));
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
	 * generated bindable wrapper for property hbox (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'hbox' moved to '_3196003hbox'
	 */

    [Bindable(event="propertyChange")]
    public function get hbox():mx.containers.HBox
    {
        return this._3196003hbox;
    }

    public function set hbox(value:mx.containers.HBox):void
    {
    	var oldValue:Object = this._3196003hbox;
        if (oldValue !== value)
        {
            this._3196003hbox = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hbox", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property lbHeaderText (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'lbHeaderText' moved to '_724474736lbHeaderText'
	 */

    [Bindable(event="propertyChange")]
    public function get lbHeaderText():mx.controls.Label
    {
        return this._724474736lbHeaderText;
    }

    public function set lbHeaderText(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._724474736lbHeaderText;
        if (oldValue !== value)
        {
            this._724474736lbHeaderText = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lbHeaderText", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property moveEffectShow (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'moveEffectShow' moved to '_1116594465moveEffectShow'
	 */

    [Bindable(event="propertyChange")]
    public function get moveEffectShow():mx.effects.Fade
    {
        return this._1116594465moveEffectShow;
    }

    public function set moveEffectShow(value:mx.effects.Fade):void
    {
    	var oldValue:Object = this._1116594465moveEffectShow;
        if (oldValue !== value)
        {
            this._1116594465moveEffectShow = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "moveEffectShow", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property txtContent (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtContent' moved to '_548181015txtContent'
	 */

    [Bindable(event="propertyChange")]
    public function get txtContent():Controls.Enviroment.TextExended
    {
        return this._548181015txtContent;
    }

    public function set txtContent(value:Controls.Enviroment.TextExended):void
    {
    	var oldValue:Object = this._548181015txtContent;
        if (oldValue !== value)
        {
            this._548181015txtContent = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtContent", oldValue, value));
        }
    }



}
