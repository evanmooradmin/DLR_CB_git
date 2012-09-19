
package Controls.Windows
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
import mx.containers.Canvas;
import mx.controls.Button;
import mx.controls.HTML;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.effects.Fade;
import mx.styles.*;
import mx.containers.VBox;
import mx.containers.Canvas;

public class PdfWindow extends mx.containers.Canvas
{
	public function PdfWindow() {}

	[Bindable]
	public var fadeShowPdfWindow : mx.effects.Fade;
	[Bindable]
	public var fadeHidePdfWindow : mx.effects.Fade;
	[Bindable]
	public var btnClose : mx.controls.Button;
	[Bindable]
	public var myWin : mx.controls.HTML;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "P:/Active/EvanMoorEducationalPublishers/_svnPublic/DLR/_srcLatest/DLR_AIR/src/Controls/Windows/PdfWindow.mxml:10,119";

}}
