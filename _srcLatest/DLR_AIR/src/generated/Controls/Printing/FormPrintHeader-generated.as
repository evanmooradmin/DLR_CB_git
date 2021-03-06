
/**
 * 	Generated by mxmlc 2.0
 *
 *	Package:	Controls.Printing
 *	Class: 		FormPrintHeader
 *	Source: 	P:\Active\EvanMoorEducationalPublishers\_svnPublic\DLR\_srcLatest\DLR_AIR\src\Controls\Printing\FormPrintHeader.mxml
 *	Template: 	flex2/compiler/mxml/gen/ClassDef.vm
 *	Time: 		2010.07.27 18:32:04 EEST
 */

package Controls.Printing
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
import mx.binding.IBindingClient;
import mx.containers.VBox;
import mx.controls.Label;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.UIComponentDescriptor;
import mx.core.mx_internal;
import mx.styles.*;



//	begin class def

public class FormPrintHeader
	extends mx.containers.VBox
	implements mx.binding.IBindingClient
{

	//	instance variables
/**
 * @private
 **/
	public var _FormPrintHeader_Label1 : mx.controls.Label;


	//	type-import dummies


	//	Container document descriptor
private var _documentDescriptor_ : mx.core.UIComponentDescriptor = 
new mx.core.UIComponentDescriptor({
  type: mx.containers.VBox
  ,
  propertiesFactory: function():Object { return {
    childDescriptors: [
      new mx.core.UIComponentDescriptor({
        type: mx.controls.Label
        ,
        id: "_FormPrintHeader_Label1"
        ,
        stylesFactory: function():void {
          this.fontWeight = "bold";
          this.fontSize = 25;
        }
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.controls.Label
        ,
        stylesFactory: function():void {
          this.fontWeight = "bold";
          this.fontSize = 25;
        }
        ,
        propertiesFactory: function():Object { return {
          text: "Lesson History"
        }}
      })
    ]
  }}
})

	//	constructor (Flex display object)
    /**
     * @private
     **/
	public function FormPrintHeader()
	{
		super();

		mx_internal::_document = this;

		//	our style settings
		//	initialize component styles
		if (!this.styleDeclaration)
		{
			this.styleDeclaration = new CSSStyleDeclaration();
		}

		this.styleDeclaration.defaultFactory = function():void
		{
			this.horizontalAlign = "center";
		};



		//	properties

		//	events

	}

	//	initialize()
    /**
     * @private
     **/
	override public function initialize():void
	{
 		mx_internal::setDocumentDescriptor(_documentDescriptor_);

		var bindings:Array = _FormPrintHeader_bindingsSetup();
		var watchers:Array = [];

		var target:FormPrintHeader = this;

		if (_watcherSetupUtil == null)
		{
			var watcherSetupUtilClass:Object = getDefinitionByName("_Controls_Printing_FormPrintHeaderWatcherSetupUtil");
			watcherSetupUtilClass["init"](null);
		}

		_watcherSetupUtil.setup(this,
					function(propertyName:String):* { return target[propertyName]; },
					bindings,
					watchers);

		for (var i:uint = 0; i < bindings.length; i++)
		{
			Binding(bindings[i]).execute();
		}

		mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
		mx_internal::_watchers = mx_internal::_watchers.concat(watchers);


		super.initialize();
	}

	//	scripts
	//	<Script>, line 4 - 9

      import mx.core.Application;
    
      [Bindable]
      public var gradeNumber:int = 2;
    

	//	end scripts


    //	supporting function definitions for properties, events, styles, effects

	//	binding mgmt
    private function _FormPrintHeader_bindingsSetup():Array
    {
        var result:Array = [];
        var binding:Binding;

        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (Application.application.Title);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                _FormPrintHeader_Label1.text = _sourceFunctionReturnValue;
            },
            "_FormPrintHeader_Label1.text");
        result[0] = binding;

        return result;
    }

    private function _FormPrintHeader_bindingExprs():void
    {
        var destination:*;
		[Binding(id='0')]
		destination = (Application.application.Title);
    }

    /**
     * @private
     **/
    public static function set watcherSetupUtil(watcherSetupUtil:IWatcherSetupUtil):void
    {
        (FormPrintHeader)._watcherSetupUtil = watcherSetupUtil;
    }

    private static var _watcherSetupUtil:IWatcherSetupUtil;



	//	embed carrier vars
	//	end embed carrier vars

	//	binding management vars
    /**
     * @private
     **/
    mx_internal var _bindings : Array = [];
    /**
     * @private
     **/
    mx_internal var _watchers : Array = [];
    /**
     * @private
     **/
    mx_internal var _bindingsByDestination : Object = {};
    /**
     * @private
     **/
    mx_internal var _bindingsBeginWithWord : Object = {};

//	end class def
}

//	end package def
}
