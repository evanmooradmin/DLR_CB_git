
package 
{
import Controls.QuizControl;
import flash.accessibility.*;
import flash.data.*;
import flash.debugger.*;
import flash.desktop.*;
import flash.display.*;
import flash.errors.*;
import flash.events.*;
import flash.external.*;
import flash.filesystem.*;
import flash.filters.*;
import flash.geom.*;
import flash.html.*;
import flash.html.script.*;
import flash.media.*;
import flash.net.*;
import flash.printing.*;
import flash.profiler.*;
import flash.system.*;
import flash.text.*;
import flash.ui.*;
import flash.utils.*;
import flash.xml.*;
import mx.binding.*;
import mx.containers.Accordion;
import mx.containers.Box;
import mx.containers.Canvas;
import mx.containers.VBox;
import mx.controls.Button;
import mx.controls.ComboBox;
import mx.controls.DataGrid;
import mx.controls.MenuBar;
import mx.controls.Text;
import mx.controls.dataGridClasses.DataGridColumn;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.WindowedApplication;
import mx.core.mx_internal;
import mx.effects.Resize;
import mx.effects.Sequence;
import mx.styles.*;
import mx.core.WindowedApplication;
import mx.controls.dataGridClasses.DataGridColumn;
import mx.controls.Image;
import mx.effects.Fade;
import mx.states.Transition;
import mx.controls.LinkButton;
import XMLList;
import mx.states.AddChild;
import mx.states.State;
import mx.controls.Label;
import mx.containers.Canvas;

public class DailyLanguageReview1 extends mx.core.WindowedApplication
{
	public function DailyLanguageReview1() {}

	[Bindable]
	public var centerAndResizeApplication : mx.effects.Sequence;
	[Bindable]
	public var resizeApplication : mx.effects.Resize;
	[Bindable]
	public var boxFullScreenHolder : mx.containers.Box;
	[Bindable]
	public var mainCanvasHolder : mx.containers.Canvas;
	[Bindable]
	public var MainMenuBar : mx.controls.MenuBar;
	[Bindable]
	public var accordion : mx.containers.Accordion;
	[Bindable]
	public var boxBeginLesson : mx.containers.VBox;
	[Bindable]
	public var comboBoxWeek : mx.controls.ComboBox;
	[Bindable]
	public var comboBoxDay : mx.controls.ComboBox;
	[Bindable]
	public var btnBegin : mx.controls.Button;
	[Bindable]
	public var boxLessonHistory : mx.containers.VBox;
	[Bindable]
	public var dgLessonHistory : mx.controls.DataGrid;
	[Bindable]
	public var lnkBtnBegin : mx.controls.dataGridClasses.DataGridColumn;
	[Bindable]
	public var btnClearHistory : mx.controls.Button;
	[Bindable]
	public var btnPrint : mx.controls.Button;
	[Bindable]
	public var boxAbout : mx.containers.VBox;
	[Bindable]
	public var AboutMainText : mx.controls.Text;
	[Bindable]
	public var btnQuit : mx.controls.Button;
	[Bindable]
	public var quizControl : Controls.QuizControl;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "P:/Active/EvanMoorEducationalPublishers/_svnPublic/DLR/_srcLatest/DLR_AIR/src/DailyLanguageReview1.mxml:10,732";

}}
