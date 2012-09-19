






package
{
import flash.display.Sprite;
import mx.core.IFlexModuleFactory;
import mx.binding.ArrayElementWatcher;
import mx.binding.FunctionReturnWatcher;
import mx.binding.IWatcherSetupUtil;
import mx.binding.PropertyWatcher;
import mx.binding.RepeaterComponentWatcher;
import mx.binding.RepeaterItemWatcher;
import mx.binding.StaticPropertyWatcher;
import mx.binding.XMLWatcher;
import mx.binding.Watcher;

[ExcludeClass]
[Mixin]
public class _Controls_Windows_PdfWindowWatcherSetupUtil extends Sprite
    implements mx.binding.IWatcherSetupUtil
{
    public function _Controls_Windows_PdfWindowWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import Controls.Windows.PdfWindow;
        (Controls.Windows.PdfWindow).watcherSetupUtil = new _Controls_Windows_PdfWindowWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import flash.events.EventDispatcher;
        import mx.core.DeferredInstanceFromFunction;
        import mx.controls.PopUpButton;
        import mx.core.UIComponent;
        import mx.managers.PopUpManager;
        import mx.core.IDeferredInstance;
        import mx.core.Application;
        import mx.core.ClassFactory;
        import mx.core.mx_internal;
        import __AS3__.vec.Vector;
        import mx.effects.Fade;
        import mx.core.IPropertyChangeNotifier;
        import mx.utils.ObjectProxy;
        import mx.events.ResizeEvent;
        import mx.containers.Canvas;
        import mx.managers.CursorManager;
        import mx.controls.Button;
        import mx.utils.UIDUtil;
        import mx.controls.Alert;
        import flash.events.MouseEvent;
        import Model.EmbededData;
        import mx.binding.IBindingClient;
        import mx.events.EffectEvent;
        import mx.events.FlexEvent;
        import mx.core.UIComponentDescriptor;
        import mx.containers.VBox;
        import mx.events.PropertyChangeEvent;
        import flash.events.Event;
        import mx.core.IFactory;
        import mx.core.DeferredInstanceFromClass;
        import mx.binding.BindingManager;
        import mx.controls.HTML;
        import flash.events.IEventDispatcher;


    }
}

}
