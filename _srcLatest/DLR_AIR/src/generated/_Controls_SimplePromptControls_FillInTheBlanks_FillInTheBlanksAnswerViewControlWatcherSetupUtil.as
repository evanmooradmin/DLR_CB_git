






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
public class _Controls_SimplePromptControls_FillInTheBlanks_FillInTheBlanksAnswerViewControlWatcherSetupUtil extends Sprite
    implements mx.binding.IWatcherSetupUtil
{
    public function _Controls_SimplePromptControls_FillInTheBlanks_FillInTheBlanksAnswerViewControlWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import Controls.SimplePromptControls.FillInTheBlanks.FillInTheBlanksAnswerViewControl;
        (Controls.SimplePromptControls.FillInTheBlanks.FillInTheBlanksAnswerViewControl).watcherSetupUtil = new _Controls_SimplePromptControls_FillInTheBlanks_FillInTheBlanksAnswerViewControlWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import flash.events.EventDispatcher;
        import mx.core.DeferredInstanceFromFunction;
        import mx.containers.HBox;
        import mx.core.UIComponent;
        import Model.Answers.Answer;
        import Interfaces.IFontStyle;
        import Model.Events.StateEvent;
        import mx.states.AddChild;
        import mx.core.IDeferredInstance;
        import mx.core.ClassFactory;
        import Model.Prompts.FillInTheBlanks;
        import mx.core.mx_internal;
        import __AS3__.vec.Vector;
        import mx.controls.TextInput;
        import mx.controls.Text;
        import mx.core.IPropertyChangeNotifier;
        import mx.utils.ObjectProxy;
        import mx.controls.Label;
        import mx.events.ResizeEvent;
        import mx.containers.Canvas;
        import mx.utils.UIDUtil;
        import Model.EmbededData;
        import mx.binding.IBindingClient;
        import mx.core.UIComponentDescriptor;
        import mx.events.PropertyChangeEvent;
        import mx.controls.Image;
        import Model.Answers.FillInTheBlanksAnswer;
        import flash.events.Event;
        import mx.core.IFactory;
        import Model.StateTypes;
        import mx.core.DeferredInstanceFromClass;
        import mx.states.State;
        import mx.binding.BindingManager;
        import Interfaces.IResult;
        import flash.events.IEventDispatcher;
        import Interfaces.IDirectionAnswer;
        import Model.Prompts.Prompt;

        // writeWatcher id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[2] = new mx.binding.StaticPropertyWatcher("inctance",
            null
,         // writeWatcherListeners id=2 size=2
        [
        bindings[8],
        bindings[5]
        ]
,
                                                                 null
);

        // writeWatcher id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[5] = new mx.binding.PropertyWatcher("iconCorrect",
            null
,         // writeWatcherListeners id=5 size=1
        [
        bindings[8]
        ]
,
                                                                 null
);

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("iconIncorrect",
            null
,         // writeWatcherListeners id=3 size=1
        [
        bindings[5]
        ]
,
                                                                 null
);

        // writeWatcher id=1 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=4 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true


        // writeWatcherBottom id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        import Model.EmbededData;
        watchers[2].updateParent(Model.EmbededData);

 





        // writeWatcherBottom id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].addChild(watchers[5]);

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].addChild(watchers[3]);

 





        // writeWatcherBottom id=1 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=4 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





    }
}

}
