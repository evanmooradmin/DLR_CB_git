
package Controls.SimplePromptControls
{
import Controls.DropAnswerControl;
import Controls.Enviroment.TextExended;
import Controls.FlowBox.FlowBox;
import Interfaces.IDirectionAnswer;
import Interfaces.IFontStyle;
import Interfaces.IResult;
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
import mx.containers.Canvas;
import mx.containers.HBox;
import mx.controls.Image;
import mx.controls.Text;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.styles.*;
import mx.states.AddChild;
import mx.states.State;
import mx.containers.Canvas;

public class MatchingAnswerViewControl extends mx.containers.Canvas
 implements Interfaces.IDirectionAnswer , Interfaces.IFontStyle , Interfaces.IResult {
	public function MatchingAnswerViewControl() {}

	[Bindable]
	public var hBox : Controls.FlowBox.FlowBox;
	[Bindable]
	public var textTo : Controls.Enviroment.TextExended;
	[Bindable]
	public var dropAnswer : Controls.DropAnswerControl;
	[Bindable]
	public var textAfter : Controls.Enviroment.TextExended;
	[Bindable]
	public var hBoxCorrect : Controls.FlowBox.FlowBox;
	[Bindable]
	public var imgCorrect : mx.controls.Image;
	[Bindable]
	public var textCorrect : mx.controls.Text;
	[Bindable]
	public var hBoxIncorrect : mx.containers.HBox;
	[Bindable]
	public var imgIncorrect : mx.controls.Image;
	[Bindable]
	public var textIncorrect : mx.controls.Text;
	[Bindable]
	public var mainHBox : mx.containers.HBox;
	[Bindable]
	public var img : mx.controls.Image;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "P:/Active/EvanMoorEducationalPublishers/_svnPublic/DLR/_srcLatest/DLR_AIR/src/Controls/SimplePromptControls/MatchingAnswerViewControl.mxml:7,207";

}}
