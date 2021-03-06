
/**
 * 	Generated by mxmlc 2.0
 *
 *	Package:	Controls.SimplePromptControls
 *	Class: 		MultipleViewRadioButton
 *	Source: 	P:\Active\EvanMoorEducationalPublishers\_svnPublic\DLR\_srcLatest\DLR_AIR\src\Controls\SimplePromptControls\MultipleViewRadioButton.mxml
 *	Template: 	flex2/compiler/mxml/gen/ClassDef.vm
 *	Time: 		2010.07.27 18:32:02 EEST
 */

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
import flash.display.DisplayObject;
import flash.errors.*;
import flash.events.*;
import flash.events.MouseEvent;
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
import mx.core.UIComponent;
import mx.core.UIComponentDescriptor;
import mx.core.mx_internal;
import mx.events.FlexEvent;
import mx.states.AddChild;
import mx.states.RemoveChild;
import mx.states.SetStyle;
import mx.states.State;
import mx.styles.*;
import mx.styles.IStyleClient;



    [Event(name = "creationComplete", type = "flash.events.FlexEvent")]
  

//	begin class def

public class MultipleViewRadioButton
	extends mx.containers.Canvas
	implements Interfaces.IDirectionAnswer, Interfaces.IFontStyle, Interfaces.IResult, mx.binding.IBindingClient
{

	//	instance variables
/**
 * @private
 **/
	public var _MultipleViewRadioButton_AddChild1 : mx.states.AddChild;

/**
 * @private
 **/
	public var _MultipleViewRadioButton_AddChild2 : mx.states.AddChild;

/**
 * @private
 **/
	public var _MultipleViewRadioButton_AddChild3 : mx.states.AddChild;

/**
 * @private
 **/
	public var _MultipleViewRadioButton_RemoveChild1 : mx.states.RemoveChild;

/**
 * @private
 **/
	public var _MultipleViewRadioButton_RemoveChild2 : mx.states.RemoveChild;

/**
 * @private
 **/
	public var _MultipleViewRadioButton_RemoveChild3 : mx.states.RemoveChild;

/**
 * @private
 **/
	public var _MultipleViewRadioButton_RemoveChild4 : mx.states.RemoveChild;

/**
 * @private
 **/
	public var _MultipleViewRadioButton_RemoveChild5 : mx.states.RemoveChild;

/**
 * @private
 **/
	public var _MultipleViewRadioButton_RemoveChild6 : mx.states.RemoveChild;

/**
 * @private
 **/
	public var _MultipleViewRadioButton_SetStyle1 : mx.states.SetStyle;

/**
 * @private
 **/
	public var _MultipleViewRadioButton_SetStyle2 : mx.states.SetStyle;

/**
 * @private
 **/
	public var _MultipleViewRadioButton_State1 : mx.states.State;

/**
 * @private
 **/
	public var _MultipleViewRadioButton_State2 : mx.states.State;

/**
 * @private
 **/
	public var _MultipleViewRadioButton_State3 : mx.states.State;

	[Bindable]
/**
 * @private
 **/
	public var hBox : mx.containers.HBox;

	[Bindable]
/**
 * @private
 **/
	public var imgCorrect : mx.controls.Image;

	[Bindable]
/**
 * @private
 **/
	public var imgIncorrect : mx.controls.Image;

	[Bindable]
/**
 * @private
 **/
	public var lbCorrect : mx.controls.Text;

	[Bindable]
/**
 * @private
 **/
	public var lbDefault : mx.controls.Text;

	[Bindable]
/**
 * @private
 **/
	public var lbIncorrect : mx.controls.Text;

	[Bindable]
/**
 * @private
 **/
	public var rbVariant : mx.controls.RadioButton;

	[Bindable]
/**
 * @private
 **/
	public var txVariantText : Controls.Enviroment.TextExended;

	[Bindable]
/**
 * @private
 **/
	public var visibleAnswer : mx.controls.Text;


	//	type-import dummies


	//	Container document descriptor
private var _documentDescriptor_ : mx.core.UIComponentDescriptor = 
new mx.core.UIComponentDescriptor({
  type: mx.containers.Canvas
  ,
  propertiesFactory: function():Object { return {
    childDescriptors: [
      new mx.core.UIComponentDescriptor({
        type: mx.containers.HBox
        ,
        id: "hBox"
        ,
        stylesFactory: function():void {
          this.verticalAlign = "middle";
        }
        ,
        propertiesFactory: function():Object { return {
          verticalScrollPolicy: "off",
          horizontalScrollPolicy: "off",
          direction: "horizontal",
          childDescriptors: [
            new mx.core.UIComponentDescriptor({
              type: mx.containers.Canvas
              ,
              propertiesFactory: function():Object { return {
                percentHeight: 100.0,
                childDescriptors: [
                  new mx.core.UIComponentDescriptor({
                    type: mx.controls.RadioButton
                    ,
                    id: "rbVariant"
                    ,
                    events: {
                      valueCommit: "__rbVariant_valueCommit"
                    }
                  })
                ]
              }}
            })
          ,
            new mx.core.UIComponentDescriptor({
              type: Controls.Enviroment.TextExended
              ,
              id: "txVariantText"
              ,
              events: {
                click: "__txVariantText_click"
              }
              ,
              propertiesFactory: function():Object { return {
                selectable: false
              }}
            })
          ]
        }}
      })
    ]
  }}
})

	//	constructor (Flex display object)
    /**
     * @private
     **/
	public function MultipleViewRadioButton()
	{
		super();

		mx_internal::_document = this;

		//	our style settings



		//	properties
		this.verticalScrollPolicy = "off";
		this.horizontalScrollPolicy = "off";
		this.states = [_MultipleViewRadioButton_State1_i(), _MultipleViewRadioButton_State2_i(), _MultipleViewRadioButton_State3_i()];

		//	events
		this.addEventListener("creationComplete", ___MultipleViewRadioButton_Canvas1_creationComplete);

	}

	//	initialize()
    /**
     * @private
     **/
	override public function initialize():void
	{
 		mx_internal::setDocumentDescriptor(_documentDescriptor_);

		var bindings:Array = _MultipleViewRadioButton_bindingsSetup();
		var watchers:Array = [];

		var target:MultipleViewRadioButton = this;

		if (_watcherSetupUtil == null)
		{
			var watcherSetupUtilClass:Object = getDefinitionByName("_Controls_SimplePromptControls_MultipleViewRadioButtonWatcherSetupUtil");
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
	//	<Script>, line 10 - 246

      import Model.Answers.SingleAnswer;
      import Controls.AnswerControls.AnswerControl;
      import Controls.AnswerControls.SingleAnswerControl;
      import Controls.PromptControls.MultipleChoiceControl;
      import Controls.ActivityControl;
      import mx.core.UIComponent;
      import mx.events.ResizeEvent;
      import mx.rpc.events.HeaderEvent;
      import mx.events.FlexEvent;
      import Model.Answers.Answer;
      import Model.EmbededData;
      import mx.controls.RadioButtonGroup;
      /***************************************************************
      *
      *  Module Name:
      *     Controls\SimplePromptControls\MultipleViewRadioButton.mxml
      *
      *  Abstract:
      *     This is control for multiple-view radio button
      *
      *  Author:
      *     Evgenij Welikij   22-October-2009
      *
      *  Revision History:
      *
      ***************************************************************/


      /**
      * Static
      */


      /**
      * Private members/properties
      */
      protected var _group:RadioButtonGroup;

      private const state_radioButton:String = "state_radioButton";
      private const state_correct:String = "state_correct";
      private const state_incorrect:String = "state_incorrect";
      private const state_default:String = "state_default";

      private var _answer:Answer;

      [Bindable]
      private var _fontSize:int;
      private var _fontName:String;

      [Bindable]
      private var _rbY:int = 0;


      /**
      * Private methods
      */


      /**
      * Events handler
      */
      private function Click_rbVariant(event:MouseEvent):void
      {
        //для того что б нельзя было переключать когда контрол переходит в следуещее состояние
        if (this.currentState != state_default && rbVariant.selected == false)
        {
            rbVariant.selected = true;
        }
      }

      private function creationCompleteHandler(event:FlexEvent):void
      {
         var textlineMetrics:TextLineMetrics = txVariantText.measureText(txVariantText.text);
         _rbY = (textlineMetrics.height/2) - rbVariant.height/2 + 2; 
      }

      private function Change_rbVariantHandler(event:Event = null ):void
      {
        if (rbVariant.selected)
        {
          txVariantText.setStyle("fontWeight", "bold");
        // txVariantText.htmlText = txVariantText.htmlText;
        }
        else
        {
        // txVariantText.htmlText = txVariantText.htmlText;
           txVariantText.setStyle("fontWeight", "normal");
        }

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


      public virtual function FontName(name:String):void
      {
        _fontName = name;
        txVariantText.setStyle("fontFamily", name);
        lbCorrect.setStyle("fontFamily", name);
        lbIncorrect.setStyle("fontFamily", name);
        lbDefault.setStyle("fontFamily", name);
        visibleAnswer.setStyle("fontFamily", name);

        var textlineMetrics:TextLineMetrics = txVariantText.measureText(txVariantText.text);
         _rbY = (textlineMetrics.height/2) - rbVariant.height/2 + 2; 
      }

      public virtual function FontSize(size:int):void
      {
        _fontSize = size;
        txVariantText.setStyle("fontSize", size);
        lbCorrect.setStyle("fontSize", size);
        lbIncorrect.setStyle("fontSize", size);
        lbDefault.setStyle("fontSize", size);
        visibleAnswer.setStyle("fontSize", size);

        var textlineMetrics:TextLineMetrics = txVariantText.measureText(txVariantText.text);
        _rbY = (textlineMetrics.height/2) - rbVariant.height/2 + 2; 
      }

      public virtual function FontColor(color:int):void
      {
        txVariantText.setStyle("color", color);
        lbDefault.setStyle("color", color);
      }

      public virtual function Bold():void
      {
      }

      public virtual function SetCorrect():void
      {
        if (_answer.isCorrect)
          rbVariant.selected = true;

        txVariantText.setStyle("fontWeight", "normal");

        if (_answer is SingleAnswer)
        {
          if (this._answer != null && (this._answer as SingleAnswer).VisibleAnswer  != '')
            visibleAnswer.text = (this._answer as SingleAnswer).VisibleAnswer;
        }
        lbCorrect.htmlText =  txVariantText.htmlText;
        //Вырезаем из строки параметр COLOR, SIZE и теги <B></B> чтоб можно было менять размер и цвет
        lbCorrect.htmlText = lbCorrect.htmlText.replace(new RegExp("(SIZE\\s*?=\\s*?\"[0-9]+\")|(COLOR\\s*?=\\s*?\".*?\")|<B>|</B>",'g'),'');
        currentState = state_correct;
      }

      public virtual function SetIncorrect():void
      {
        currentState = state_incorrect;
        txVariantText.setStyle("fontWeight", "normal");
      }

      public virtual function GetText():String
      {
        return rbVariant.selected ? txVariantText.text : null;
      }

      public virtual function Init(answer:Answer):void
      {
        this._answer = answer;
        txVariantText.htmlText = answer.text;
        txVariantText.htmlText = txVariantText.htmlText.replace(new RegExp("<br/>",'g'),'\n');
      }

      public virtual function IsComplete():Boolean
      {
        if (ActivityControl.isCheckAnswer == false)
          return true;

        return rbVariant.selected;
      }

      public virtual function Continue():void
      {
      }

      public virtual function DefaultFont():void
      {
        _fontName = "EMComic";
        txVariantText.setStyle("fontFamily", "EMComic");
        lbCorrect.setStyle("fontFamily", "EMComic");
        visibleAnswer.setStyle("fontFamily", "EMComic");
        lbIncorrect.setStyle("fontFamily", "EMComic");
        lbDefault.setStyle("fontFamily", "EMComic");

        var textlineMetrics:TextLineMetrics = txVariantText.measureText(txVariantText.text);
        _rbY = (textlineMetrics.height/2) - rbVariant.height/2 + 2; 
      }


      /**
      * Public members/properties
      */
      public function set group(value:RadioButtonGroup):void
      {
        this._group = value;
        rbVariant.group = value;
      }


      /**
      * Public methods
      */
      public function SetDefault():void
      {
        // отписываемся от подсвечивания текста жирным
        txVariantText.removeEventListener(MouseEvent.CLICK, Click_rbVariant);
        rbVariant.removeEventListener(MouseEvent.CLICK, Change_rbVariantHandler);
        currentState = state_default;
      }

      public function selected(selected:Boolean):void
      {
        if (selected == true)
            txVariantText.setStyle("fontWeight", "bold");
        else
            txVariantText.setStyle("fontWeight", "normal");
      }


    

	//	end scripts


    //	supporting function definitions for properties, events, styles, effects
private function _MultipleViewRadioButton_State1_i() : mx.states.State
{
	var temp : mx.states.State = new mx.states.State();
	_MultipleViewRadioButton_State1 = temp;
	temp.overrides = [_MultipleViewRadioButton_AddChild1_i(), _MultipleViewRadioButton_RemoveChild1_i(), _MultipleViewRadioButton_RemoveChild2_i()];
	mx.binding.BindingManager.executeBindings(this, "_MultipleViewRadioButton_State1", _MultipleViewRadioButton_State1);
	return temp;
}

private function _MultipleViewRadioButton_AddChild1_i() : mx.states.AddChild
{
	var temp : mx.states.AddChild = new mx.states.AddChild();
	_MultipleViewRadioButton_AddChild1 = temp;
	temp.creationPolicy = "all";
	temp.targetFactory = new mx.core.DeferredInstanceFromFunction(_MultipleViewRadioButton_HBox1_c);
	mx.binding.BindingManager.executeBindings(this, "_MultipleViewRadioButton_AddChild1", _MultipleViewRadioButton_AddChild1);
	return temp;
}

private function _MultipleViewRadioButton_HBox1_c() : mx.containers.HBox
{
	var temp : mx.containers.HBox = new mx.containers.HBox();
	temp.setStyle("horizontalGap", 0);
	temp.setStyle("verticalAlign", "middle");
	if (!temp.document) temp.document = this;
	temp.addChild(_MultipleViewRadioButton_Image1_i());
	temp.addChild(_MultipleViewRadioButton_Text1_i());
	temp.addChild(_MultipleViewRadioButton_Text2_i());
	return temp;
}

private function _MultipleViewRadioButton_Image1_i() : mx.controls.Image
{
	var temp : mx.controls.Image = new mx.controls.Image();
	imgCorrect = temp;
	temp.id = "imgCorrect";
	mx.binding.BindingManager.executeBindings(this, "imgCorrect", imgCorrect);
	if (!temp.document) temp.document = this;
	return temp;
}

private function _MultipleViewRadioButton_Text1_i() : mx.controls.Text
{
	var temp : mx.controls.Text = new mx.controls.Text();
	lbCorrect = temp;
	temp.selectable = false;
	temp.setStyle("color", 50015);
	temp.id = "lbCorrect";
	mx.binding.BindingManager.executeBindings(this, "lbCorrect", lbCorrect);
	if (!temp.document) temp.document = this;
	return temp;
}

private function _MultipleViewRadioButton_Text2_i() : mx.controls.Text
{
	var temp : mx.controls.Text = new mx.controls.Text();
	visibleAnswer = temp;
	temp.selectable = false;
	temp.setStyle("color", 8750470);
	temp.id = "visibleAnswer";
	if (!temp.document) temp.document = this;
	return temp;
}

private function _MultipleViewRadioButton_RemoveChild1_i() : mx.states.RemoveChild
{
	var temp : mx.states.RemoveChild = new mx.states.RemoveChild();
	_MultipleViewRadioButton_RemoveChild1 = temp;
	mx.binding.BindingManager.executeBindings(this, "_MultipleViewRadioButton_RemoveChild1", _MultipleViewRadioButton_RemoveChild1);
	return temp;
}

private function _MultipleViewRadioButton_RemoveChild2_i() : mx.states.RemoveChild
{
	var temp : mx.states.RemoveChild = new mx.states.RemoveChild();
	_MultipleViewRadioButton_RemoveChild2 = temp;
	mx.binding.BindingManager.executeBindings(this, "_MultipleViewRadioButton_RemoveChild2", _MultipleViewRadioButton_RemoveChild2);
	return temp;
}

private function _MultipleViewRadioButton_State2_i() : mx.states.State
{
	var temp : mx.states.State = new mx.states.State();
	_MultipleViewRadioButton_State2 = temp;
	temp.overrides = [_MultipleViewRadioButton_AddChild2_i(), _MultipleViewRadioButton_RemoveChild3_i(), _MultipleViewRadioButton_RemoveChild4_i()];
	mx.binding.BindingManager.executeBindings(this, "_MultipleViewRadioButton_State2", _MultipleViewRadioButton_State2);
	return temp;
}

private function _MultipleViewRadioButton_AddChild2_i() : mx.states.AddChild
{
	var temp : mx.states.AddChild = new mx.states.AddChild();
	_MultipleViewRadioButton_AddChild2 = temp;
	temp.creationPolicy = "all";
	temp.targetFactory = new mx.core.DeferredInstanceFromFunction(_MultipleViewRadioButton_HBox2_c);
	mx.binding.BindingManager.executeBindings(this, "_MultipleViewRadioButton_AddChild2", _MultipleViewRadioButton_AddChild2);
	return temp;
}

private function _MultipleViewRadioButton_HBox2_c() : mx.containers.HBox
{
	var temp : mx.containers.HBox = new mx.containers.HBox();
	temp.setStyle("horizontalGap", 0);
	temp.setStyle("verticalAlign", "middle");
	if (!temp.document) temp.document = this;
	temp.addChild(_MultipleViewRadioButton_Image2_i());
	temp.addChild(_MultipleViewRadioButton_Text3_i());
	return temp;
}

private function _MultipleViewRadioButton_Image2_i() : mx.controls.Image
{
	var temp : mx.controls.Image = new mx.controls.Image();
	imgIncorrect = temp;
	temp.id = "imgIncorrect";
	mx.binding.BindingManager.executeBindings(this, "imgIncorrect", imgIncorrect);
	if (!temp.document) temp.document = this;
	return temp;
}

private function _MultipleViewRadioButton_Text3_i() : mx.controls.Text
{
	var temp : mx.controls.Text = new mx.controls.Text();
	lbIncorrect = temp;
	temp.selectable = false;
	temp.setStyle("color", 15027785);
	temp.id = "lbIncorrect";
	mx.binding.BindingManager.executeBindings(this, "lbIncorrect", lbIncorrect);
	if (!temp.document) temp.document = this;
	return temp;
}

private function _MultipleViewRadioButton_RemoveChild3_i() : mx.states.RemoveChild
{
	var temp : mx.states.RemoveChild = new mx.states.RemoveChild();
	_MultipleViewRadioButton_RemoveChild3 = temp;
	mx.binding.BindingManager.executeBindings(this, "_MultipleViewRadioButton_RemoveChild3", _MultipleViewRadioButton_RemoveChild3);
	return temp;
}

private function _MultipleViewRadioButton_RemoveChild4_i() : mx.states.RemoveChild
{
	var temp : mx.states.RemoveChild = new mx.states.RemoveChild();
	_MultipleViewRadioButton_RemoveChild4 = temp;
	mx.binding.BindingManager.executeBindings(this, "_MultipleViewRadioButton_RemoveChild4", _MultipleViewRadioButton_RemoveChild4);
	return temp;
}

private function _MultipleViewRadioButton_State3_i() : mx.states.State
{
	var temp : mx.states.State = new mx.states.State();
	_MultipleViewRadioButton_State3 = temp;
	temp.overrides = [_MultipleViewRadioButton_AddChild3_i(), _MultipleViewRadioButton_RemoveChild5_i(), _MultipleViewRadioButton_RemoveChild6_i(), _MultipleViewRadioButton_SetStyle1_i(), _MultipleViewRadioButton_SetStyle2_i()];
	mx.binding.BindingManager.executeBindings(this, "_MultipleViewRadioButton_State3", _MultipleViewRadioButton_State3);
	return temp;
}

private function _MultipleViewRadioButton_AddChild3_i() : mx.states.AddChild
{
	var temp : mx.states.AddChild = new mx.states.AddChild();
	_MultipleViewRadioButton_AddChild3 = temp;
	temp.creationPolicy = "all";
	temp.targetFactory = new mx.core.DeferredInstanceFromFunction(_MultipleViewRadioButton_Text4_i);
	mx.binding.BindingManager.executeBindings(this, "_MultipleViewRadioButton_AddChild3", _MultipleViewRadioButton_AddChild3);
	return temp;
}

private function _MultipleViewRadioButton_Text4_i() : mx.controls.Text
{
	var temp : mx.controls.Text = new mx.controls.Text();
	lbDefault = temp;
	temp.selectable = false;
	temp.setStyle("fontWeight", "normal");
	temp.id = "lbDefault";
	mx.binding.BindingManager.executeBindings(this, "lbDefault", lbDefault);
	if (!temp.document) temp.document = this;
	return temp;
}

private function _MultipleViewRadioButton_RemoveChild5_i() : mx.states.RemoveChild
{
	var temp : mx.states.RemoveChild = new mx.states.RemoveChild();
	_MultipleViewRadioButton_RemoveChild5 = temp;
	mx.binding.BindingManager.executeBindings(this, "_MultipleViewRadioButton_RemoveChild5", _MultipleViewRadioButton_RemoveChild5);
	return temp;
}

private function _MultipleViewRadioButton_RemoveChild6_i() : mx.states.RemoveChild
{
	var temp : mx.states.RemoveChild = new mx.states.RemoveChild();
	_MultipleViewRadioButton_RemoveChild6 = temp;
	mx.binding.BindingManager.executeBindings(this, "_MultipleViewRadioButton_RemoveChild6", _MultipleViewRadioButton_RemoveChild6);
	return temp;
}

private function _MultipleViewRadioButton_SetStyle1_i() : mx.states.SetStyle
{
	var temp : mx.states.SetStyle = new mx.states.SetStyle();
	_MultipleViewRadioButton_SetStyle1 = temp;
	temp.name = "verticalAlign";
	temp.value = "left";
	mx.binding.BindingManager.executeBindings(this, "_MultipleViewRadioButton_SetStyle1", _MultipleViewRadioButton_SetStyle1);
	return temp;
}

private function _MultipleViewRadioButton_SetStyle2_i() : mx.states.SetStyle
{
	var temp : mx.states.SetStyle = new mx.states.SetStyle();
	_MultipleViewRadioButton_SetStyle2 = temp;
	temp.name = "paddingLeft";
	mx.binding.BindingManager.executeBindings(this, "_MultipleViewRadioButton_SetStyle2", _MultipleViewRadioButton_SetStyle2);
	return temp;
}

/**
 * @private
 **/
public function ___MultipleViewRadioButton_Canvas1_creationComplete(event:mx.events.FlexEvent):void
{
	creationCompleteHandler(event)
}

/**
 * @private
 **/
public function __rbVariant_valueCommit(event:mx.events.FlexEvent):void
{
	Change_rbVariantHandler(event)
}

/**
 * @private
 **/
public function __txVariantText_click(event:flash.events.MouseEvent):void
{
	Click_rbVariant(event)
}


	//	binding mgmt
    private function _MultipleViewRadioButton_bindingsSetup():Array
    {
        var result:Array = [];
        var binding:Binding;

        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (state_correct);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                _MultipleViewRadioButton_State1.name = _sourceFunctionReturnValue;
            },
            "_MultipleViewRadioButton_State1.name");
        result[0] = binding;
        binding = new mx.binding.Binding(this,
            function():mx.core.UIComponent
            {
                return (this);
            },
            function(_sourceFunctionReturnValue:mx.core.UIComponent):void
            {
				
                _MultipleViewRadioButton_AddChild1.relativeTo = _sourceFunctionReturnValue;
            },
            "_MultipleViewRadioButton_AddChild1.relativeTo");
        result[1] = binding;
        binding = new mx.binding.Binding(this,
            function():Object
            {
                return (EmbededData.inctance.iconCorrect);
            },
            function(_sourceFunctionReturnValue:Object):void
            {
				
                imgCorrect.source = _sourceFunctionReturnValue;
            },
            "imgCorrect.source");
        result[2] = binding;
        binding = new mx.binding.Binding(this,
            function():Number
            {
                return (_fontSize);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                imgCorrect.width = _sourceFunctionReturnValue;
            },
            "imgCorrect.width");
        result[3] = binding;
        binding = new mx.binding.Binding(this,
            function():Number
            {
                return (_fontSize);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                imgCorrect.height = _sourceFunctionReturnValue;
            },
            "imgCorrect.height");
        result[4] = binding;
        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (txVariantText.text);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                lbCorrect.text = _sourceFunctionReturnValue;
            },
            "lbCorrect.text");
        result[5] = binding;
        binding = new mx.binding.Binding(this,
            function():flash.display.DisplayObject
            {
                return (txVariantText);
            },
            function(_sourceFunctionReturnValue:flash.display.DisplayObject):void
            {
				
                _MultipleViewRadioButton_RemoveChild1.target = _sourceFunctionReturnValue;
            },
            "_MultipleViewRadioButton_RemoveChild1.target");
        result[6] = binding;
        binding = new mx.binding.Binding(this,
            function():flash.display.DisplayObject
            {
                return (rbVariant);
            },
            function(_sourceFunctionReturnValue:flash.display.DisplayObject):void
            {
				
                _MultipleViewRadioButton_RemoveChild2.target = _sourceFunctionReturnValue;
            },
            "_MultipleViewRadioButton_RemoveChild2.target");
        result[7] = binding;
        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (state_incorrect);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                _MultipleViewRadioButton_State2.name = _sourceFunctionReturnValue;
            },
            "_MultipleViewRadioButton_State2.name");
        result[8] = binding;
        binding = new mx.binding.Binding(this,
            function():mx.core.UIComponent
            {
                return (this);
            },
            function(_sourceFunctionReturnValue:mx.core.UIComponent):void
            {
				
                _MultipleViewRadioButton_AddChild2.relativeTo = _sourceFunctionReturnValue;
            },
            "_MultipleViewRadioButton_AddChild2.relativeTo");
        result[9] = binding;
        binding = new mx.binding.Binding(this,
            function():Object
            {
                return (EmbededData.inctance.iconIncorrect);
            },
            function(_sourceFunctionReturnValue:Object):void
            {
				
                imgIncorrect.source = _sourceFunctionReturnValue;
            },
            "imgIncorrect.source");
        result[10] = binding;
        binding = new mx.binding.Binding(this,
            function():Number
            {
                return (_fontSize);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                imgIncorrect.width = _sourceFunctionReturnValue;
            },
            "imgIncorrect.width");
        result[11] = binding;
        binding = new mx.binding.Binding(this,
            function():Number
            {
                return (_fontSize);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                imgIncorrect.height = _sourceFunctionReturnValue;
            },
            "imgIncorrect.height");
        result[12] = binding;
        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (txVariantText.text);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                lbIncorrect.text = _sourceFunctionReturnValue;
            },
            "lbIncorrect.text");
        result[13] = binding;
        binding = new mx.binding.Binding(this,
            function():Number
            {
                return (txVariantText.width);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                lbIncorrect.width = _sourceFunctionReturnValue;
            },
            "lbIncorrect.width");
        result[14] = binding;
        binding = new mx.binding.Binding(this,
            function():flash.display.DisplayObject
            {
                return (txVariantText);
            },
            function(_sourceFunctionReturnValue:flash.display.DisplayObject):void
            {
				
                _MultipleViewRadioButton_RemoveChild3.target = _sourceFunctionReturnValue;
            },
            "_MultipleViewRadioButton_RemoveChild3.target");
        result[15] = binding;
        binding = new mx.binding.Binding(this,
            function():flash.display.DisplayObject
            {
                return (rbVariant);
            },
            function(_sourceFunctionReturnValue:flash.display.DisplayObject):void
            {
				
                _MultipleViewRadioButton_RemoveChild4.target = _sourceFunctionReturnValue;
            },
            "_MultipleViewRadioButton_RemoveChild4.target");
        result[16] = binding;
        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (state_default);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                _MultipleViewRadioButton_State3.name = _sourceFunctionReturnValue;
            },
            "_MultipleViewRadioButton_State3.name");
        result[17] = binding;
        binding = new mx.binding.Binding(this,
            function():mx.core.UIComponent
            {
                return (this);
            },
            function(_sourceFunctionReturnValue:mx.core.UIComponent):void
            {
				
                _MultipleViewRadioButton_AddChild3.relativeTo = _sourceFunctionReturnValue;
            },
            "_MultipleViewRadioButton_AddChild3.relativeTo");
        result[18] = binding;
        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (txVariantText.htmlText);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                lbDefault.htmlText = _sourceFunctionReturnValue;
            },
            "lbDefault.htmlText");
        result[19] = binding;
        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (_fontSize);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
                lbDefault.setStyle("left", _sourceFunctionReturnValue);
            },
            "lbDefault.left");
        result[20] = binding;
        binding = new mx.binding.Binding(this,
            function():Number
            {
                return (txVariantText.width);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                lbDefault.width = _sourceFunctionReturnValue;
            },
            "lbDefault.width");
        result[21] = binding;
        binding = new mx.binding.Binding(this,
            function():flash.display.DisplayObject
            {
                return (rbVariant);
            },
            function(_sourceFunctionReturnValue:flash.display.DisplayObject):void
            {
				
                _MultipleViewRadioButton_RemoveChild5.target = _sourceFunctionReturnValue;
            },
            "_MultipleViewRadioButton_RemoveChild5.target");
        result[22] = binding;
        binding = new mx.binding.Binding(this,
            function():flash.display.DisplayObject
            {
                return (txVariantText);
            },
            function(_sourceFunctionReturnValue:flash.display.DisplayObject):void
            {
				
                _MultipleViewRadioButton_RemoveChild6.target = _sourceFunctionReturnValue;
            },
            "_MultipleViewRadioButton_RemoveChild6.target");
        result[23] = binding;
        binding = new mx.binding.Binding(this,
            function():mx.styles.IStyleClient
            {
                return (hBox);
            },
            function(_sourceFunctionReturnValue:mx.styles.IStyleClient):void
            {
				
                _MultipleViewRadioButton_SetStyle1.target = _sourceFunctionReturnValue;
            },
            "_MultipleViewRadioButton_SetStyle1.target");
        result[24] = binding;
        binding = new mx.binding.Binding(this,
            function():mx.styles.IStyleClient
            {
                return (hBox);
            },
            function(_sourceFunctionReturnValue:mx.styles.IStyleClient):void
            {
				
                _MultipleViewRadioButton_SetStyle2.target = _sourceFunctionReturnValue;
            },
            "_MultipleViewRadioButton_SetStyle2.target");
        result[25] = binding;
        binding = new mx.binding.Binding(this,
            function():Object
            {
                return (_fontSize);
            },
            function(_sourceFunctionReturnValue:Object):void
            {
				
                _MultipleViewRadioButton_SetStyle2.value = _sourceFunctionReturnValue;
            },
            "_MultipleViewRadioButton_SetStyle2.value");
        result[26] = binding;
        binding = new mx.binding.Binding(this,
            function():Number
            {
                return (this._rbY);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                rbVariant.y = _sourceFunctionReturnValue;
            },
            "rbVariant.y");
        result[27] = binding;
        binding = new mx.binding.Binding(this,
            function():Number
            {
                return (ActivityControl.MAX_WIDTH - 50);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                txVariantText.width = _sourceFunctionReturnValue;
            },
            "txVariantText.width");
        result[28] = binding;

        return result;
    }

    private function _MultipleViewRadioButton_bindingExprs():void
    {
        var destination:*;
		[Binding(id='0')]
		destination = (state_correct);
		[Binding(id='1')]
		destination = (this);
		[Binding(id='2')]
		destination = (EmbededData.inctance.iconCorrect);
		[Binding(id='3')]
		destination = (_fontSize);
		[Binding(id='4')]
		destination = (_fontSize);
		[Binding(id='5')]
		destination = (txVariantText.text);
		[Binding(id='6')]
		destination = (txVariantText);
		[Binding(id='7')]
		destination = (rbVariant);
		[Binding(id='8')]
		destination = (state_incorrect);
		[Binding(id='9')]
		destination = (this);
		[Binding(id='10')]
		destination = (EmbededData.inctance.iconIncorrect);
		[Binding(id='11')]
		destination = (_fontSize);
		[Binding(id='12')]
		destination = (_fontSize);
		[Binding(id='13')]
		destination = (txVariantText.text);
		[Binding(id='14')]
		destination = (txVariantText.width);
		[Binding(id='15')]
		destination = (txVariantText);
		[Binding(id='16')]
		destination = (rbVariant);
		[Binding(id='17')]
		destination = (state_default);
		[Binding(id='18')]
		destination = (this);
		[Binding(id='19')]
		destination = (txVariantText.htmlText);
		[Binding(id='20')]
		destination = (_fontSize);
		[Binding(id='21')]
		destination = (txVariantText.width);
		[Binding(id='22')]
		destination = (rbVariant);
		[Binding(id='23')]
		destination = (txVariantText);
		[Binding(id='24')]
		destination = (hBox);
		[Binding(id='25')]
		destination = (hBox);
		[Binding(id='26')]
		destination = (_fontSize);
		[Binding(id='27')]
		destination = (this._rbY);
		[Binding(id='28')]
		destination = (ActivityControl.MAX_WIDTH - 50);
    }

    /**
     * @private
     **/
    public static function set watcherSetupUtil(watcherSetupUtil:IWatcherSetupUtil):void
    {
        (MultipleViewRadioButton)._watcherSetupUtil = watcherSetupUtil;
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
