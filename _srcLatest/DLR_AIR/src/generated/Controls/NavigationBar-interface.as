
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
import mx.containers.Canvas;
import mx.controls.Button;
import mx.controls.ComboBox;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.styles.*;
import mx.controls.Image;
import mx.controls.VRule;
import mx.controls.Label;
import mx.containers.Canvas;

public class NavigationBar extends mx.containers.Canvas
{
	public function NavigationBar() {}

	[Bindable]
	public var cmbWeek : mx.controls.ComboBox;
	[Bindable]
	public var cmbFontName : mx.controls.ComboBox;
	[Bindable]
	public var cmbFontSize : mx.controls.ComboBox;
	[Bindable]
	public var cmbLesson : mx.controls.ComboBox;
	[Bindable]
	public var btnChangeLesson : mx.controls.Button;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "P:/Active/EvanMoorEducationalPublishers/_svnPublic/DLR/_srcLatest/DLR_AIR/src/Controls/NavigationBar.mxml:6,179";

}}
