
package Controls.SimplePromptControls
{
import Controls.Enviroment.TextExended;
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
import mx.controls.RadioButton;
import mx.controls.Text;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.styles.*;
import mx.states.RemoveChild;
import mx.containers.HBox;
import mx.states.AddChild;
import mx.states.SetStyle;
import mx.states.State;
import mx.containers.Canvas;


    [Event(name = "creationComplete", type = "flash.events.FlexEvent")]
  
public class MultipleViewRadioButton extends mx.containers.Canvas
 implements Interfaces.IDirectionAnswer , Interfaces.IFontStyle , Interfaces.IResult {
	public function MultipleViewRadioButton() {}

	[Bindable]
	public var imgCorrect : mx.controls.Image;
	[Bindable]
	public var lbCorrect : mx.controls.Text;
	[Bindable]
	public var visibleAnswer : mx.controls.Text;
	[Bindable]
	public var imgIncorrect : mx.controls.Image;
	[Bindable]
	public var lbIncorrect : mx.controls.Text;
	[Bindable]
	public var lbDefault : mx.controls.Text;
	[Bindable]
	public var hBox : mx.containers.HBox;
	[Bindable]
	public var rbVariant : mx.controls.RadioButton;
	[Bindable]
	public var txVariantText : Controls.Enviroment.TextExended;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "P:/Active/EvanMoorEducationalPublishers/_svnPublic/DLR/_srcLatest/DLR_AIR/src/Controls/SimplePromptControls/MultipleViewRadioButton.mxml:10,246";

}}
