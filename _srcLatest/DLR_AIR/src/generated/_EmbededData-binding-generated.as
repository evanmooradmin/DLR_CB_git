

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import String;

class BindableProperty
    implements flash.events.IEventDispatcher
{
	/**
	 * generated bindable wrapper for property img (static public)
	 * - generated setter
	 * - generated getter
	 * - original static public var 'img' moved to '_104387img'
	 */

    [Bindable(event="propertyChange")]
    static public function get img():String
    {
        return EmbededData._104387img;
    }

    static public function set img(value:String):void
    {
    	var oldValue:Object = EmbededData._104387img;
        if (oldValue !== value)
        {
            EmbededData._104387img = value;
            var eventDispatcher:IEventDispatcher = EmbededData.staticEventDispatcher;
            if (eventDispatcher != null)
            {
                eventDispatcher.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(EmbededData, "img", oldValue, value));
            }
        }
    }


    //    IEventDispatcher implementation
    //
    private var _bindingEventDispatcher:flash.events.EventDispatcher =
        new flash.events.EventDispatcher(flash.events.IEventDispatcher(this));

    public function addEventListener(type:String, listener:Function,
                                     useCapture:Boolean = false,
                                     priority:int = 0,
                                     weakRef:Boolean = false):void
    {
        _bindingEventDispatcher.addEventListener(type, listener, useCapture,
                                                 priority, weakRef);
    }

    public function dispatchEvent(event:flash.events.Event):Boolean
    {
        return _bindingEventDispatcher.dispatchEvent(event);
    }

    public function hasEventListener(type:String):Boolean
    {
        return _bindingEventDispatcher.hasEventListener(type);
    }

    public function removeEventListener(type:String,
                                        listener:Function,
                                        useCapture:Boolean = false):void
    {
        _bindingEventDispatcher.removeEventListener(type, listener, useCapture);
    }

    public function willTrigger(type:String):Boolean
    {
        return _bindingEventDispatcher.willTrigger(type);
    }

    private static var _staticBindingEventDispatcher:flash.events.EventDispatcher =
        new flash.events.EventDispatcher();

    public static function get staticEventDispatcher():IEventDispatcher
    {
        return _staticBindingEventDispatcher;
    }
}
