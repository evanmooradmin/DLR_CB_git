






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
public class _Controls_SimplePromptControls_Open_endedWritingPrompt_Open_endedWritingPromptAdvancedWatcherSetupUtil extends Sprite
    implements mx.binding.IWatcherSetupUtil
{
    public function _Controls_SimplePromptControls_Open_endedWritingPrompt_Open_endedWritingPromptAdvancedWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import Controls.SimplePromptControls.Open_endedWritingPrompt.Open_endedWritingPromptAdvanced;
        (Controls.SimplePromptControls.Open_endedWritingPrompt.Open_endedWritingPromptAdvanced).watcherSetupUtil = new _Controls_SimplePromptControls_Open_endedWritingPrompt_Open_endedWritingPromptAdvancedWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import mx.core.DeferredInstanceFromFunction;
        import flash.events.EventDispatcher;
        import Controls.QuizControl;
        import mx.core.UIComponent;
        import Model.Answers.Answer;
        import Interfaces.IFontStyle;
        import Controls.Enviroment.TextExended;
        import mx.managers.PopUpManager;
        import mx.states.AddChild;
        import mx.core.IDeferredInstance;
        import Model.EnumRegExp;
        import mx.core.ClassFactory;
        import Model.Answers.VariantORAnswer;
        import Interfaces.IDirectionPrompt;
        import mx.core.mx_internal;
        import __AS3__.vec.Vector;
        import Model.Events.AnswerWillVaryViewControlEvent;
        import mx.controls.TextInput;
        import mx.controls.Text;
        import mx.core.IPropertyChangeNotifier;
        import mx.utils.ObjectProxy;
        import mx.controls.Label;
        import mx.events.ResizeEvent;
        import mx.containers.Canvas;
        import Controls.FlowBox.FlowBox;
        import mx.controls.Button;
        import mx.utils.UIDUtil;
        import Controls.ActivityControl;
        import flash.events.MouseEvent;
        import Model.EmbededData;
        import Model.FactoryRegExp;
        import mx.binding.IBindingClient;
        import mx.events.FlexEvent;
        import Controls.SelectableLabel;
        import mx.core.UIComponentDescriptor;
        import mx.events.PropertyChangeEvent;
        import Controls.Windows.AlertWindow;
        import Controls.SimplePromptControls.AnswerWillVaryViewControl;
        import flash.events.Event;
        import mx.core.IFactory;
        import Model.Prompts.Open_endedWritingPrompt;
        import mx.core.DeferredInstanceFromClass;
        import mx.states.State;
        import Interfaces.IResult;
        import mx.binding.BindingManager;
        import flash.events.IEventDispatcher;
        import Model.Prompts.Prompt;

        // writeWatcher id=1 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("width",
            {
                widthChanged: true
            }
,         // writeWatcherListeners id=3 size=1
        [
        bindings[7]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=2 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=4 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true


        // writeWatcherBottom id=1 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].updateParent(target);

 





        // writeWatcherBottom id=2 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=4 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





    }
}

}
