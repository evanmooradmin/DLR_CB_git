
package Controls.SimplePromptControls.Open_endedWritingPrompt
{
import Controls.Enviroment.TextExended;
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
import mx.controls.Button;
import mx.controls.Text;
import mx.controls.TextArea;
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
import mx.effects.Sequence;
import mx.states.Transition;
import mx.effects.Blur;
import mx.states.AddChild;
import mx.states.State;
import mx.containers.Canvas;

public class Open_endedWritingPromptSimple extends mx.containers.Canvas
 implements Interfaces.IDirectionPrompt , Interfaces.IFontStyle , Interfaces.IResult {
	public function Open_endedWritingPromptSimple() {}

	[Bindable]
	public var showPromptEffect : mx.effects.Parallel;
	[Bindable]
	public var showResizeEffect : mx.effects.Resize;
	[Bindable]
	public var txtArea : mx.controls.TextArea;
	[Bindable]
	public var txtFull : mx.controls.Text;
	[Bindable]
	public var btnShow : mx.controls.Button;
	[Bindable]
	public var vBox : mx.containers.VBox;
	[Bindable]
	public var txtHeader : Controls.Enviroment.TextExended;
	[Bindable]
	public var boxContent : mx.containers.HBox;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "P:/Active/EvanMoorEducationalPublishers/_svnPublic/DLR/_srcLatest/DLR_AIR/src/Controls/SimplePromptControls/Open_endedWritingPrompt/Open_endedWritingPromptSimple.mxml:7,266";

}}
