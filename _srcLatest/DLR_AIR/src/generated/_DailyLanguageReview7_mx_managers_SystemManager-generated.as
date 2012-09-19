package
{

import flash.text.Font;
import flash.text.TextFormat;
import flash.system.ApplicationDomain;
import flash.utils.getDefinitionByName;
import mx.core.IFlexModule;
import mx.core.IFlexModuleFactory;
import mx.core.EmbeddedFontRegistry;

import mx.managers.SystemManager;

public class _DailyLanguageReview7_mx_managers_SystemManager
    extends mx.managers.SystemManager
    implements IFlexModuleFactory
{
    public function _DailyLanguageReview7_mx_managers_SystemManager()
    {

        super();
    }

    override     public function create(... params):Object
    {
        if (params.length > 0 && !(params[0] is String))
            return super.create.apply(this, params);

        var mainClassName:String = params.length == 0 ? "DailyLanguageReview7" : String(params[0]);
        var mainClass:Class = Class(getDefinitionByName(mainClassName));
        if (!mainClass)
            return null;

        var instance:Object = new mainClass();
        if (instance is IFlexModule)
            (IFlexModule(instance)).moduleFactory = this;
        if (params.length == 0)
            EmbeddedFontRegistry.registerFonts(info()["fonts"], this);
        return instance;
    }

    override    public function info():Object
    {
        return {
            close: "CloseHandler(event)",
            compiledLocales: [ "en_US" ],
            compiledResourceBundleNames: [ "collections", "containers", "controls", "core", "effects", "logging", "messaging", "rpc", "skins", "states", "styles", "utils" ],
            creationComplete: "CreationCompleteHandler(event)",
            currentDomain: ApplicationDomain.currentDomain,
            currentState: "{state_main}",
            fonts:       {
"EMComic" : {regular:true, bold:true, italic:true, boldItalic:true}
,
"Futura" : {regular:true, bold:true, italic:true, boldItalic:true}
}
,
            horizontalScrollPolicy: "off",
            initialize: "Initialize(event)",
            layout: "absolute",
            mainClassName: "DailyLanguageReview7",
            mixins: [ "_DailyLanguageReview7_FlexInit", "_alertButtonStyleStyle", "_ScrollBarStyle", "_MenuStyle", "_winMaxButtonStyle", "_PrintDataGridStyle", "_ToolTipStyle", "_ComboBoxStyle", "_winCloseButtonStyle", "_macCloseButtonStyle", "_comboDropdownStyle", "_CheckBoxStyle", "_gripperSkinStyle", "_ListBaseStyle", "_winRestoreButtonStyle", "_globalStyle", "_PanelStyle", "_windowStylesStyle", "_MenuBarStyle", "_activeButtonStyleStyle", "_ApplicationControlBarStyle", "_errorTipStyle", "_CursorManagerStyle", "_dateFieldPopupStyle", "_dataGridStylesStyle", "_LinkButtonStyle", "_AlertStyle", "_RadioButtonStyle", "_VRuleStyle", "_DataGridItemRendererStyle", "_macMinButtonStyle", "_ControlBarStyle", "_activeTabStyleStyle", "_textAreaHScrollBarStyleStyle", "_DragManagerStyle", "_statusTextStyleStyle", "_TextAreaStyle", "_WindowedApplicationStyle", "_HTMLStyle", "_textAreaVScrollBarStyleStyle", "_ContainerStyle", "_linkButtonStyleStyle", "_windowStatusStyle", "_WindowStyle", "_AccordionHeaderStyle", "_richTextEditorTextAreaStyleStyle", "_todayStyleStyle", "_TextInputStyle", "_plainStyle", "_winMinButtonStyle", "_AccordionStyle", "_macMaxButtonStyle", "_ApplicationStyle", "_SWFLoaderStyle", "_headerDateTextStyle", "_ButtonStyle", "_DataGridStyle", "_popUpMenuStyle", "_titleTextStyleStyle", "_swatchPanelTextFieldStyle", "_opaquePanelStyle", "_weekDayStyleStyle", "_headerDragProxyStyleStyle", "_DailyLanguageReview7WatcherSetupUtil", "_Controls_Windows_PdfWindowWatcherSetupUtil", "_Controls_Windows_AboutWindowWatcherSetupUtil", "_Controls_Printing_FormPrintViewWatcherSetupUtil", "_Controls_ActivityControlWatcherSetupUtil", "_Controls_NavigationBarWatcherSetupUtil", "_Controls_Printing_FormPrintFooterWatcherSetupUtil", "_Controls_Printing_FormPrintHeaderWatcherSetupUtil", "_Controls_ItemRenderers_ComboBox_ColorPickerWatcherSetupUtil", "_Controls_SimplePromptControls_SentenceEvaluationViewControlWatcherSetupUtil", "_Controls_SimplePromptControls_CloseSentenceViewControlWatcherSetupUtil", "_Controls_SimplePromptControls_RewriteSentencesViewControlWatcherSetupUtil", "_Controls_SimplePromptControls_Open_endedWritingPrompt_Open_endedWritingPromptSimpleWatcherSetupUtil", "_Controls_SimplePromptControls_Open_endedWritingPrompt_Open_endedWritingPromptAdvancedWatcherSetupUtil", "_Controls_SimplePromptControls_FillInTheBlanks_FillInTheBlanksPromptViewControlWatcherSetupUtil", "_Controls_SimplePromptControls_VariantOrViewControlWatcherSetupUtil", "_Controls_SimplePromptControls_DrawingAreaViewControlWatcherSetupUtil", "_Controls_SimplePromptControls_FixCapitalsViewControlAdvancedWatcherSetupUtil", "_Controls_SimplePromptControls_AnswerWillVaryViewControlWatcherSetupUtil", "_Controls_DropAnswerControlWatcherSetupUtil", "_Controls_SimplePromptControls_MatchingAnswerViewControlWatcherSetupUtil", "_Controls_SimplePromptControls_MultipleViewRadioButtonWatcherSetupUtil", "_Controls_SimplePromptControls_MultipleViewCheckBoxWatcherSetupUtil", "_Controls_SimplePromptControls_SortingImageAnswerViewControlAdvancedWatcherSetupUtil", "_Controls_SimplePromptControls_SortingImageAnswerViewControlWatcherSetupUtil", "_Controls_SimplePromptControls_SortingAnswerViewControlWatcherSetupUtil", "_Controls_SimplePromptControls_FixCapitalsViewControlWatcherSetupUtil", "_Controls_SimplePromptControls_FillInTheBlanks_FillInTheBlanksAnswerViewControlWatcherSetupUtil" ],
            verticalScrollPolicy: "off"
        }
    }
}

}
