
/**
 * 	Generated by mxmlc 2.0
 *
 *	Package:	Controls.ItemRenderers
 *	Class: 		ComboBox_ColorPicker
 *	Source: 	P:\Active\EvanMoorEducationalPublishers\_svnPublic\DLR\_srcLatest\DLR_AIR\src\Controls\ItemRenderers\ComboBox_ColorPicker.mxml
 *	Template: 	flex2/compiler/mxml/gen/ClassDef.vm
 *	Time: 		2010.07.27 18:32:02 EEST
 */

package Controls.ItemRenderers
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
import mx.containers.HBox;
import mx.controls.Image;
import mx.controls.Label;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.UIComponentDescriptor;
import mx.core.mx_internal;
import mx.events.FlexEvent;
import mx.styles.*;



//	begin class def

public class ComboBox_ColorPicker
	extends mx.containers.HBox
	implements mx.binding.IBindingClient
{

	//	instance variables
/**
 * @private
 **/
	public var _ComboBox_ColorPicker_Label1 : mx.controls.Label;

	[Bindable]
/**
 * @private
 **/
	public var image : mx.controls.Image;


	//	type-import dummies


	//	Container document descriptor
private var _documentDescriptor_ : mx.core.UIComponentDescriptor = 
new mx.core.UIComponentDescriptor({
  type: mx.containers.HBox
  ,
  propertiesFactory: function():Object { return {
    width: 118,
    height: 26,
    childDescriptors: [
      new mx.core.UIComponentDescriptor({
        type: mx.controls.Image
        ,
        id: "image"
        ,
        propertiesFactory: function():Object { return {
          height: 23,
          width: 23
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.controls.Label
        ,
        id: "_ComboBox_ColorPicker_Label1"
        ,
        propertiesFactory: function():Object { return {
          width: 66
        }}
      })
    ]
  }}
})

	//	constructor (Flex display object)
    /**
     * @private
     **/
	public function ComboBox_ColorPicker()
	{
		super();

		mx_internal::_document = this;

		//	our style settings



		//	properties
		this.width = 118;
		this.height = 26;

		//	events
		this.addEventListener("updateComplete", ___ComboBox_ColorPicker_HBox1_updateComplete);

	}

	//	initialize()
    /**
     * @private
     **/
	override public function initialize():void
	{
 		mx_internal::setDocumentDescriptor(_documentDescriptor_);

		var bindings:Array = _ComboBox_ColorPicker_bindingsSetup();
		var watchers:Array = [];

		var target:ComboBox_ColorPicker = this;

		if (_watcherSetupUtil == null)
		{
			var watcherSetupUtilClass:Object = getDefinitionByName("_Controls_ItemRenderers_ComboBox_ColorPickerWatcherSetupUtil");
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
	//	<Script>, line 6 - 13

      private function UpdateComplete():void
      {
        image.graphics.beginFill(data.Color); 
        image.graphics.drawRect(0, 0, image.width, image.height);
        image.graphics.endFill();
      }
    

	//	end scripts


    //	supporting function definitions for properties, events, styles, effects
/**
 * @private
 **/
public function ___ComboBox_ColorPicker_HBox1_updateComplete(event:mx.events.FlexEvent):void
{
	UpdateComplete()
}


	//	binding mgmt
    private function _ComboBox_ColorPicker_bindingsSetup():Array
    {
        var result:Array = [];
        var binding:Binding;

        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (data.Text);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                _ComboBox_ColorPicker_Label1.text = _sourceFunctionReturnValue;
            },
            "_ComboBox_ColorPicker_Label1.text");
        result[0] = binding;

        return result;
    }

    private function _ComboBox_ColorPicker_bindingExprs():void
    {
        var destination:*;
		[Binding(id='0')]
		destination = (data.Text);
    }

    /**
     * @private
     **/
    public static function set watcherSetupUtil(watcherSetupUtil:IWatcherSetupUtil):void
    {
        (ComboBox_ColorPicker)._watcherSetupUtil = watcherSetupUtil;
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
