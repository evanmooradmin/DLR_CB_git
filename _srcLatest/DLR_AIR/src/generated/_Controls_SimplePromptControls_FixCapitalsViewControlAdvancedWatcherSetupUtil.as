






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
public class _Controls_SimplePromptControls_FixCapitalsViewControlAdvancedWatcherSetupUtil extends Sprite
    implements mx.binding.IWatcherSetupUtil
{
    public function _Controls_SimplePromptControls_FixCapitalsViewControlAdvancedWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import Controls.SimplePromptControls.FixCapitalsViewControlAdvanced;
        (Controls.SimplePromptControls.FixCapitalsViewControlAdvanced).watcherSetupUtil = new _Controls_SimplePromptControls_FixCapitalsViewControlAdvancedWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import mx.core.DeferredInstanceFromFunction;
        import flash.events.EventDispatcher;
        import flash.text.AntiAliasType;
        import mx.containers.HBox;
        import mx.core.UIComponent;
        import Model.Answers.Answer;
        import mx.events.FlexMouseEvent;
        import Interfaces.IFontStyle;
        import Controls.Enviroment.TextExended;
        import mx.states.AddChild;
        import mx.core.IDeferredInstance;
        import Model.Syntax.RelationSentence;
        import Model.EnumRegExp;
        import flash.display.DisplayObject;
        import mx.core.ClassFactory;
        import mx.states.RemoveChild;
        import mx.core.mx_internal;
        import __AS3__.vec.Vector;
        import mx.controls.TextInput;
        import mx.controls.Text;
        import mx.core.IPropertyChangeNotifier;
        import Model.Answers.FixCapitalsAnswer;
        import mx.utils.ObjectProxy;
        import mx.events.ResizeEvent;
        import mx.containers.Canvas;
        import mx.controls.TextArea;
        import mx.utils.UIDUtil;
        import Controls.ActivityControl;
        import flash.events.MouseEvent;
        import Model.EmbededData;
        import Model.FactoryRegExp;
        import mx.binding.IBindingClient;
        import mx.events.FlexEvent;
        import mx.core.UIComponentDescriptor;
        import mx.containers.VBox;
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

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=1 size=6
        [
        bindings[4],
        bindings[19],
        bindings[21],
        bindings[16],
        bindings[14],
        bindings[3]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=24 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=16 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[16] = new mx.binding.PropertyWatcher("hBoxCorrect",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=16 size=3
        [
        bindings[45],
        bindings[33],
        bindings[27]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=18 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[18] = new mx.binding.PropertyWatcher("hBoxIncorrect",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=18 size=3
        [
        bindings[41],
        bindings[30],
        bindings[38]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=19 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=4 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[6] = new mx.binding.PropertyWatcher("lbText",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=6 size=2
        [
        bindings[23],
        bindings[10]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=25 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[25] = new mx.binding.PropertyWatcher("lbIncorrect",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=25 size=2
        [
        bindings[42],
        bindings[44]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=26 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[26] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=26 size=1
        [
        bindings[42]
        ]
,
                                                                 null
);

        // writeWatcher id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[5] = new mx.binding.PropertyWatcher("vBoxContainer",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=5 size=3
        [
        bindings[13],
        bindings[8],
        bindings[18]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[8] = new mx.binding.StaticPropertyWatcher("inctance",
            null
,         // writeWatcherListeners id=8 size=2
        [
        bindings[15],
        bindings[20]
        ]
,
                                                                 null
);

        // writeWatcher id=13 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[13] = new mx.binding.PropertyWatcher("iconCorrect",
            null
,         // writeWatcherListeners id=13 size=1
        [
        bindings[20]
        ]
,
                                                                 null
);

        // writeWatcher id=9 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[9] = new mx.binding.PropertyWatcher("iconIncorrect",
            null
,         // writeWatcherListeners id=9 size=1
        [
        bindings[15]
        ]
,
                                                                 null
);

        // writeWatcher id=7 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=22 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[22] = new mx.binding.PropertyWatcher("height",
            {
                heightChanged: true
            }
,         // writeWatcherListeners id=22 size=2
        [
        bindings[43],
        bindings[35]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=10 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[10] = new mx.binding.PropertyWatcher("imgIncorrect",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=10 size=1
        [
        bindings[16]
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
        bindings[16]
        ]
,
                                                                 null
);

        // writeWatcher id=15 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=17 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=20 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[20] = new mx.binding.PropertyWatcher("lbCorrect",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=20 size=3
        [
        bindings[34],
        bindings[36],
        bindings[37]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=21 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[21] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=21 size=1
        [
        bindings[34]
        ]
,
                                                                 null
);

        // writeWatcher id=23 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[23] = new mx.binding.PropertyWatcher("htmlText",
            {
                htmlTextChanged: true
            }
,         // writeWatcherListeners id=23 size=1
        [
        bindings[36]
        ]
,
                                                                 null
);

        // writeWatcher id=14 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[14] = new mx.binding.PropertyWatcher("txtInputText",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=14 size=1
        [
        bindings[24]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=12 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[12] = new mx.binding.PropertyWatcher("_fontSize",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=12 size=2
        [
        bindings[17],
        bindings[22]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[2] = new mx.binding.PropertyWatcher("imgCorrect",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=2 size=3
        [
        bindings[9],
        bindings[21],
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
,         // writeWatcherListeners id=3 size=3
        [
        bindings[9],
        bindings[21],
        bindings[5]
        ]
,
                                                                 null
);


        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].updateParent(target);

 





        // writeWatcherBottom id=24 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=16 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[16].updateParent(target);

 





        // writeWatcherBottom id=18 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[18].updateParent(target);

 





        // writeWatcherBottom id=19 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=4 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[6].updateParent(target);

 





        // writeWatcherBottom id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=25 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[25].updateParent(target);

 





        // writeWatcherBottom id=26 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[25].addChild(watchers[26]);

 





        // writeWatcherBottom id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].updateParent(target);

 





        // writeWatcherBottom id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        import Model.EmbededData;
        watchers[8].updateParent(Model.EmbededData);

 





        // writeWatcherBottom id=13 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[8].addChild(watchers[13]);

 





        // writeWatcherBottom id=9 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[8].addChild(watchers[9]);

 





        // writeWatcherBottom id=7 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=22 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[22].updateParent(target);

 





        // writeWatcherBottom id=10 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[10].updateParent(target);

 





        // writeWatcherBottom id=11 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[10].addChild(watchers[11]);

 





        // writeWatcherBottom id=15 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=17 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=20 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[20].updateParent(target);

 





        // writeWatcherBottom id=21 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[20].addChild(watchers[21]);

 





        // writeWatcherBottom id=23 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[20].addChild(watchers[23]);

 





        // writeWatcherBottom id=14 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[14].updateParent(target);

 





        // writeWatcherBottom id=12 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[12].updateParent(target);

 





        // writeWatcherBottom id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].updateParent(target);

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].addChild(watchers[3]);

 





    }
}

}
