






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
public class _Controls_SimplePromptControls_MultipleViewRadioButtonWatcherSetupUtil extends Sprite
    implements mx.binding.IWatcherSetupUtil
{
    public function _Controls_SimplePromptControls_MultipleViewRadioButtonWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import Controls.SimplePromptControls.MultipleViewRadioButton;
        (Controls.SimplePromptControls.MultipleViewRadioButton).watcherSetupUtil = new _Controls_SimplePromptControls_MultipleViewRadioButtonWatcherSetupUtil();
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
        import mx.styles.IStyleClient;
        import Controls.Enviroment.TextExended;
        import mx.states.AddChild;
        import mx.core.IDeferredInstance;
        import flash.display.DisplayObject;
        import mx.core.ClassFactory;
        import Controls.AnswerControls.SingleAnswerControl;
        import mx.states.RemoveChild;
        import mx.core.mx_internal;
        import __AS3__.vec.Vector;
        import mx.controls.Text;
        import mx.core.IPropertyChangeNotifier;
        import Model.Answers.SingleAnswer;
        import mx.utils.ObjectProxy;
        import Controls.PromptControls.MultipleChoiceControl;
        import mx.events.ResizeEvent;
        import mx.containers.Canvas;
        import mx.rpc.events.HeaderEvent;
        import mx.utils.UIDUtil;
        import Controls.ActivityControl;
        import flash.events.MouseEvent;
        import Model.EmbededData;
        import mx.binding.IBindingClient;
        import mx.states.SetStyle;
        import mx.events.FlexEvent;
        import mx.core.UIComponentDescriptor;
        import mx.events.PropertyChangeEvent;
        import mx.controls.Image;
        import Controls.AnswerControls.AnswerControl;
        import flash.events.Event;
        import mx.core.IFactory;
        import mx.core.DeferredInstanceFromClass;
        import mx.states.State;
        import mx.binding.BindingManager;
        import Interfaces.IResult;
        import mx.controls.RadioButtonGroup;
        import flash.events.IEventDispatcher;
        import mx.controls.RadioButton;
        import Interfaces.IDirectionAnswer;

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.StaticPropertyWatcher("inctance",
            null
,         // writeWatcherListeners id=1 size=2
        [
        bindings[2],
        bindings[10]
        ]
,
                                                                 null
);

        // writeWatcher id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[2] = new mx.binding.PropertyWatcher("iconCorrect",
            null
,         // writeWatcherListeners id=2 size=1
        [
        bindings[2]
        ]
,
                                                                 null
);

        // writeWatcher id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[8] = new mx.binding.PropertyWatcher("iconIncorrect",
            null
,         // writeWatcherListeners id=8 size=1
        [
        bindings[10]
        ]
,
                                                                 null
);

        // writeWatcher id=14 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=13 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[13] = new mx.binding.PropertyWatcher("_rbY",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=13 size=1
        [
        bindings[27]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=7 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[4] = new mx.binding.PropertyWatcher("txVariantText",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=4 size=8
        [
        bindings[15],
        bindings[13],
        bindings[19],
        bindings[23],
        bindings[21],
        bindings[6],
        bindings[14],
        bindings[5]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=9 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[9] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=9 size=2
        [
        bindings[21],
        bindings[14]
        ]
,
                                                                 null
);

        // writeWatcher id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[5] = new mx.binding.PropertyWatcher("text",
            {
                valueCommit: true
            }
,         // writeWatcherListeners id=5 size=2
        [
        bindings[13],
        bindings[5]
        ]
,
                                                                 null
);

        // writeWatcher id=11 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[11] = new mx.binding.PropertyWatcher("htmlText",
            {
                htmlTextChanged: true
            }
,         // writeWatcherListeners id=11 size=1
        [
        bindings[19]
        ]
,
                                                                 null
);

        // writeWatcher id=10 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=12 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[12] = new mx.binding.PropertyWatcher("hBox",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=12 size=2
        [
        bindings[25],
        bindings[24]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[6] = new mx.binding.PropertyWatcher("rbVariant",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=6 size=3
        [
        bindings[16],
        bindings[7],
        bindings[22]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("_fontSize",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=3 size=6
        [
        bindings[4],
        bindings[26],
        bindings[11],
        bindings[20],
        bindings[3],
        bindings[12]
        ]
,
                                                                 propertyGetter
);


        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        import Model.EmbededData;
        watchers[1].updateParent(Model.EmbededData);

 





        // writeWatcherBottom id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].addChild(watchers[2]);

 





        // writeWatcherBottom id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].addChild(watchers[8]);

 





        // writeWatcherBottom id=14 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=13 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[13].updateParent(target);

 





        // writeWatcherBottom id=7 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[4].updateParent(target);

 





        // writeWatcherBottom id=9 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[4].addChild(watchers[9]);

 





        // writeWatcherBottom id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[4].addChild(watchers[5]);

 





        // writeWatcherBottom id=11 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[4].addChild(watchers[11]);

 





        // writeWatcherBottom id=10 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=12 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[12].updateParent(target);

 





        // writeWatcherBottom id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[6].updateParent(target);

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].updateParent(target);

 





    }
}

}
