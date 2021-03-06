
package Controls.Printing
{
import Controls.Printing.FormPrintFooter;
import Controls.Printing.FormPrintHeader;
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
import mx.containers.VBox;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.printing.PrintDataGrid;
import mx.styles.*;
import mx.containers.VBox;
import mx.controls.dataGridClasses.DataGridColumn;
import mx.controls.Label;

public class FormPrintView extends mx.containers.VBox
{
	public function FormPrintView() {}

	[Bindable]
	public var header : Controls.Printing.FormPrintHeader;
	[Bindable]
	public var myDataGrid : mx.printing.PrintDataGrid;
	[Bindable]
	public var footer : Controls.Printing.FormPrintFooter;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "P:/Active/EvanMoorEducationalPublishers/_svnPublic/DLR/_srcLatest/DLR_AIR/src/Controls/Printing/FormPrintView.mxml:5,33";

}}
