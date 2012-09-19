

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.controls.TextArea;
import mx.containers.HBox;
import mx.effects.Resize;
import mx.controls.Button;
import mx.effects.Parallel;
import mx.containers.VBox;
import Controls.Enviroment.TextExended;
import mx.controls.Text;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property boxContent (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'boxContent' moved to '_457589806boxContent'
	 */

    [Bindable(event="propertyChange")]
    public function get boxContent():mx.containers.HBox
    {
        return this._457589806boxContent;
    }

    public function set boxContent(value:mx.containers.HBox):void
    {
    	var oldValue:Object = this._457589806boxContent;
        if (oldValue !== value)
        {
            this._457589806boxContent = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "boxContent", oldValue, value));
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
	 * generated bindable wrapper for property txtArea (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtArea' moved to '_879079651txtArea'
	 */

    [Bindable(event="propertyChange")]
    public function get txtArea():mx.controls.TextArea
    {
        return this._879079651txtArea;
    }

    public function set txtArea(value:mx.controls.TextArea):void
    {
    	var oldValue:Object = this._879079651txtArea;
        if (oldValue !== value)
        {
            this._879079651txtArea = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtArea", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property txtFull (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtFull' moved to '_878927585txtFull'
	 */

    [Bindable(event="propertyChange")]
    public function get txtFull():mx.controls.Text
    {
        return this._878927585txtFull;
    }

    public function set txtFull(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._878927585txtFull;
        if (oldValue !== value)
        {
            this._878927585txtFull = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtFull", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property txtHeader (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtHeader' moved to '_1501297949txtHeader'
	 */

    [Bindable(event="propertyChange")]
    public function get txtHeader():Controls.Enviroment.TextExended
    {
        return this._1501297949txtHeader;
    }

    public function set txtHeader(value:Controls.Enviroment.TextExended):void
    {
    	var oldValue:Object = this._1501297949txtHeader;
        if (oldValue !== value)
        {
            this._1501297949txtHeader = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtHeader", oldValue, value));
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
