

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.controls.Button;
import mx.controls.Text;
import mx.states.State;
import mx.containers.Canvas;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property btnClear (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnClear' moved to '_2082333009btnClear'
	 */

    [Bindable(event="propertyChange")]
    public function get btnClear():mx.controls.Button
    {
        return this._2082333009btnClear;
    }

    public function set btnClear(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._2082333009btnClear;
        if (oldValue !== value)
        {
            this._2082333009btnClear = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnClear", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property canvContainer (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'canvContainer' moved to '_437095547canvContainer'
	 */

    [Bindable(event="propertyChange")]
    public function get canvContainer():mx.containers.Canvas
    {
        return this._437095547canvContainer;
    }

    public function set canvContainer(value:mx.containers.Canvas):void
    {
    	var oldValue:Object = this._437095547canvContainer;
        if (oldValue !== value)
        {
            this._437095547canvContainer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canvContainer", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property canvDrawing (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'canvDrawing' moved to '_1867109736canvDrawing'
	 */

    [Bindable(event="propertyChange")]
    public function get canvDrawing():mx.containers.Canvas
    {
        return this._1867109736canvDrawing;
    }

    public function set canvDrawing(value:mx.containers.Canvas):void
    {
    	var oldValue:Object = this._1867109736canvDrawing;
        if (oldValue !== value)
        {
            this._1867109736canvDrawing = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canvDrawing", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property canvDrawingHolder (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'canvDrawingHolder' moved to '_1607307876canvDrawingHolder'
	 */

    [Bindable(event="propertyChange")]
    public function get canvDrawingHolder():mx.containers.Canvas
    {
        return this._1607307876canvDrawingHolder;
    }

    public function set canvDrawingHolder(value:mx.containers.Canvas):void
    {
    	var oldValue:Object = this._1607307876canvDrawingHolder;
        if (oldValue !== value)
        {
            this._1607307876canvDrawingHolder = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canvDrawingHolder", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property canvNoDrawing (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'canvNoDrawing' moved to '_942329065canvNoDrawing'
	 */

    [Bindable(event="propertyChange")]
    public function get canvNoDrawing():mx.containers.Canvas
    {
        return this._942329065canvNoDrawing;
    }

    public function set canvNoDrawing(value:mx.containers.Canvas):void
    {
    	var oldValue:Object = this._942329065canvNoDrawing;
        if (oldValue !== value)
        {
            this._942329065canvNoDrawing = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canvNoDrawing", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property canvTitle (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'canvTitle' moved to '_1004760914canvTitle'
	 */

    [Bindable(event="propertyChange")]
    public function get canvTitle():mx.containers.Canvas
    {
        return this._1004760914canvTitle;
    }

    public function set canvTitle(value:mx.containers.Canvas):void
    {
    	var oldValue:Object = this._1004760914canvTitle;
        if (oldValue !== value)
        {
            this._1004760914canvTitle = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canvTitle", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property stateDrawing (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'stateDrawing' moved to '_2086269517stateDrawing'
	 */

    [Bindable(event="propertyChange")]
    public function get stateDrawing():mx.states.State
    {
        return this._2086269517stateDrawing;
    }

    public function set stateDrawing(value:mx.states.State):void
    {
    	var oldValue:Object = this._2086269517stateDrawing;
        if (oldValue !== value)
        {
            this._2086269517stateDrawing = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "stateDrawing", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property txtTitle (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtTitle' moved to '_1464371768txtTitle'
	 */

    [Bindable(event="propertyChange")]
    public function get txtTitle():mx.controls.Text
    {
        return this._1464371768txtTitle;
    }

    public function set txtTitle(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._1464371768txtTitle;
        if (oldValue !== value)
        {
            this._1464371768txtTitle = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtTitle", oldValue, value));
        }
    }



}
