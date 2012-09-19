

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.effects.Sequence;
import mx.controls.Image;
import mx.containers.Box;
import int;
import mx.controls.Label;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property boxAnswer (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'boxAnswer' moved to '_233825641boxAnswer'
	 */

    [Bindable(event="propertyChange")]
    public function get boxAnswer():mx.containers.Box
    {
        return this._233825641boxAnswer;
    }

    public function set boxAnswer(value:mx.containers.Box):void
    {
    	var oldValue:Object = this._233825641boxAnswer;
        if (oldValue !== value)
        {
            this._233825641boxAnswer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "boxAnswer", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property glow (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'glow' moved to '_3175821glow'
	 */

    [Bindable(event="propertyChange")]
    public function get glow():mx.effects.Sequence
    {
        return this._3175821glow;
    }

    public function set glow(value:mx.effects.Sequence):void
    {
    	var oldValue:Object = this._3175821glow;
        if (oldValue !== value)
        {
            this._3175821glow = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "glow", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property imgBackground (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'imgBackground' moved to '_701444433imgBackground'
	 */

    [Bindable(event="propertyChange")]
    public function get imgBackground():mx.controls.Image
    {
        return this._701444433imgBackground;
    }

    public function set imgBackground(value:mx.controls.Image):void
    {
    	var oldValue:Object = this._701444433imgBackground;
        if (oldValue !== value)
        {
            this._701444433imgBackground = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "imgBackground", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property lb (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'lb' moved to '_3446lb'
	 */

    [Bindable(event="propertyChange")]
    public function get lb():mx.controls.Label
    {
        return this._3446lb;
    }

    public function set lb(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._3446lb;
        if (oldValue !== value)
        {
            this._3446lb = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lb", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property _defaultWidth (private)
	 * - generated setter
	 * - generated getter
	 * - original private var '_defaultWidth' moved to '_1533514212_defaultWidth'
	 */

    [Bindable(event="propertyChange")]
    private function get _defaultWidth():int
    {
        return this._1533514212_defaultWidth;
    }

    private function set _defaultWidth(value:int):void
    {
    	var oldValue:Object = this._1533514212_defaultWidth;
        if (oldValue !== value)
        {
            this._1533514212_defaultWidth = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_defaultWidth", oldValue, value));
        }
    }



}
