
package Controls.SimplePromptControls
{
import Controls.Enviroment.TextExended;
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
import mx.containers.HBox;
import mx.controls.Button;
import mx.controls.Label;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.effects.Fade;
import mx.effects.Parallel;
import mx.styles.*;
import mx.containers.HBox;

public class AnswerWillVaryViewControl extends mx.containers.HBox
{
	public function AnswerWillVaryViewControl() {}

	[Bindable]
	public var ParallelEffectShow : mx.effects.Parallel;
	[Bindable]
	public var moveEffectShow : mx.effects.Fade;
	[Bindable]
	public var ParallelEffectHide : mx.effects.Parallel;
	[Bindable]
	public var fadeEffectHide : mx.effects.Fade;
	[Bindable]
	public var hBoxContainer : mx.containers.HBox;
	[Bindable]
	public var hbox : mx.containers.HBox;
	[Bindable]
	public var lbHeaderText : mx.controls.Label;
	[Bindable]
	public var txtContent : Controls.Enviroment.TextExended;
	[Bindable]
	public var btnShow : mx.controls.Button;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "P:/Active/EvanMoorEducationalPublishers/_svnPublic/DLR/_srcLatest/DLR_AIR/src/Controls/SimplePromptControls/AnswerWillVaryViewControl.mxml:6,104";

}}
