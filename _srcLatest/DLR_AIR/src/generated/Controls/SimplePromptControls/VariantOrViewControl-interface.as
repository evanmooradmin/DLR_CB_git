
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
import mx.containers.VBox;
import mx.controls.Image;
import mx.controls.Text;
import mx.controls.TextInput;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.effects.Parallel;
import mx.effects.Resize;
import mx.styles.*;
import mx.states.RemoveChild;
import mx.effects.Sequence;
import mx.states.Transition;
import mx.effects.Blur;
import mx.states.AddChild;
import mx.states.State;
import Controls.FlowBox.FlowBox;
import mx.containers.Canvas;

public class VariantOrViewControl extends mx.containers.Canvas
 implements Interfaces.IDirectionPrompt , Interfaces.IFontStyle , Interfaces.IResult {
	public function VariantOrViewControl() {}

	[Bindable]
	public var showPromptEffect : mx.effects.Parallel;
	[Bindable]
	public var showResizeEffect : mx.effects.Resize;
	[Bindable]
	public var descriptionHeader : mx.controls.Text;
	[Bindable]
	public var vbContainer : mx.containers.VBox;
	[Bindable]
	public var textArea : mx.controls.TextInput;
	[Bindable]
	public var VboxIncorrectConteiner : mx.containers.VBox;
	[Bindable]
	public var HboxIncorrectConteiner : Controls.FlowBox.FlowBox;
	[Bindable]
	public var imgIncorrect : mx.controls.Image;
	[Bindable]
	public var descriptionHeaderIncorrect : mx.controls.Text;
	[Bindable]
	public var lbIncorrect : mx.controls.Text;
	[Bindable]
	public var HboxCorrectConteiner : Controls.FlowBox.FlowBox;
	[Bindable]
	public var imgCorrect : mx.controls.Image;
	[Bindable]
	public var descriptionHeaderCorrect : mx.controls.Text;
	[Bindable]
	public var lbCorrect : mx.controls.Text;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "P:/Active/EvanMoorEducationalPublishers/_svnPublic/DLR/_srcLatest/DLR_AIR/src/Controls/SimplePromptControls/VariantOrViewControl.mxml:5,203";

}}
