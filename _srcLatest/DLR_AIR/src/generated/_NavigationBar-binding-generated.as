

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.controls.Button;
import mx.controls.ComboBox;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property btnChangeLesson (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnChangeLesson' moved to '_844190084btnChangeLesson'
	 */

    [Bindable(event="propertyChange")]
    public function get btnChangeLesson():mx.controls.Button
    {
        return this._844190084btnChangeLesson;
    }

    public function set btnChangeLesson(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._844190084btnChangeLesson;
        if (oldValue !== value)
        {
            this._844190084btnChangeLesson = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnChangeLesson", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property cmbFontName (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'cmbFontName' moved to '_1938516178cmbFontName'
	 */

    [Bindable(event="propertyChange")]
    public function get cmbFontName():mx.controls.ComboBox
    {
        return this._1938516178cmbFontName;
    }

    public function set cmbFontName(value:mx.controls.ComboBox):void
    {
    	var oldValue:Object = this._1938516178cmbFontName;
        if (oldValue !== value)
        {
            this._1938516178cmbFontName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cmbFontName", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property cmbFontSize (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'cmbFontSize' moved to '_1938673224cmbFontSize'
	 */

    [Bindable(event="propertyChange")]
    public function get cmbFontSize():mx.controls.ComboBox
    {
        return this._1938673224cmbFontSize;
    }

    public function set cmbFontSize(value:mx.controls.ComboBox):void
    {
    	var oldValue:Object = this._1938673224cmbFontSize;
        if (oldValue !== value)
        {
            this._1938673224cmbFontSize = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cmbFontSize", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property cmbLesson (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'cmbLesson' moved to '_1492078736cmbLesson'
	 */

    [Bindable(event="propertyChange")]
    public function get cmbLesson():mx.controls.ComboBox
    {
        return this._1492078736cmbLesson;
    }

    public function set cmbLesson(value:mx.controls.ComboBox):void
    {
    	var oldValue:Object = this._1492078736cmbLesson;
        if (oldValue !== value)
        {
            this._1492078736cmbLesson = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cmbLesson", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property cmbWeek (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'cmbWeek' moved to '_882325836cmbWeek'
	 */

    [Bindable(event="propertyChange")]
    public function get cmbWeek():mx.controls.ComboBox
    {
        return this._882325836cmbWeek;
    }

    public function set cmbWeek(value:mx.controls.ComboBox):void
    {
    	var oldValue:Object = this._882325836cmbWeek;
        if (oldValue !== value)
        {
            this._882325836cmbWeek = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cmbWeek", oldValue, value));
        }
    }



}
