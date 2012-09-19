
package Controls
{
import Interfaces.IDirection;
import Interfaces.IDragAndDrop;
import Interfaces.IFontStyle;
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
import mx.containers.Box;
import mx.containers.Canvas;
import mx.controls.Image;
import mx.controls.Label;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.effects.Sequence;
import mx.styles.*;
import mx.states.SetProperty;
import mx.effects.Glow;
import mx.states.AddChild;
import mx.states.State;
import mx.containers.Canvas;

public class DropAnswerControl extends mx.containers.Canvas
 implements Interfaces.IDirection , Interfaces.IDragAndDrop , Interfaces.IFontStyle {
	public function DropAnswerControl() {}

	[Bindable]
	public var glow : mx.effects.Sequence;
	[Bindable]
	public var imgBackground : mx.controls.Image;
	[Bindable]
	public var lb : mx.controls.Label;
	[Bindable]
	public var boxAnswer : mx.containers.Box;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "P:/Active/EvanMoorEducationalPublishers/_svnPublic/DLR/_srcLatest/DLR_AIR/src/Controls/DropAnswerControl.mxml:8,231";

}}
