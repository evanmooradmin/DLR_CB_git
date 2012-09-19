

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.controls.Button;
import mx.controls.CheckBox;
import mx.controls.ComboBox;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property btnDefault (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnDefault' moved to '_355291205btnDefault'
	 */

    [Bindable(event="propertyChange")]
    public function get btnDefault():mx.controls.Button
    {
        return this._355291205btnDefault;
    }

    public function set btnDefault(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._355291205btnDefault;
        if (oldValue !== value)
        {
            this._355291205btnDefault = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnDefault", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property btnOk (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnOk' moved to '_94069080btnOk'
	 */

    [Bindable(event="propertyChange")]
    public function get btnOk():mx.controls.Button
    {
        return this._94069080btnOk;
    }

    public function set btnOk(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._94069080btnOk;
        if (oldValue !== value)
        {
            this._94069080btnOk = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnOk", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property chBoxCheckAnswer (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'chBoxCheckAnswer' moved to '_1878924256chBoxCheckAnswer'
	 */

    [Bindable(event="propertyChange")]
    public function get chBoxCheckAnswer():mx.controls.CheckBox
    {
        return this._1878924256chBoxCheckAnswer;
    }

    public function set chBoxCheckAnswer(value:mx.controls.CheckBox):void
    {
    	var oldValue:Object = this._1878924256chBoxCheckAnswer;
        if (oldValue !== value)
        {
            this._1878924256chBoxCheckAnswer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "chBoxCheckAnswer", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property chBoxFullscreen (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'chBoxFullscreen' moved to '_1638431871chBoxFullscreen'
	 */

    [Bindable(event="propertyChange")]
    public function get chBoxFullscreen():mx.controls.CheckBox
    {
        return this._1638431871chBoxFullscreen;
    }

    public function set chBoxFullscreen(value:mx.controls.CheckBox):void
    {
    	var oldValue:Object = this._1638431871chBoxFullscreen;
        if (oldValue !== value)
        {
            this._1638431871chBoxFullscreen = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "chBoxFullscreen", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property cmbFontColor (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'cmbFontColor' moved to '_45282820cmbFontColor'
	 */

    [Bindable(event="propertyChange")]
    public function get cmbFontColor():mx.controls.ComboBox
    {
        return this._45282820cmbFontColor;
    }

    public function set cmbFontColor(value:mx.controls.ComboBox):void
    {
    	var oldValue:Object = this._45282820cmbFontColor;
        if (oldValue !== value)
        {
            this._45282820cmbFontColor = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cmbFontColor", oldValue, value));
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
	 * generated bindable wrapper for property quickLaunch (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'quickLaunch' moved to '_31305728quickLaunch'
	 */

    [Bindable(event="propertyChange")]
    public function get quickLaunch():mx.controls.CheckBox
    {
        return this._31305728quickLaunch;
    }

    public function set quickLaunch(value:mx.controls.CheckBox):void
    {
    	var oldValue:Object = this._31305728quickLaunch;
        if (oldValue !== value)
        {
            this._31305728quickLaunch = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "quickLaunch", oldValue, value));
        }
    }



}
