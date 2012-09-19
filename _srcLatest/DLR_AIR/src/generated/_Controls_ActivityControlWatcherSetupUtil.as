






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
public class _Controls_ActivityControlWatcherSetupUtil extends Sprite
    implements mx.binding.IWatcherSetupUtil
{
    public function _Controls_ActivityControlWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import Controls.ActivityControl;
        (Controls.ActivityControl).watcherSetupUtil = new _Controls_ActivityControlWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import mx.core.DeferredInstanceFromFunction;
        import mx.core.UIComponent;
        import Controls.PromptControls.Open_endedWritingPromptControl;
        import mx.core.Application;
        import mx.binding.utils.BindingUtils;
        import Model.Prompts.DrawingArea;
        import mx.core.ClassFactory;
        import mx.effects.Sequence;
        import Model.Prompts.CloseSentence;
        import Model.Prompts.FixCapitals;
        import Model.Prompts.SortingGraphics;
        import Model.Events.ActivityDirectionsEvent;
        import mx.states.Transition;
        import mx.core.IPropertyChangeNotifier;
        import Controls.PromptControls.YesOrNoControl;
        import Controls.PromptControls.CloseSentenceControl;
        import mx.events.ResizeEvent;
        import mx.containers.Canvas;
        import mx.managers.CursorManager;
        import mx.effects.Parallel;
        import flash.events.MouseEvent;
        import Controls.PromptControls.SortingControl;
        import mx.containers.Box;
        import mx.effects.Blur;
        import mx.events.EffectEvent;
        import mx.events.FlexEvent;
        import Controls.PromptControls.SentenceEvaluationControl;
        import mx.core.UIComponentDescriptor;
        import Model.Prompts.ActivityDirections;
        import mx.containers.VBox;
        import flash.events.Event;
        import Controls.PromptControls.DrawingAreaControl;
        import Model.Prompts.Open_endedWritingPrompt;
        import mx.core.DeferredInstanceFromClass;
        import mx.states.State;
        import mx.binding.BindingManager;
        import Model.Prompts.Prompt;
        import flash.events.EventDispatcher;
        import mx.effects.Iris;
        import mx.effects.Resize;
        import Model.Activity;
        import Model.Prompts.MultipleChoice;
        import mx.states.AddChild;
        import mx.core.IDeferredInstance;
        import Model.Prompts.ActivityMatching;
        import mx.effects.easing.Bounce;
        import mx.core.mx_internal;
        import __AS3__.vec.Vector;
        import Model.Prompts.Matching;
        import Controls.PromptControls.PromptControl;
        import Controls.PromptControls.FixCapitalsControl;
        import Controls.PromptControls.MultipleChoiceControl;
        import mx.utils.ObjectProxy;
        import Model.Events.ActivityControlEvent;
        import mx.controls.Button;
        import mx.utils.UIDUtil;
        import Model.Prompts.SentenceEvaluation;
        import Model.EmbededData;
        import Controls.PromptControls.ActivityMatchingControl;
        import mx.binding.IBindingClient;
        import Controls.PromptControls.SortingGraphicsControl;
        import Model.Prompts.Sorting;
        import Controls.PromptControls.ActivityDirectionsControl;
        import Model.Prompts.YesOrNo;
        import mx.events.PropertyChangeEvent;
        import mx.events.ChildExistenceChangedEvent;
        import Controls.Windows.AlertWindow;
        import mx.core.IFactory;
        import Model.StateTypes;
        import flash.events.IEventDispatcher;
        import Controls.PromptControls.MatchingControl;

        // writeWatcher id=2 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=7 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.PropertyWatcher("canvBtnContinue",
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

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("canvBtnBack",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=3 size=1
        [
        bindings[5]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[4] = new mx.binding.PropertyWatcher("btnContinue",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=4 size=2
        [
        bindings[9],
        bindings[6]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[5] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=5 size=2
        [
        bindings[9],
        bindings[6]
        ]
,
                                                                 null
);

        // writeWatcher id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[6] = new mx.binding.PropertyWatcher("canButtons",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=6 size=2
        [
        bindings[10],
        bindings[7]
        ]
,
                                                                 propertyGetter
);


        // writeWatcherBottom id=2 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=7 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].updateParent(target);

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].updateParent(target);

 





        // writeWatcherBottom id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[4].updateParent(target);

 





        // writeWatcherBottom id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[4].addChild(watchers[5]);

 





        // writeWatcherBottom id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[6].updateParent(target);

 





    }
}

}
