

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import Controls.ActivityControl;
import Controls.NavigationBar;
import mx.containers.Canvas;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property activityControl (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'activityControl' moved to '_1477331790activityControl'
	 */

    [Bindable(event="propertyChange")]
    public function get activityControl():Controls.ActivityControl
    {
        return this._1477331790activityControl;
    }

    public function set activityControl(value:Controls.ActivityControl):void
    {
    	var oldValue:Object = this._1477331790activityControl;
        if (oldValue !== value)
        {
            this._1477331790activityControl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "activityControl", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property hideCanvas (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'hideCanvas' moved to '_124664518hideCanvas'
	 */

    [Bindable(event="propertyChange")]
    public function get hideCanvas():mx.containers.Canvas
    {
        return this._124664518hideCanvas;
    }

    public function set hideCanvas(value:mx.containers.Canvas):void
    {
    	var oldValue:Object = this._124664518hideCanvas;
        if (oldValue !== value)
        {
            this._124664518hideCanvas = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hideCanvas", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property navBar (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'navBar' moved to '_1052597264navBar'
	 */

    [Bindable(event="propertyChange")]
    public function get navBar():Controls.NavigationBar
    {
        return this._1052597264navBar;
    }

    public function set navBar(value:Controls.NavigationBar):void
    {
    	var oldValue:Object = this._1052597264navBar;
        if (oldValue !== value)
        {
            this._1052597264navBar = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "navBar", oldValue, value));
        }
    }



}
