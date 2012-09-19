






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
public class _Controls_SimplePromptControls_VariantOrViewControlWatcherSetupUtil extends Sprite
    implements mx.binding.IWatcherSetupUtil
{
    public function _Controls_SimplePromptControls_VariantOrViewControlWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import Controls.SimplePromptControls.VariantOrViewControl;
        (Controls.SimplePromptControls.VariantOrViewControl).watcherSetupUtil = new _Controls_SimplePromptControls_VariantOrViewControlWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import flash.events.EventDispatcher;
        import mx.core.DeferredInstanceFromFunction;
        import mx.effects.Resize;
        import mx.core.UIComponent;
        import Model.Answers.Answer;
        import Interfaces.IFontStyle;
        import mx.states.AddChild;
        import mx.core.IDeferredInstance;
        import flash.display.DisplayObject;
        import mx.core.ClassFactory;
        import mx.states.RemoveChild;
        import mx.effects.Sequence;
        import Model.Prompts.FillInTheBlanks;
        import Interfaces.IDirectionPrompt;
        import mx.core.mx_internal;
        import __AS3__.vec.Vector;
        import mx.states.Transition;
        import mx.controls.TextInput;
        import mx.controls.Text;
        import mx.core.IPropertyChangeNotifier;
        import mx.utils.ObjectProxy;
        import mx.containers.Canvas;
        import Controls.FlowBox.FlowBox;
        import Model.Answers.VariantORAnswerConteiner;
        import mx.utils.UIDUtil;
        import mx.effects.Parallel;
        import Controls.ActivityControl;
        import Model.EmbededData;
        import Model.FactoryRegExp;
        import mx.effects.Blur;
        import mx.binding.IBindingClient;
        import Controls.SelectableLabel;
        import mx.core.UIComponentDescriptor;
        import mx.containers.VBox;
        import mx.events.PropertyChangeEvent;
        import mx.controls.Image;
        import flash.events.Event;
        import mx.core.IFactory;
        import mx.core.DeferredInstanceFromClass;
        import mx.states.State;
        import mx.binding.BindingManager;
        import Interfaces.IResult;
        import flash.events.IEventDispatcher;
        import Model.Prompts.Prompt;

        // writeWatcher id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[5] = new mx.binding.PropertyWatcher("VboxIncorrectConteiner",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=5 size=3
        [
        bindings[30],
        bindings[28],
        bindings[5]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[6] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=6 size=6
        [
        bindings[13],
        bindings[9],
        bindings[8],
        bindings[16],
        bindings[25],
        bindings[22]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[7] = new mx.binding.PropertyWatcher("vbContainer",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=7 size=2
        [
        bindings[21],
        bindings[12]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=2 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=14 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=3 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=15 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[4] = new mx.binding.PropertyWatcher("HboxCorrectConteiner",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=4 size=1
        [
        bindings[4]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[8] = new mx.binding.StaticPropertyWatcher("inctance",
            null
,         // writeWatcherListeners id=8 size=2
        [
        bindings[23],
        bindings[14]
        ]
,
                                                                 null
);

        // writeWatcher id=13 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[13] = new mx.binding.PropertyWatcher("iconCorrect",
            null
,         // writeWatcherListeners id=13 size=1
        [
        bindings[23]
        ]
,
                                                                 null
);

        // writeWatcher id=9 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[9] = new mx.binding.PropertyWatcher("iconIncorrect",
            null
,         // writeWatcherListeners id=9 size=1
        [
        bindings[14]
        ]
,
                                                                 null
);

        // writeWatcher id=1 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=12 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[12] = new mx.binding.PropertyWatcher("textArea",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=12 size=2
        [
        bindings[26],
        bindings[18]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=10 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[10] = new mx.binding.PropertyWatcher("descriptionHeader",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=10 size=3
        [
        bindings[17],
        bindings[15],
        bindings[24]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=11 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[11] = new mx.binding.PropertyWatcher("htmlText",
            {
                htmlTextChanged: true
            }
,         // writeWatcherListeners id=11 size=2
        [
        bindings[15],
        bindings[24]
        ]
,
                                                                 null
);


        // writeWatcherBottom id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].updateParent(target);

 





        // writeWatcherBottom id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[6].updateParent(target);

 





        // writeWatcherBottom id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[7].updateParent(target);

 





        // writeWatcherBottom id=2 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=14 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=3 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=15 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[4].updateParent(target);

 





        // writeWatcherBottom id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        import Model.EmbededData;
        watchers[8].updateParent(Model.EmbededData);

 





        // writeWatcherBottom id=13 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[8].addChild(watchers[13]);

 





        // writeWatcherBottom id=9 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[8].addChild(watchers[9]);

 





        // writeWatcherBottom id=1 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=12 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[12].updateParent(target);

 





        // writeWatcherBottom id=10 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[10].updateParent(target);

 





        // writeWatcherBottom id=11 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[10].addChild(watchers[11]);

 





    }
}

}
