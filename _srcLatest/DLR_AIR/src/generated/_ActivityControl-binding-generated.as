

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.effects.Resize;
import mx.controls.Button;
import mx.effects.Parallel;
import mx.containers.VBox;
import Controls.PromptControls.PromptControl;
import mx.containers.Box;
import mx.containers.Canvas;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property BoxConteiner (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'BoxConteiner' moved to '_1821308186BoxConteiner'
	 */

    [Bindable(event="propertyChange")]
    public function get BoxConteiner():mx.containers.Box
    {
        return this._1821308186BoxConteiner;
    }

    public function set BoxConteiner(value:mx.containers.Box):void
    {
    	var oldValue:Object = this._1821308186BoxConteiner;
        if (oldValue !== value)
        {
            this._1821308186BoxConteiner = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "BoxConteiner", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property ScrollConteiner (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'ScrollConteiner' moved to '_1173025304ScrollConteiner'
	 */

    [Bindable(event="propertyChange")]
    public function get ScrollConteiner():mx.containers.VBox
    {
        return this._1173025304ScrollConteiner;
    }

    public function set ScrollConteiner(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._1173025304ScrollConteiner;
        if (oldValue !== value)
        {
            this._1173025304ScrollConteiner = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ScrollConteiner", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property btnBack (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnBack' moved to '_205678947btnBack'
	 */

    [Bindable(event="propertyChange")]
    public function get btnBack():mx.controls.Button
    {
        return this._205678947btnBack;
    }

    public function set btnBack(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._205678947btnBack;
        if (oldValue !== value)
        {
            this._205678947btnBack = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnBack", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property btnContinue (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnContinue' moved to '_1212609315btnContinue'
	 */

    [Bindable(event="propertyChange")]
    public function get btnContinue():mx.controls.Button
    {
        return this._1212609315btnContinue;
    }

    public function set btnContinue(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1212609315btnContinue;
        if (oldValue !== value)
        {
            this._1212609315btnContinue = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnContinue", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property canButtons (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'canButtons' moved to '_1162777199canButtons'
	 */

    [Bindable(event="propertyChange")]
    public function get canButtons():mx.containers.Canvas
    {
        return this._1162777199canButtons;
    }

    public function set canButtons(value:mx.containers.Canvas):void
    {
    	var oldValue:Object = this._1162777199canButtons;
        if (oldValue !== value)
        {
            this._1162777199canButtons = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canButtons", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property canvBtnBack (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'canvBtnBack' moved to '_720527325canvBtnBack'
	 */

    [Bindable(event="propertyChange")]
    public function get canvBtnBack():mx.containers.Canvas
    {
        return this._720527325canvBtnBack;
    }

    public function set canvBtnBack(value:mx.containers.Canvas):void
    {
    	var oldValue:Object = this._720527325canvBtnBack;
        if (oldValue !== value)
        {
            this._720527325canvBtnBack = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canvBtnBack", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property canvBtnContinue (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'canvBtnContinue' moved to '_147004573canvBtnContinue'
	 */

    [Bindable(event="propertyChange")]
    public function get canvBtnContinue():mx.containers.Canvas
    {
        return this._147004573canvBtnContinue;
    }

    public function set canvBtnContinue(value:mx.containers.Canvas):void
    {
    	var oldValue:Object = this._147004573canvBtnContinue;
        if (oldValue !== value)
        {
            this._147004573canvBtnContinue = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canvBtnContinue", oldValue, value));
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
	 * generated bindable wrapper for property vbPrompts (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'vbPrompts' moved to '_1820902211vbPrompts'
	 */

    [Bindable(event="propertyChange")]
    public function get vbPrompts():mx.containers.VBox
    {
        return this._1820902211vbPrompts;
    }

    public function set vbPrompts(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._1820902211vbPrompts;
        if (oldValue !== value)
        {
            this._1820902211vbPrompts = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vbPrompts", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property _currentPromptControl (protected)
	 * - generated setter
	 * - generated getter
	 * - original protected var '_currentPromptControl' moved to '_1148451521_currentPromptControl'
	 */

    [Bindable(event="propertyChange")]
    protected function get _currentPromptControl():PromptControl
    {
        return this._1148451521_currentPromptControl;
    }

    protected function set _currentPromptControl(value:PromptControl):void
    {
    	var oldValue:Object = this._1148451521_currentPromptControl;
        if (oldValue !== value)
        {
            this._1148451521_currentPromptControl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_currentPromptControl", oldValue, value));
        }
    }



}
