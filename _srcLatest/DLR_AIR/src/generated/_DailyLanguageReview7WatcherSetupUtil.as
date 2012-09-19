






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
public class _DailyLanguageReview7WatcherSetupUtil extends Sprite
    implements mx.binding.IWatcherSetupUtil
{
    public function _DailyLanguageReview7WatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import DailyLanguageReview7;
        (DailyLanguageReview7).watcherSetupUtil = new _DailyLanguageReview7WatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import mx.core.DeferredInstanceFromFunction;
        import Controls.Windows.YNWindow;
        import Controls.QuizControl;
        import mx.core.UIComponent;
        import Model.Emc;
        import generated.GetFileResultEvent;
        import mx.core.Application;
        import mx.core.ClassFactory;
        import mx.effects.Sequence;
        import mx.states.Transition;
        import mx.controls.Text;
        import mx.core.IPropertyChangeNotifier;
        import Controls.Printing.FormPrintView;
        import mx.controls.Label;
        import mx.containers.Canvas;
        import mx.managers.CursorManager;
        import Model.Preferences;
        import mx.controls.MenuBar;
        import mx.controls.Alert;
        import flash.events.MouseEvent;
        import mx.events.MenuEvent;
        import mx.controls.DataGrid;
        import mx.containers.accordionClasses.AccordionHeader;
        import mx.containers.Box;
        import Controls.Windows.WaitWindow;
        import mx.events.FlexEvent;
        import mx.core.UIComponentDescriptor;
        import mx.containers.VBox;
        import flash.events.Event;
        import mx.core.DeferredInstanceFromClass;
        import mx.states.State;
        import mx.binding.BindingManager;
        import mx.rpc.events.FaultEvent;
        import generated.ArrayOfString;
        import Model.Prompts.Prompt;
        import flash.events.EventDispatcher;
        import Model.Security.LocalStore;
        import mx.effects.Resize;
        import mx.containers.Accordion;
        import Controls.Windows.LicenceWindow;
        import mx.controls.dataGridClasses.DataGridColumn;
        import Model.Security.EmcMapAndVersion;
        import Model.Activity;
        import mx.controls.LinkButton;
        import mx.states.AddChild;
        import mx.formatters.DateBase;
        import mx.core.IDeferredInstance;
        import flash.net.navigateToURL;
        import Model.Unit;
        import mx.core.mx_internal;
        import __AS3__.vec.Vector;
        import Model.Prompts.Matching;
        import generated.WebService;
        import mx.effects.Fade;
        import mx.printing.FlexPrintJob;
        import mx.controls.Menu;
        import mx.utils.ObjectProxy;
        import Model.Events.ActivityControlEvent;
        import mx.controls.Button;
        import mx.utils.UIDUtil;
        import Controls.ItemRenderers.LessonHistoryLinkButton;
        import Model.EmbededData;
        import mx.events.ListEvent;
        import Model.ScreenSize;
        import mx.binding.IBindingClient;
        import Controls.Windows.PdfWindow;
        import mx.controls.ComboBox;
        import Controls.Windows.PreferencesWindow;
        import mx.core.WindowedApplication;
        import generated.UpdateCheckResultEvent;
        import generated.ResetDownloadResultEvent;
        import mx.rpc.AsyncToken;
        import mx.collections.ArrayCollection;
        import Model.Security.Licence;
        import mx.events.PropertyChangeEvent;
        import mx.controls.Image;
        import Model.Version;
        import Model.Section;
        import Controls.Windows.AlertWindow;
        import mx.core.IFactory;
        import Controls.Windows.AboutWindow;
        import Controls.Windows.LinkWindow;
        import flash.events.IEventDispatcher;

        // writeWatcher id=10 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[10] = new mx.binding.PropertyWatcher("aboutMainText",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=10 size=1
        [
        bindings[19]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[5] = new mx.binding.PropertyWatcher("_numberBkg",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=5 size=1
        [
        bindings[11]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[6] = new mx.binding.PropertyWatcher("iconBeginLesson",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=6 size=1
        [
        bindings[15]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=9 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[9] = new mx.binding.PropertyWatcher("iconAbout",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=9 size=1
        [
        bindings[18]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[4] = new mx.binding.PropertyWatcher("mainCanvasHolder",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=4 size=5
        [
        bindings[20],
        bindings[14],
        bindings[10],
        bindings[12],
        bindings[22]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=1 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("boxFullScreenHolder",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=3 size=1
        [
        bindings[9]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[2] = new mx.binding.PropertyWatcher("quizControl",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=2 size=2
        [
        bindings[6],
        bindings[3]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[8] = new mx.binding.PropertyWatcher("lessonHistoryDataProvider",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=8 size=1
        [
        bindings[17]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[7] = new mx.binding.PropertyWatcher("iconLessonHistory",
            {
                propertyChange: true
            }
,         // writeWatcherListeners id=7 size=1
        [
        bindings[16]
        ]
,
                                                                 propertyGetter
);


        // writeWatcherBottom id=10 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[10].updateParent(target);

 





        // writeWatcherBottom id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].updateParent(target);

 





        // writeWatcherBottom id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[6].updateParent(target);

 





        // writeWatcherBottom id=9 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[9].updateParent(target);

 





        // writeWatcherBottom id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[4].updateParent(target);

 





        // writeWatcherBottom id=1 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].updateParent(target);

 





        // writeWatcherBottom id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].updateParent(target);

 





        // writeWatcherBottom id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[8].updateParent(target);

 





        // writeWatcherBottom id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[7].updateParent(target);

 





    }
}

}
