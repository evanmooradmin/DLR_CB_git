
package Controls.SimplePromptControls
{
import Controls.FlowBox.FlowBox;
import Interfaces.IDirectionPrompt;
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
import mx.containers.VBox;
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
import mx.containers.HBox;
import mx.states.RemoveChild;
import mx.states.AddChild;
import mx.states.State;
import mx.containers.Canvas;

public class CloseSentenceViewControl extends mx.containers.Canvas
 implements Interfaces.IDirectionPrompt , Interfaces.IFontStyle , Interfaces.IResult {
	public function CloseSentenceViewControl() {}

	[Bindable]
	public var hBoxIcorrect : mx.containers.HBox;
	[Bindable]
	public var imgIconIncorrect : mx.controls.Image;
	[Bindable]
	public var txtTextIncorrect : mx.controls.Text;
	[Bindable]
	public var imgIconCorrect : mx.controls.Image;
	[Bindable]
	public var txtTextCorrect : mx.controls.Text;
	[Bindable]
	public var vBox : mx.containers.VBox;
	[Bindable]
	public var flowBox : Controls.FlowBox.FlowBox;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "P:/Active/EvanMoorEducationalPublishers/_svnPublic/DLR/_srcLatest/DLR_AIR/src/Controls/SimplePromptControls/CloseSentenceViewControl.mxml:6,316";

}}
