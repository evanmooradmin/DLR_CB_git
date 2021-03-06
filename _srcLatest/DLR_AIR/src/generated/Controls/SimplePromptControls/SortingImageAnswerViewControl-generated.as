
/**
 * 	Generated by mxmlc 2.0
 *
 *	Package:	Controls.SimplePromptControls
 *	Class: 		SortingImageAnswerViewControl
 *	Source: 	P:\Active\EvanMoorEducationalPublishers\_svnPublic\DLR\_srcLatest\DLR_AIR\src\Controls\SimplePromptControls\SortingImageAnswerViewControl.mxml
 *	Template: 	flex2/compiler/mxml/gen/ClassDef.vm
 *	Time: 		2010.07.27 18:32:02 EEST
 */

package Controls.SimplePromptControls
{

import Controls.DropAnswerControl;
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
import mx.binding.IBindingClient;
import mx.containers.Canvas;
import mx.containers.VBox;
import mx.controls.Image;
import mx.controls.Label;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.UIComponent;
import mx.core.UIComponentDescriptor;
import mx.core.mx_internal;
import mx.events.FlexEvent;
import mx.states.AddChild;
import mx.states.State;
import mx.styles.*;



//	begin class def

public class SortingImageAnswerViewControl
	extends mx.containers.Canvas
	implements Interfaces.IDirectionAnswer, Interfaces.IFontStyle, Interfaces.IResult, mx.binding.IBindingClient
{

	//	instance variables
/**
 * @private
 **/
	public var _SortingImageAnswerViewControl_AddChild1 : mx.states.AddChild;

/**
 * @private
 **/
	public var _SortingImageAnswerViewControl_AddChild2 : mx.states.AddChild;

/**
 * @private
 **/
	public var _SortingImageAnswerViewControl_AddChild3 : mx.states.AddChild;

/**
 * @private
 **/
	public var _SortingImageAnswerViewControl_AddChild4 : mx.states.AddChild;

/**
 * @private
 **/
	public var _SortingImageAnswerViewControl_AddChild5 : mx.states.AddChild;

/**
 * @private
 **/
	public var _SortingImageAnswerViewControl_State1 : mx.states.State;

/**
 * @private
 **/
	public var _SortingImageAnswerViewControl_State2 : mx.states.State;

/**
 * @private
 **/
	public var _SortingImageAnswerViewControl_State3 : mx.states.State;

/**
 * @private
 **/
	public var _SortingImageAnswerViewControl_State4 : mx.states.State;

	[Bindable]
/**
 * @private
 **/
	public var dropAnswer : Controls.DropAnswerControl;

	[Bindable]
/**
 * @private
 **/
	public var hBoxCorrect : mx.containers.VBox;

	[Bindable]
/**
 * @private
 **/
	public var img : mx.controls.Image;

	[Bindable]
/**
 * @private
 **/
	public var imgIconCorrect : mx.controls.Image;

	[Bindable]
/**
 * @private
 **/
	public var imgIconIncorrect : mx.controls.Image;

	[Bindable]
/**
 * @private
 **/
	public var lbIndex : mx.controls.Label;


	//	type-import dummies


	//	Container document descriptor
private var _documentDescriptor_ : mx.core.UIComponentDescriptor = 
new mx.core.UIComponentDescriptor({
  type: mx.containers.Canvas
})

	//	constructor (Flex display object)
    /**
     * @private
     **/
	public function SortingImageAnswerViewControl()
	{
		super();

		mx_internal::_document = this;

		//	our style settings



		//	properties
		this.states = [_SortingImageAnswerViewControl_State1_i(), _SortingImageAnswerViewControl_State2_i(), _SortingImageAnswerViewControl_State3_i(), _SortingImageAnswerViewControl_State4_i()];

		//	events

	}

	//	initialize()
    /**
     * @private
     **/
	override public function initialize():void
	{
 		mx_internal::setDocumentDescriptor(_documentDescriptor_);

		var bindings:Array = _SortingImageAnswerViewControl_bindingsSetup();
		var watchers:Array = [];

		var target:SortingImageAnswerViewControl = this;

		if (_watcherSetupUtil == null)
		{
			var watcherSetupUtilClass:Object = getDefinitionByName("_Controls_SimplePromptControls_SortingImageAnswerViewControlWatcherSetupUtil");
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
	//	<Script>, line 5 - 156

      import mx.events.FlexEvent;
      import Model.Answers.SortingAnswer;
      import Controls.AnswerControls.DragAnswers.DragSortingImageControl;
      import Model.EmbededData;
      import Model.Answers.SortingImage;
      import Model.Answers.Answer;

      /***************************************************************
      *
      *  Module Name:
      *
      *
      *  Abstract:
      *
      *
      *  Author:
      *     Ruban Sergey
      *
      *  Revision History:
      *
      ***************************************************************/


      /**
      * Static
      */
      public static const state_dragged:String = "state_dragged";
      public static const state_dropped:String = "state_dropped";
      public static const state_correct:String = "state_correct";
      public static const state_incorrect:String = "state_incorrect";


      /**
      * Private members/properties
      */
      private var _answer:SortingImage;


      /**
      * Private methods
      */
      private function dropShadowFilter():DropShadowFilter
      {
        return new DropShadowFilter(5,35,13290701);
      }


      /**
      * Events handler
      */
      public function UpdateComplete_dropAnswerHandler(event:FlexEvent):void
      {
        lbIndex.visible = !dropAnswer.isDrop;
      }


      /**
      * Initialization
      */


      /**
      * Constructor
      */


      /**
      * Virtuals methods
      */
      public virtual function Init(answer:Answer):void
      {
        _answer = answer as SortingImage;
        img.source = EmbededData.inctance[EmbededData.img + this._answer.source];
        img.filters = [dropShadowFilter()];
        lbIndex.text = _answer.answer.toString();
      }

      public virtual function FontName(name:String):void
      {
      }

      public virtual function FontSize(size:int):void
      {

      }

      public virtual function FontColor(color:int):void
      {
      }

      public virtual function IsComplete():Boolean
      {
        return dropAnswer.isDrop;
      }

      public virtual function GetText():String
      {
        return dropAnswer.GetText();
      }

      public virtual function SetIncorrect():void
      {
        var source:String = this._answer.source;

        if (dropAnswer.dropObject.answer is SortingImage)
          source = (dropAnswer.dropObject.answer as SortingImage).source;
        img.source = EmbededData.inctance[EmbededData.img + source];

        if (dropAnswer.dropObject.shadowFilter == false)
          img.filters = [];
        else
          img.filters = [dropShadowFilter()];

        currentState = state_incorrect;
      }

      public virtual function SetCorrect():void
      {
        img.source = EmbededData.inctance[EmbededData.img + this._answer.source];

        if (dropAnswer.dropObject == null || dropAnswer.dropObject.shadowFilter == false)
          img.filters = [];
        else
          img.filters = [dropShadowFilter()];

        currentState = state_correct;
      }

      public virtual function Continue():void
      {
      }

      public virtual function Bold():void
      {
      }

      public virtual function DefaultFont():void
      {
      }

      /**
      * Public members/properties
      */


      /**
      * Public methods
      */


    

	//	end scripts


    //	supporting function definitions for properties, events, styles, effects
private function _SortingImageAnswerViewControl_State1_i() : mx.states.State
{
	var temp : mx.states.State = new mx.states.State();
	_SortingImageAnswerViewControl_State1 = temp;
	temp.overrides = [_SortingImageAnswerViewControl_AddChild1_i(), _SortingImageAnswerViewControl_AddChild2_i()];
	mx.binding.BindingManager.executeBindings(this, "_SortingImageAnswerViewControl_State1", _SortingImageAnswerViewControl_State1);
	return temp;
}

private function _SortingImageAnswerViewControl_AddChild1_i() : mx.states.AddChild
{
	var temp : mx.states.AddChild = new mx.states.AddChild();
	_SortingImageAnswerViewControl_AddChild1 = temp;
	temp.creationPolicy = "all";
	temp.targetFactory = new mx.core.DeferredInstanceFromFunction(_SortingImageAnswerViewControl_DropAnswerControl1_i);
	mx.binding.BindingManager.executeBindings(this, "_SortingImageAnswerViewControl_AddChild1", _SortingImageAnswerViewControl_AddChild1);
	return temp;
}

private function _SortingImageAnswerViewControl_DropAnswerControl1_i() : Controls.DropAnswerControl
{
	var temp : Controls.DropAnswerControl = new Controls.DropAnswerControl();
	dropAnswer = temp;
	temp.height = 200;
	temp.width = 200;
	temp.horizontalScrollPolicy = "off";
	temp.verticalScrollPolicy = "off";
	temp.addEventListener("updateComplete", __dropAnswer_updateComplete);
	temp.id = "dropAnswer";
	if (!temp.document) temp.document = this;
	return temp;
}

/**
 * @private
 **/
public function __dropAnswer_updateComplete(event:mx.events.FlexEvent):void
{
	UpdateComplete_dropAnswerHandler(event)
}

private function _SortingImageAnswerViewControl_AddChild2_i() : mx.states.AddChild
{
	var temp : mx.states.AddChild = new mx.states.AddChild();
	_SortingImageAnswerViewControl_AddChild2 = temp;
	temp.creationPolicy = "all";
	temp.targetFactory = new mx.core.DeferredInstanceFromFunction(_SortingImageAnswerViewControl_Label1_i);
	mx.binding.BindingManager.executeBindings(this, "_SortingImageAnswerViewControl_AddChild2", _SortingImageAnswerViewControl_AddChild2);
	return temp;
}

private function _SortingImageAnswerViewControl_Label1_i() : mx.controls.Label
{
	var temp : mx.controls.Label = new mx.controls.Label();
	lbIndex = temp;
	temp.setStyle("color", 16711680);
	temp.setStyle("horizontalCenter", "0");
	temp.setStyle("verticalCenter", "-20");
	temp.setStyle("fontSize", 15);
	temp.setStyle("fontWeight", "bold");
	temp.id = "lbIndex";
	if (!temp.document) temp.document = this;
	return temp;
}

private function _SortingImageAnswerViewControl_State2_i() : mx.states.State
{
	var temp : mx.states.State = new mx.states.State();
	_SortingImageAnswerViewControl_State2 = temp;
	temp.overrides = [_SortingImageAnswerViewControl_AddChild3_i()];
	mx.binding.BindingManager.executeBindings(this, "_SortingImageAnswerViewControl_State2", _SortingImageAnswerViewControl_State2);
	return temp;
}

private function _SortingImageAnswerViewControl_AddChild3_i() : mx.states.AddChild
{
	var temp : mx.states.AddChild = new mx.states.AddChild();
	_SortingImageAnswerViewControl_AddChild3 = temp;
	temp.creationPolicy = "all";
	temp.targetFactory = new mx.core.DeferredInstanceFromFunction(_SortingImageAnswerViewControl_VBox1_i);
	mx.binding.BindingManager.executeBindings(this, "_SortingImageAnswerViewControl_AddChild3", _SortingImageAnswerViewControl_AddChild3);
	return temp;
}

private function _SortingImageAnswerViewControl_VBox1_i() : mx.containers.VBox
{
	var temp : mx.containers.VBox = new mx.containers.VBox();
	hBoxCorrect = temp;
	temp.setStyle("verticalAlign", "middle");
	temp.setStyle("horizontalAlign", "center");
	temp.id = "hBoxCorrect";
	if (!temp.document) temp.document = this;
	temp.addChild(_SortingImageAnswerViewControl_Image1_i());
	return temp;
}

private function _SortingImageAnswerViewControl_Image1_i() : mx.controls.Image
{
	var temp : mx.controls.Image = new mx.controls.Image();
	img = temp;
	temp.autoLoad = true;
	temp.id = "img";
	mx.binding.BindingManager.executeBindings(this, "img", img);
	if (!temp.document) temp.document = this;
	return temp;
}

private function _SortingImageAnswerViewControl_State3_i() : mx.states.State
{
	var temp : mx.states.State = new mx.states.State();
	_SortingImageAnswerViewControl_State3 = temp;
	temp.overrides = [_SortingImageAnswerViewControl_AddChild4_i()];
	mx.binding.BindingManager.executeBindings(this, "_SortingImageAnswerViewControl_State3", _SortingImageAnswerViewControl_State3);
	return temp;
}

private function _SortingImageAnswerViewControl_AddChild4_i() : mx.states.AddChild
{
	var temp : mx.states.AddChild = new mx.states.AddChild();
	_SortingImageAnswerViewControl_AddChild4 = temp;
	temp.creationPolicy = "all";
	temp.targetFactory = new mx.core.DeferredInstanceFromFunction(_SortingImageAnswerViewControl_Image2_i);
	mx.binding.BindingManager.executeBindings(this, "_SortingImageAnswerViewControl_AddChild4", _SortingImageAnswerViewControl_AddChild4);
	return temp;
}

private function _SortingImageAnswerViewControl_Image2_i() : mx.controls.Image
{
	var temp : mx.controls.Image = new mx.controls.Image();
	imgIconCorrect = temp;
	temp.id = "imgIconCorrect";
	mx.binding.BindingManager.executeBindings(this, "imgIconCorrect", imgIconCorrect);
	if (!temp.document) temp.document = this;
	return temp;
}

private function _SortingImageAnswerViewControl_State4_i() : mx.states.State
{
	var temp : mx.states.State = new mx.states.State();
	_SortingImageAnswerViewControl_State4 = temp;
	temp.overrides = [_SortingImageAnswerViewControl_AddChild5_i()];
	mx.binding.BindingManager.executeBindings(this, "_SortingImageAnswerViewControl_State4", _SortingImageAnswerViewControl_State4);
	return temp;
}

private function _SortingImageAnswerViewControl_AddChild5_i() : mx.states.AddChild
{
	var temp : mx.states.AddChild = new mx.states.AddChild();
	_SortingImageAnswerViewControl_AddChild5 = temp;
	temp.creationPolicy = "all";
	temp.targetFactory = new mx.core.DeferredInstanceFromFunction(_SortingImageAnswerViewControl_Image3_i);
	mx.binding.BindingManager.executeBindings(this, "_SortingImageAnswerViewControl_AddChild5", _SortingImageAnswerViewControl_AddChild5);
	return temp;
}

private function _SortingImageAnswerViewControl_Image3_i() : mx.controls.Image
{
	var temp : mx.controls.Image = new mx.controls.Image();
	imgIconIncorrect = temp;
	temp.id = "imgIconIncorrect";
	mx.binding.BindingManager.executeBindings(this, "imgIconIncorrect", imgIconIncorrect);
	if (!temp.document) temp.document = this;
	return temp;
}


	//	binding mgmt
    private function _SortingImageAnswerViewControl_bindingsSetup():Array
    {
        var result:Array = [];
        var binding:Binding;

        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (state_dragged);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                this.currentState = _sourceFunctionReturnValue;
            },
            "this.currentState");
        result[0] = binding;
        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (state_dragged);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                _SortingImageAnswerViewControl_State1.name = _sourceFunctionReturnValue;
            },
            "_SortingImageAnswerViewControl_State1.name");
        result[1] = binding;
        binding = new mx.binding.Binding(this,
            function():mx.core.UIComponent
            {
                return (this);
            },
            function(_sourceFunctionReturnValue:mx.core.UIComponent):void
            {
				
                _SortingImageAnswerViewControl_AddChild1.relativeTo = _sourceFunctionReturnValue;
            },
            "_SortingImageAnswerViewControl_AddChild1.relativeTo");
        result[2] = binding;
        binding = new mx.binding.Binding(this,
            function():mx.core.UIComponent
            {
                return (this);
            },
            function(_sourceFunctionReturnValue:mx.core.UIComponent):void
            {
				
                _SortingImageAnswerViewControl_AddChild2.relativeTo = _sourceFunctionReturnValue;
            },
            "_SortingImageAnswerViewControl_AddChild2.relativeTo");
        result[3] = binding;
        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (state_dropped);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                _SortingImageAnswerViewControl_State2.name = _sourceFunctionReturnValue;
            },
            "_SortingImageAnswerViewControl_State2.name");
        result[4] = binding;
        binding = new mx.binding.Binding(this,
            function():mx.core.UIComponent
            {
                return (this);
            },
            function(_sourceFunctionReturnValue:mx.core.UIComponent):void
            {
				
                _SortingImageAnswerViewControl_AddChild3.relativeTo = _sourceFunctionReturnValue;
            },
            "_SortingImageAnswerViewControl_AddChild3.relativeTo");
        result[5] = binding;
        binding = new mx.binding.Binding(this,
            function():Number
            {
                return (dropAnswer.height - 20);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                img.height = _sourceFunctionReturnValue;
            },
            "img.height");
        result[6] = binding;
        binding = new mx.binding.Binding(this,
            function():Number
            {
                return (dropAnswer.width - 20);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                img.width = _sourceFunctionReturnValue;
            },
            "img.width");
        result[7] = binding;
        binding = new mx.binding.Binding(this,
            function():Array
            {
                return ([new GlowFilter(0xFF0000, 1, 2, 2)]);
            },
            function(_sourceFunctionReturnValue:Array):void
            {
				
                img.filters = _sourceFunctionReturnValue;
            },
            "img.filters");
        result[8] = binding;
        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (state_correct);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                _SortingImageAnswerViewControl_State3.name = _sourceFunctionReturnValue;
            },
            "_SortingImageAnswerViewControl_State3.name");
        result[9] = binding;
        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (state_dropped);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                _SortingImageAnswerViewControl_State3.basedOn = _sourceFunctionReturnValue;
            },
            "_SortingImageAnswerViewControl_State3.basedOn");
        result[10] = binding;
        binding = new mx.binding.Binding(this,
            function():mx.core.UIComponent
            {
                return (hBoxCorrect);
            },
            function(_sourceFunctionReturnValue:mx.core.UIComponent):void
            {
				
                _SortingImageAnswerViewControl_AddChild4.relativeTo = _sourceFunctionReturnValue;
            },
            "_SortingImageAnswerViewControl_AddChild4.relativeTo");
        result[11] = binding;
        binding = new mx.binding.Binding(this,
            function():Object
            {
                return (EmbededData.inctance.iconCorrect);
            },
            function(_sourceFunctionReturnValue:Object):void
            {
				
                imgIconCorrect.source = _sourceFunctionReturnValue;
            },
            "imgIconCorrect.source");
        result[12] = binding;
        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (state_incorrect);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                _SortingImageAnswerViewControl_State4.name = _sourceFunctionReturnValue;
            },
            "_SortingImageAnswerViewControl_State4.name");
        result[13] = binding;
        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (state_dropped);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                _SortingImageAnswerViewControl_State4.basedOn = _sourceFunctionReturnValue;
            },
            "_SortingImageAnswerViewControl_State4.basedOn");
        result[14] = binding;
        binding = new mx.binding.Binding(this,
            function():mx.core.UIComponent
            {
                return (hBoxCorrect);
            },
            function(_sourceFunctionReturnValue:mx.core.UIComponent):void
            {
				
                _SortingImageAnswerViewControl_AddChild5.relativeTo = _sourceFunctionReturnValue;
            },
            "_SortingImageAnswerViewControl_AddChild5.relativeTo");
        result[15] = binding;
        binding = new mx.binding.Binding(this,
            function():Object
            {
                return (EmbededData.inctance.iconIncorrect);
            },
            function(_sourceFunctionReturnValue:Object):void
            {
				
                imgIconIncorrect.source = _sourceFunctionReturnValue;
            },
            "imgIconIncorrect.source");
        result[16] = binding;

        return result;
    }

    private function _SortingImageAnswerViewControl_bindingExprs():void
    {
        var destination:*;
		[Binding(id='0')]
		destination = (state_dragged);
		[Binding(id='1')]
		destination = (state_dragged);
		[Binding(id='2')]
		destination = (this);
		[Binding(id='3')]
		destination = (this);
		[Binding(id='4')]
		destination = (state_dropped);
		[Binding(id='5')]
		destination = (this);
		[Binding(id='6')]
		destination = (dropAnswer.height - 20);
		[Binding(id='7')]
		destination = (dropAnswer.width - 20);
		[Binding(id='8')]
		destination = ([new GlowFilter(0xFF0000, 1, 2, 2)]);
		[Binding(id='9')]
		destination = (state_correct);
		[Binding(id='10')]
		destination = (state_dropped);
		[Binding(id='11')]
		destination = (hBoxCorrect);
		[Binding(id='12')]
		destination = (EmbededData.inctance.iconCorrect);
		[Binding(id='13')]
		destination = (state_incorrect);
		[Binding(id='14')]
		destination = (state_dropped);
		[Binding(id='15')]
		destination = (hBoxCorrect);
		[Binding(id='16')]
		destination = (EmbededData.inctance.iconIncorrect);
    }

    /**
     * @private
     **/
    public static function set watcherSetupUtil(watcherSetupUtil:IWatcherSetupUtil):void
    {
        (SortingImageAnswerViewControl)._watcherSetupUtil = watcherSetupUtil;
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
