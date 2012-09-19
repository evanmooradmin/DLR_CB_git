






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
public class _Controls_SimplePromptControls_Open_endedWritingPrompt_Open_endedWritingPromptSimpleWatcherSetupUtil extends Sprite
    implements mx.binding.IWatcherSetupUtil
{
    public function _Controls_SimplePromptControls_Open_endedWritingPrompt_Open_endedWritingPromptSimpleWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import Controls.SimplePromptControls.Open_endedWritingPrompt.Open_endedWritingPromptSimple;
        (Controls.SimplePromptControls.Open_endedWritingPrompt.Open_endedWritingPromptSimple).watcherSetupUtil = new _Controls_SimplePromptControls_Open_endedWritingPrompt_Open_endedWritingPromptSimpleWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import mx.core.DeferredInstanceFromFunction;
        import mx.containers.HBox;
        import Controls.QuizControl;
        import mx.events.ScrollEvent;
        import mx.core.UIComponent;
        import Interfaces.IFontStyle;
        import mx.core.ClassFactory;
        import Model.Answers.VariantORAnswer;
        import mx.effects.Sequence;
        import Model.Events.AnswerWillVaryViewControlEvent;
        import mx.states.Transition;
        import mx.core.IPropertyChangeNotifier;
        import mx.controls.Text;
        import mx.containers.Canvas;
        import mx.events.ResizeEvent;
        import mx.controls.TextArea;
        import Model.Preferences;
        import Controls.ActivityControl;
        import mx.effects.Parallel;
        import flash.events.MouseEvent;
        import Model.FactoryRegExp;
        import mx.effects.Blur;
        import mx.events.FlexEvent;
        import mx.core.UIComponentDescriptor;
        import mx.containers.VBox;
        import Controls.SimplePromptControls.AnswerWillVaryViewControl;
        import flash.events.Event;
        import Model.Prompts.Open_endedWritingPrompt;
        import mx.core.DeferredInstanceFromClass;
        import mx.states.State;
        import Interfaces.IResult;
        import mx.binding.BindingManager;
        import Model.Prompts.Prompt;
        import flash.events.EventDispatcher;
        import mx.effects.Resize;
        import Model.Answers.Answer;
        import Controls.Enviroment.TextExended;
        import Model.Events.StateEvent;
        import mx.states.AddChild;
        import mx.core.IDeferredInstance;
        import Interfaces.IDirectionPrompt;
        import mx.core.mx_internal;
        import __AS3__.vec.Vector;
        import mx.utils.ObjectProxy;
        import mx.controls.Button;
        import mx.utils.UIDUtil;
        import mx.binding.IBindingClient;
        import mx.events.PropertyChangeEvent;
        import mx.core.IFactory;
        import flash.events.IEventDispatcher;

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.PropertyWatcher("vBox",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=1 size=1
        [
        bindings[2]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[2] = new mx.binding.PropertyWatcher("boxContent",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=2 size=5
        [
        bindings[4],
        bindings[11],
        bindings[7],
        bindings[12],
        bindings[5]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=3 size=2
        [
        bindings[12],
        bindings[5]
        ]
,
                                                                 null
);

        // writeWatcher id=4 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=5 shouldWriteSelf=false class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true

        // writeWatcher id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[6] = new mx.binding.PropertyWatcher("txtArea",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=6 size=1
        [
        bindings[8]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[7] = new mx.binding.PropertyWatcher("htmlText",
            {
                htmlTextChanged: true,
                change: false
            }
,         // writeWatcherListeners id=7 size=1
        [
        bindings[8]
        ]
,
                                                                 null
);

        // writeWatcher id=8 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true


        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].updateParent(target);

 





        // writeWatcherBottom id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].updateParent(target);

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].addChild(watchers[3]);

 





        // writeWatcherBottom id=4 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=5 shouldWriteSelf=false class=flex2.compiler.as3.binding.FunctionReturnWatcher

 





        // writeWatcherBottom id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[6].updateParent(target);

 





        // writeWatcherBottom id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[6].addChild(watchers[7]);

 





        // writeWatcherBottom id=8 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





    }
}

}
