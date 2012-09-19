






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
public class _Controls_SimplePromptControls_FixCapitalsViewControlWatcherSetupUtil extends Sprite
    implements mx.binding.IWatcherSetupUtil
{
    public function _Controls_SimplePromptControls_FixCapitalsViewControlWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import Controls.SimplePromptControls.FixCapitalsViewControl;
        (Controls.SimplePromptControls.FixCapitalsViewControl).watcherSetupUtil = new _Controls_SimplePromptControls_FixCapitalsViewControlWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import flash.events.EventDispatcher;
        import mx.core.DeferredInstanceFromFunction;
        import flash.text.AntiAliasType;
        import mx.containers.HBox;
        import mx.core.UIComponent;
        import Model.Answers.Answer;
        import mx.events.FlexMouseEvent;
        import Interfaces.IFontStyle;
        import mx.states.AddChild;
        import flash.events.FocusEvent;
        import mx.core.IDeferredInstance;
        import Model.Syntax.RelationSentence;
        import Model.EnumRegExp;
        import mx.core.ClassFactory;
        import mx.core.mx_internal;
        import __AS3__.vec.Vector;
        import mx.controls.TextInput;
        import mx.controls.Text;
        import mx.core.IPropertyChangeNotifier;
        import Model.Answers.FixCapitalsAnswer;
        import mx.utils.ObjectProxy;
        import mx.controls.Label;
        import mx.containers.Canvas;
        import mx.utils.UIDUtil;
        import Controls.ActivityControl;
        import flash.events.MouseEvent;
        import Model.EmbededData;
        import Model.FactoryRegExp;
        import mx.binding.IBindingClient;
        import mx.events.FlexEvent;
        import mx.core.UIComponentDescriptor;
        import mx.events.PropertyChangeEvent;
        import mx.controls.Image;
        import flash.events.Event;
        import mx.core.IFactory;
        import mx.core.DeferredInstanceFromClass;
        import mx.states.State;
        import Interfaces.IResult;
        import mx.binding.BindingManager;
        import flash.events.IEventDispatcher;
        import Interfaces.IDirectionAnswer;

        // writeWatcher id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[5] = new mx.binding.StaticPropertyWatcher("inctance",
            null
,         // writeWatcherListeners id=5 size=2
        [
        bindings[8],
        bindings[12]
        ]
,
                                                                 null
);

        // writeWatcher id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[6] = new mx.binding.PropertyWatcher("iconCorrect",
            null
,         // writeWatcherListeners id=6 size=1
        [
        bindings[8]
        ]
,
                                                                 null
);

        // writeWatcher id=11 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[11] = new mx.binding.PropertyWatcher("iconIncorrect",
            null
,         // writeWatcherListeners id=11 size=1
        [
        bindings[12]
        ]
,
                                                                 null
);

        // writeWatcher id=7 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=10 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=4 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[2] = new mx.binding.PropertyWatcher("lbText",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=2 size=2
        [
        bindings[13],
        bindings[5]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("text",
            {
                valueCommit: true
            }
,         // writeWatcherListeners id=3 size=2
        [
        bindings[13],
        bindings[5]
        ]
,
                                                                 null
);

        // writeWatcher id=1 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[8] = new mx.binding.PropertyWatcher("imgCorrect",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=8 size=1
        [
        bindings[9]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=9 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[9] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=9 size=1
        [
        bindings[9]
        ]
,
                                                                 null
);


        // writeWatcherBottom id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        import Model.EmbededData;
        watchers[5].updateParent(Model.EmbededData);

 





        // writeWatcherBottom id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].addChild(watchers[6]);

 





        // writeWatcherBottom id=11 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].addChild(watchers[11]);

 





        // writeWatcherBottom id=7 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=10 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=4 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].updateParent(target);

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].addChild(watchers[3]);

 





        // writeWatcherBottom id=1 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[8].updateParent(target);

 





        // writeWatcherBottom id=9 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[8].addChild(watchers[9]);

 





    }
}

}
