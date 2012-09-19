

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.controls.Button;
import mx.controls.Text;
import int;
import Controls.FlowBox.FlowBox;

class BindableProperty
{
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
