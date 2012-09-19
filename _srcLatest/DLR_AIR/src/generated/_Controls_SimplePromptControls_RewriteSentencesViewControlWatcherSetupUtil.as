






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
public class _Controls_SimplePromptControls_RewriteSentencesViewControlWatcherSetupUtil extends Sprite
    implements mx.binding.IWatcherSetupUtil
{
    public function _Controls_SimplePromptControls_RewriteSentencesViewControlWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import Controls.SimplePromptControls.RewriteSentencesViewControl;
        (Controls.SimplePromptControls.RewriteSentencesViewControl).watcherSetupUtil = new _Controls_SimplePromptControls_RewriteSentencesViewControlWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import mx.core.DeferredInstanceFromFunction;
        import mx.containers.HBox;
        import Controls.Enviroment.AutoResizableTextArea;
        import Controls.QuizControl;
        import mx.core.UIComponent;
        import Interfaces.IFontStyle;
        import Model.EnumRegExp;
        import mx.core.ClassFactory;
        import flash.display.DisplayObject;
        import mx.effects.Sequence;
        import Model.EditDistanceExt;
        import mx.controls.TextInput;
        import mx.states.Transition;
        import mx.core.IPropertyChangeNotifier;
        import mx.containers.Canvas;
        import mx.controls.TextArea;
        import Model.Preferences;
        import Controls.ActivityControl;
        import mx.controls.Alert;
        import mx.effects.Parallel;
        import mx.containers.Box;
        import Model.FactoryRegExp;
        import mx.effects.Blur;
        import mx.events.FlexEvent;
        import mx.core.UIComponentDescriptor;
        import mx.containers.VBox;
        import flash.events.Event;
        import mx.core.DeferredInstanceFromClass;
        import mx.states.State;
        import mx.binding.BindingManager;
        import Interfaces.IResult;
        import Model.Prompts.Prompt;
        import flash.events.EventDispatcher;
        import mx.effects.Resize;
        import Controls.Enviroment.TextExended;
        import mx.states.AddChild;
        import mx.core.IDeferredInstance;
        import mx.core.IUITextField;
        import Model.Syntax.RelationSentence;
        import mx.accessibility.AlertAccImpl;
        import mx.states.RemoveChild;
        import Interfaces.IDirectionPrompt;
        import mx.core.mx_internal;
        import __AS3__.vec.Vector;
        import Model.Prompts.RewriteSentence;
        import mx.utils.ObjectProxy;
        import mx.utils.UIDUtil;
        import Model.EmbededData;
        import mx.binding.IBindingClient;
        import mx.controls.Image;
        import mx.events.PropertyChangeEvent;
        import mx.core.IFactory;
        import flash.events.IEventDispatcher;

        // writeWatcher id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[5] = new mx.binding.PropertyWatcher("textInput",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=5 size=3
        [
        bindings[15],
        bindings[8],
        bindings[10]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[6] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=6 size=2
        [
        bindings[15],
        bindings[8]
        ]
,
                                                                 null
);

        // writeWatcher id=9 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[9] = new mx.binding.PropertyWatcher("htmlText",
            {
                htmlTextChanged: true,
                change: false
            }
,         // writeWatcherListeners id=9 size=1
        [
        bindings[10]
        ]
,
                                                                 null
);

        // writeWatcher id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[7] = new mx.binding.StaticPropertyWatcher("inctance",
            null
,         // writeWatcherListeners id=7 size=2
        [
        bindings[9],
        bindings[16]
        ]
,
                                                                 null
);

        // writeWatcher id=14 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[14] = new mx.binding.PropertyWatcher("iconCorrect",
            null
,         // writeWatcherListeners id=14 size=1
        [
        bindings[16]
        ]
,
                                                                 null
);

        // writeWatcher id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[8] = new mx.binding.PropertyWatcher("iconIncorrect",
            null
,         // writeWatcherListeners id=8 size=1
        [
        bindings[9]
        ]
,
                                                                 null
);

        // writeWatcher id=19 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=2 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=12 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[12] = new mx.binding.PropertyWatcher("imgIncorrect",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=12 size=1
        [
        bindings[11]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=13 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[13] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=13 size=1
        [
        bindings[11]
        ]
,
                                                                 null
);

        // writeWatcher id=1 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[4] = new mx.binding.PropertyWatcher("boxContent",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=4 size=3
        [
        bindings[14],
        bindings[7],
        bindings[5]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("hBoxCorrect",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=3 size=2
        [
        bindings[17],
        bindings[3]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=15 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[15] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=15 size=1
        [
        bindings[17]
        ]
,
                                                                 null
);

        // writeWatcher id=10 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[10] = new mx.binding.PropertyWatcher("hBoxIncorrect",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=10 size=2
        [
        bindings[11],
        bindings[20]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=11 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[11] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=11 size=1
        [
        bindings[11]
        ]
,
                                                                 null
);

        // writeWatcher id=18 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=16 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[16] = new mx.binding.PropertyWatcher("imgCorrect",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=16 size=2
        [
        bindings[17],
        bindings[21]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=17 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[17] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=17 size=2
        [
        bindings[17],
        bindings[21]
        ]
,
                                                                 null
);


        // writeWatcherBottom id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].updateParent(target);

 





        // writeWatcherBottom id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].addChild(watchers[6]);

 





        // writeWatcherBottom id=9 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].addChild(watchers[9]);

 





        // writeWatcherBottom id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        import Model.EmbededData;
        watchers[7].updateParent(Model.EmbededData);

 





        // writeWatcherBottom id=14 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[7].addChild(watchers[14]);

 





        // writeWatcherBottom id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[7].addChild(watchers[8]);

 





        // writeWatcherBottom id=19 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=2 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=12 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[12].updateParent(target);

 





        // writeWatcherBottom id=13 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[12].addChild(watchers[13]);

 





        // writeWatcherBottom id=1 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[4].updateParent(target);

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].updateParent(target);

 





        // writeWatcherBottom id=15 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].addChild(watchers[15]);

 





        // writeWatcherBottom id=10 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[10].updateParent(target);

 





        // writeWatcherBottom id=11 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[10].addChild(watchers[11]);

 





        // writeWatcherBottom id=18 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=16 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[16].updateParent(target);

 





        // writeWatcherBottom id=17 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[16].addChild(watchers[17]);

 





    }
}

}
