






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
public class _Controls_SimplePromptControls_FillInTheBlanks_FillInTheBlanksPromptViewControlWatcherSetupUtil extends Sprite
    implements mx.binding.IWatcherSetupUtil
{
    public function _Controls_SimplePromptControls_FillInTheBlanks_FillInTheBlanksPromptViewControlWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import Controls.SimplePromptControls.FillInTheBlanks.FillInTheBlanksPromptViewControl;
        (Controls.SimplePromptControls.FillInTheBlanks.FillInTheBlanksPromptViewControl).watcherSetupUtil = new _Controls_SimplePromptControls_FillInTheBlanks_FillInTheBlanksPromptViewControlWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import mx.core.DeferredInstanceFromFunction;
        import mx.containers.HBox;
        import mx.core.UIComponent;
        import Interfaces.IFontStyle;
        import Model.EnumRegExp;
        import mx.core.ClassFactory;
        import flash.display.DisplayObject;
        import Model.Prompts.FillInTheBlanks;
        import mx.effects.Sequence;
        import mx.controls.TextInput;
        import mx.states.Transition;
        import mx.core.IPropertyChangeNotifier;
        import mx.controls.Text;
        import flash.text.engine.TextElement;
        import mx.controls.Label;
        import mx.containers.Canvas;
        import mx.controls.TextArea;
        import Controls.ActivityControl;
        import mx.effects.Parallel;
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
        import Model.Events.StateEvent;
        import mx.states.AddChild;
        import mx.core.IDeferredInstance;
        import mx.states.RemoveChild;
        import Interfaces.IDirectionPrompt;
        import mx.core.mx_internal;
        import __AS3__.vec.Vector;
        import mx.utils.ObjectProxy;
        import Controls.FlowBox.FlowBox;
        import mx.utils.UIDUtil;
        import Model.EmbededData;
        import mx.binding.IBindingClient;
        import Controls.SelectableLabel;
        import mx.controls.Image;
        import mx.events.PropertyChangeEvent;
        import mx.core.IFactory;
        import Model.StateTypes;
        import flash.events.IEventDispatcher;

        // writeWatcher id=15 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[15] = new mx.binding.PropertyWatcher("vbStrings",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=15 size=1
        [
        bindings[17]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[5] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=5 size=3
        [
        bindings[9],
        bindings[8],
        bindings[7]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=2 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[4] = new mx.binding.PropertyWatcher("hBoxCorrect",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=4 size=2
        [
        bindings[4],
        bindings[23]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=17 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[17] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=17 size=1
        [
        bindings[23]
        ]
,
                                                                 null
);

        // writeWatcher id=3 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=10 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[10] = new mx.binding.PropertyWatcher("HbIncorrectContainer",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=10 size=2
        [
        bindings[15],
        bindings[26]
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
        bindings[15]
        ]
,
                                                                 null
);

        // writeWatcher id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[8] = new mx.binding.StaticPropertyWatcher("inctance",
            null
,         // writeWatcherListeners id=8 size=2
        [
        bindings[14],
        bindings[22]
        ]
,
                                                                 null
);

        // writeWatcher id=16 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[16] = new mx.binding.PropertyWatcher("iconCorrect",
            null
,         // writeWatcherListeners id=16 size=1
        [
        bindings[22]
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
        watchers[12] = new mx.binding.PropertyWatcher("imgIncorrect",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=12 size=1
        [
        bindings[15]
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
        bindings[15]
        ]
,
                                                                 null
);

        // writeWatcher id=14 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[14] = new mx.binding.PropertyWatcher("flowBox",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=14 size=1
        [
        bindings[16]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=20 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[6] = new mx.binding.PropertyWatcher("VbContainer",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=6 size=4
        [
        bindings[13],
        bindings[21],
        bindings[20],
        bindings[12]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[7] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=7 size=2
        [
        bindings[13],
        bindings[21]
        ]
,
                                                                 null
);

        // writeWatcher id=18 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[18] = new mx.binding.PropertyWatcher("imgCorrect",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=18 size=1
        [
        bindings[23]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=19 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[19] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=19 size=1
        [
        bindings[23]
        ]
,
                                                                 null
);


        // writeWatcherBottom id=15 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[15].updateParent(target);

 





        // writeWatcherBottom id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].updateParent(target);

 





        // writeWatcherBottom id=2 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[4].updateParent(target);

 





        // writeWatcherBottom id=17 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[4].addChild(watchers[17]);

 





        // writeWatcherBottom id=3 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=10 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[10].updateParent(target);

 





        // writeWatcherBottom id=11 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[10].addChild(watchers[11]);

 





        // writeWatcherBottom id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        import Model.EmbededData;
        watchers[8].updateParent(Model.EmbededData);

 





        // writeWatcherBottom id=16 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[8].addChild(watchers[16]);

 





        // writeWatcherBottom id=9 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[8].addChild(watchers[9]);

 





        // writeWatcherBottom id=1 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=12 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[12].updateParent(target);

 





        // writeWatcherBottom id=13 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[12].addChild(watchers[13]);

 





        // writeWatcherBottom id=14 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[14].updateParent(target);

 





        // writeWatcherBottom id=20 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[6].updateParent(target);

 





        // writeWatcherBottom id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[6].addChild(watchers[7]);

 





        // writeWatcherBottom id=18 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[18].updateParent(target);

 





        // writeWatcherBottom id=19 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[18].addChild(watchers[19]);

 





    }
}

}
