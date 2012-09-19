
package Controls
{
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
import mx.containers.VBox;
import mx.controls.Button;
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
import mx.effects.Resize;
import mx.effects.Sequence;
import mx.states.Transition;
import mx.effects.Blur;
import mx.states.AddChild;
import mx.states.State;
import mx.containers.Canvas;


    [Event(name="action", type="Model.Events.ActivityControlEvent")]
  
public class ActivityControl extends mx.containers.Canvas
{
	public function ActivityControl() {}

	[Bindable]
	public var showPromptEffect : mx.effects.Parallel;
	[Bindable]
	public var showResizeEffect : mx.effects.Resize;
	[Bindable]
	public var btnContinue : mx.controls.Button;
	[Bindable]
	public var btnBack : mx.controls.Button;
	[Bindable]
	public var ScrollConteiner : mx.containers.VBox;
	[Bindable]
	public var vbPrompts : mx.containers.VBox;
	[Bindable]
	public var BoxConteiner : mx.containers.Box;
	[Bindable]
	public var canButtons : mx.containers.Canvas;
	[Bindable]
	public var canvBtnBack : mx.containers.Canvas;
	[Bindable]
	public var canvBtnContinue : mx.containers.Canvas;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "P:/Active/EvanMoorEducationalPublishers/_svnPublic/DLR/_srcLatest/DLR_AIR/src/Controls/ActivityControl.mxml:9,474";

}}
