
package Controls.SimplePromptControls
{
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
import mx.controls.Button;
import mx.controls.Text;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.states.State;
import mx.styles.*;
import mx.states.RemoveChild;
import mx.states.SetProperty;
import mx.containers.VBox;
import mx.states.AddChild;
import mx.states.SetStyle;
import mx.states.State;
import mx.containers.Canvas;

public class DrawingAreaViewControl extends mx.containers.Canvas
 implements Interfaces.IDirectionPrompt , Interfaces.IFontStyle , Interfaces.IResult {
	public function DrawingAreaViewControl() {}

	[Bindable]
	public var stateDrawing : mx.states.State;
	[Bindable]
	public var canvDrawing : mx.containers.Canvas;
	[Bindable]
	public var canvNoDrawing : mx.containers.Canvas;
	[Bindable]
	public var txtTitle : mx.controls.Text;
	[Bindable]
	public var canvContainer : mx.containers.Canvas;
	[Bindable]
	public var canvDrawingHolder : mx.containers.Canvas;
	[Bindable]
	public var canvTitle : mx.containers.Canvas;
	[Bindable]
	public var btnClear : mx.controls.Button;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "P:/Active/EvanMoorEducationalPublishers/_svnPublic/DLR/_srcLatest/DLR_AIR/src/Controls/SimplePromptControls/DrawingAreaViewControl.mxml:5,194";

}}
