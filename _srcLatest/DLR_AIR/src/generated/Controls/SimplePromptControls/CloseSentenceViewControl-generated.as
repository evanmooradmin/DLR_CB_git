
/**
 * 	Generated by mxmlc 2.0
 *
 *	Package:	Controls.SimplePromptControls
 *	Class: 		CloseSentenceViewControl
 *	Source: 	P:\Active\EvanMoorEducationalPublishers\_svnPublic\DLR\_srcLatest\DLR_AIR\src\Controls\SimplePromptControls\CloseSentenceViewControl.mxml
 *	Template: 	flex2/compiler/mxml/gen/ClassDef.vm
 *	Time: 		2010.07.27 18:32:04 EEST
 */

package Controls.SimplePromptControls
{

import Controls.FlowBox.FlowBox;
import Interfaces.IDirectionPrompt;
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
import mx.containers.VBox;
import mx.controls.Image;
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
import mx.states.State;
import mx.styles.*;



//	begin class def

public class CloseSentenceViewControl
	extends mx.containers.Canvas
	implements Interfaces.IDirectionPrompt, Interfaces.IFontStyle, Interfaces.IResult, mx.binding.IBindingClient
{

	//	instance variables
/**
 * @private
 **/
	public var _CloseSentenceViewControl_AddChild1 : mx.states.AddChild;

/**
 * @private
 **/
	public var _CloseSentenceViewControl_AddChild2 : mx.states.AddChild;

/**
 * @private
 **/
	public var _CloseSentenceViewControl_RemoveChild1 : mx.states.RemoveChild;

/**
 * @private
 **/
	public var _CloseSentenceViewControl_RemoveChild2 : mx.states.RemoveChild;

/**
 * @private
 **/
	public var _CloseSentenceViewControl_State2 : mx.states.State;

/**
 * @private
 **/
	public var _CloseSentenceViewControl_State3 : mx.states.State;

/**
 * @private
 **/
	public var _CloseSentenceViewControl_State4 : mx.states.State;

	[Bindable]
/**
 * @private
 **/
	public var flowBox : Controls.FlowBox.FlowBox;

	[Bindable]
/**
 * @private
 **/
	public var hBoxIcorrect : mx.containers.HBox;

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
	public var txtTextCorrect : mx.controls.Text;

	[Bindable]
/**
 * @private
 **/
	public var txtTextIncorrect : mx.controls.Text;

	[Bindable]
/**
 * @private
 **/
	public var vBox : mx.containers.VBox;


	//	type-import dummies


	//	Container document descriptor
private var _documentDescriptor_ : mx.core.UIComponentDescriptor = 
new mx.core.UIComponentDescriptor({
  type: mx.containers.Canvas
  ,
  propertiesFactory: function():Object { return {
    childDescriptors: [
      new mx.core.UIComponentDescriptor({
        type: mx.containers.VBox
        ,
        id: "vBox"
        ,
        propertiesFactory: function():Object { return {
          childDescriptors: [
            new mx.core.UIComponentDescriptor({
              type: Controls.FlowBox.FlowBox
              ,
              id: "flowBox"
              ,
              stylesFactory: function():void {
                this.horizontalGap = 0;
              }
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
	public function CloseSentenceViewControl()
	{
		super();

		mx_internal::_document = this;

		//	our style settings



		//	properties
		this.states = [_CloseSentenceViewControl_State1_c(), _CloseSentenceViewControl_State2_i(), _CloseSentenceViewControl_State3_i(), _CloseSentenceViewControl_State4_i()];

		//	events
		this.addEventListener("creationComplete", ___CloseSentenceViewControl_Canvas1_creationComplete);

	}

	//	initialize()
    /**
     * @private
     **/
	override public function initialize():void
	{
 		mx_internal::setDocumentDescriptor(_documentDescriptor_);

		var bindings:Array = _CloseSentenceViewControl_bindingsSetup();
		var watchers:Array = [];

		var target:CloseSentenceViewControl = this;

		if (_watcherSetupUtil == null)
		{
			var watcherSetupUtilClass:Object = getDefinitionByName("_Controls_SimplePromptControls_CloseSentenceViewControlWatcherSetupUtil");
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
	//	<Script>, line 6 - 316

      import Controls.QuizControl;
      import flash.sampler.NewObjectSample;
      import flash.text.engine.BreakOpportunity;
      import Model.EnumRegExp;
      import Model.FactoryRegExp;
      import mx.events.FlexEvent;
      import __AS3__.vec.Vector;
      import Model.EmbededData;
      import mx.controls.TextInput;
      import mx.core.UIComponent;
      import Controls.ActivityControl;
      import Controls.PromptControls.ActivityDirectionsControl;
      import Model.Prompts.ActivityDirections;
      import mx.controls.Label;
      import Model.Prompts.CloseSentence;
      import Model.Prompts.Prompt;
      /***************************************************************
      *
      *  Module Name:
      *     Controls\SimplePromptControls\CloseSentenceViewControl.mxml
      *
      *  Abstract:
      *     This is visual control for close sentences prompt
      *
      *  Author:
      *     Evgenij Welikij   06-March-2010
      *
      *  Revision History:
      *
      ***************************************************************/


      /**
      * Static
      */
      public static const state_correct:String = "state_correct";
      public static const state_incorrect:String = "state_incorrect";
      public static const state_incorrectCorrect:String = "state_icorrectCorrect";


      /**
      * Private members/properties
      */
      private var _prompt:CloseSentence;

      private var _txtInputs:Array = [];
      private var _wordsArray:Array = [];

      private var _fontFamily:String = "EMComic";

     [Bindable]
      private var _fontSize:int = 0;


      /**
      * Private methods
      */


      /**
      * Events handler
      */
      private function UpdateComplete_controlHandler(event:FlexEvent):void
      {
        // делаем label ровно по длинне текста
        var label:Label = event.currentTarget as Text;
        var lineMetrics:TextLineMetrics = label.measureText(label.text);

         // label.width = lineMetrics.width + lineMetrics.x * 2;
      }


      private function creationCompleteHandler(event:FlexEvent):void
      {
    //    this.txtInputMaxWidth();
      }

      private function txtInputMaxWidth():void
      {
        var index:int = 0;

        for each (var txtInput:UIComponent in flowBox.getChildren())
        {
           if (txtInput is TextInput)
           {
              txtInput.setStyle("fontFamily", this._fontFamily);
              txtInput.setStyle("fontSize", this._fontSize);

              var lineMetrics:TextLineMetrics = txtInput.measureText( _prompt.answers[index]);
              txtInput.width = lineMetrics.width + lineMetrics.x * 4;
              if (txtInput.width < 50)
                    txtInput.width = 100;
              index++;
           }
           else if (txtInput is Text)
           {
              txtInput.setStyle("fontFamily", this._fontFamily);
              txtInput.setStyle("fontSize", this._fontSize);
              lineMetrics = (txtInput as Text).measureText((txtInput as Text).text);
           
              if ((txtInput as Text).text == " ")
                  txtInput.width = lineMetrics.width - lineMetrics.width/3;
           }
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
        this._fontFamily = name;
        flowBox.setStyle("fontFamily", name);
        txtTextIncorrect.setStyle("fontFamily", name);
        txtTextCorrect.setStyle("fontFamily", name);

        this.txtInputMaxWidth();
      }

      public virtual function FontSize(size:int):void
      {
        this._fontSize = size;
        flowBox.setStyle("fontSize", size);
        txtTextIncorrect.setStyle("fontSize", size);
        txtTextCorrect.setStyle("fontSize", size);

        this.txtInputMaxWidth();
      }

      public virtual function FontColor(color:int):void
      {
        flowBox.setStyle("color", color);
        txtTextIncorrect.setStyle("color", color);
        txtTextCorrect.setStyle("color", color);
      }

      public virtual function Bold():void
      {
      }

      public virtual function IsComplete():Boolean
      {
        if (ActivityControl.isCheckAnswer == false)
          return true;

        for each (var item:TextInput in _txtInputs)
          if (item.text == "")
            return false;

        return true;
      }

      public virtual function Init(prompt:Prompt):void
      {
        _prompt = prompt as CloseSentence;

        var separatorPattern:RegExp = new RegExp(Prompt.separatorPatternString, "g");

        var textTemp:String = FactoryRegExp.AddTagToEachWord(FactoryRegExp.instance.U_start(EnumRegExp.G), FactoryRegExp.instance.U_finish(EnumRegExp.G),
                                                                FactoryRegExp.U_START, FactoryRegExp.U_FINISH, prompt.text);
        textTemp = FactoryRegExp.AddTagToEachWord(FactoryRegExp.instance.B_start(EnumRegExp.G), FactoryRegExp.instance.B_finish(EnumRegExp.G),
                                                                FactoryRegExp.B_START, FactoryRegExp.B_FINISH, textTemp);

          //добовляем по два пробела между словами     
          textTemp = textTemp.replace(new RegExp("\\s",'g'),"  ");
          //добовляем пробел между сепаратором и словом спереди    
          textTemp = textTemp.replace(new RegExp("(\\S)("+Prompt.separatorPatternString+")",'g'),"$1 $2");
          //добовляем пробел между сепаратором и словом с сзадиреди  
          textTemp = textTemp.replace(new RegExp("("+Prompt.separatorPatternString+")(\\S)",'g'),"$1 $2"); 
        
          var words:Array = textTemp.split(" ");
          var text:Text = null;

          for each (var word:String in words)
          {
            text = new Text();
            text.addEventListener(FlexEvent.UPDATE_COMPLETE, UpdateComplete_controlHandler);
            text.selectable = false;

            if (word == "" || word == " ")
            {
               text.htmlText += " ";
               text.text = " ";
               flowBox.addChild(text);
            }
            else if (word == Prompt.separator)
            {
               var txtInput:TextInput = new TextInput();
               _txtInputs.push(txtInput);
               flowBox.addChild(txtInput);
            }
            else
            {
               text.htmlText = word == "" ? " " : word;
               flowBox.addChild(text);
            }
          }
        }
  

      public virtual function GetText():String
      {
        return ""
      }

      public virtual function Continue():void
      {
        currentState = state_correct;
      }

      public virtual function SetIncorrect():void
      {
       
        currentState = state_incorrect;
        var index:int = 0;

        for each (var item:UIComponent in flowBox.getChildren())
        {
          if (item is Text)
            txtTextIncorrect.htmlText += (item as Text).htmlText;
          else if (item is TextInput)
          {
            var tempAnswer:String = (item as TextInput).text;
            var color:String = "";

            if (tempAnswer != _prompt.answers[index])
              color = EmbededData.inctance.iconIncorrectColorHex;
            else
              color = EmbededData.inctance.iconCorrectColorHex;

            index++;

            tempAnswer = '<font color="#' + color + '">' + tempAnswer + "</font>"
            txtTextIncorrect.htmlText += tempAnswer;
          }
        }
        //Оставляем по одному пробелу между словами
        txtTextIncorrect.htmlText = txtTextIncorrect.htmlText.replace(FactoryRegExp.instance.DeleteSpaces(EnumRegExp.G),' ');
        txtTextIncorrect.htmlText = txtTextIncorrect.htmlText.replace(new RegExp("SIZE\\s*?=\\s*?\"[0-9]+\"",'g'),'');
        
        if (QuizControl.instance.preferences.isCheckAnswer == false)
            SetCorrect();
      }

      public virtual function SetCorrect():void
      {
         if (currentState == state_incorrect)
             currentState = state_incorrectCorrect;
        else
             currentState = state_correct;
        
        
        txtTextCorrect.htmlText = "";
        var index:int = 0;
        

        for each (var item:UIComponent in flowBox.getChildren())
        {
          if (item is Text)
            txtTextCorrect.htmlText += (item as Text).htmlText;
          else if (item is TextInput)
          {
            txtTextCorrect.htmlText += '<font color="#' + EmbededData.inctance.iconCorrectColorHex + '">' +
                _prompt.answers[index] + "</font>";
            index++;
          }
        }
        //Оставляем по одному пробелу между словами  
        txtTextCorrect.htmlText =  txtTextCorrect.htmlText.replace(FactoryRegExp.instance.DeleteSpaces(EnumRegExp.G),' ');
        txtTextCorrect.htmlText = txtTextCorrect.htmlText.replace(new RegExp("SIZE\\s*?=\\s*?\"[0-9]+\"",'g'),'');

       
      }

      public virtual function DefaultFont():void
      {
        txtTextIncorrect.setStyle("fontFamily", "EMComic");
        txtTextCorrect.setStyle("fontFamily", "EMComic");

        for each (var item:UIComponent in flowBox.getChildren())
          item.setStyle("fontFamily", "EMComic");
      }


      /**
      * Public members/properties
      */
      public function get txtInputs():Array
      {
        return _txtInputs;
      }


      /**
      * Public methods
      */


    

	//	end scripts


    //	supporting function definitions for properties, events, styles, effects
private function _CloseSentenceViewControl_State1_c() : mx.states.State
{
	var temp : mx.states.State = new mx.states.State();
	temp.name = "baseImage";
	temp.overrides = [_CloseSentenceViewControl_RemoveChild1_i()];
	return temp;
}

private function _CloseSentenceViewControl_RemoveChild1_i() : mx.states.RemoveChild
{
	var temp : mx.states.RemoveChild = new mx.states.RemoveChild();
	_CloseSentenceViewControl_RemoveChild1 = temp;
	mx.binding.BindingManager.executeBindings(this, "_CloseSentenceViewControl_RemoveChild1", _CloseSentenceViewControl_RemoveChild1);
	return temp;
}

private function _CloseSentenceViewControl_State2_i() : mx.states.State
{
	var temp : mx.states.State = new mx.states.State();
	_CloseSentenceViewControl_State2 = temp;
	temp.basedOn = "baseImage";
	temp.overrides = [_CloseSentenceViewControl_AddChild1_i()];
	mx.binding.BindingManager.executeBindings(this, "_CloseSentenceViewControl_State2", _CloseSentenceViewControl_State2);
	return temp;
}

private function _CloseSentenceViewControl_AddChild1_i() : mx.states.AddChild
{
	var temp : mx.states.AddChild = new mx.states.AddChild();
	_CloseSentenceViewControl_AddChild1 = temp;
	temp.creationPolicy = "all";
	temp.targetFactory = new mx.core.DeferredInstanceFromFunction(_CloseSentenceViewControl_HBox1_i);
	mx.binding.BindingManager.executeBindings(this, "_CloseSentenceViewControl_AddChild1", _CloseSentenceViewControl_AddChild1);
	return temp;
}

private function _CloseSentenceViewControl_HBox1_i() : mx.containers.HBox
{
	var temp : mx.containers.HBox = new mx.containers.HBox();
	hBoxIcorrect = temp;
	temp.setStyle("verticalAlign", "middle");
	temp.id = "hBoxIcorrect";
	if (!temp.document) temp.document = this;
	temp.addChild(_CloseSentenceViewControl_Image1_i());
	temp.addChild(_CloseSentenceViewControl_Text1_i());
	return temp;
}

private function _CloseSentenceViewControl_Image1_i() : mx.controls.Image
{
	var temp : mx.controls.Image = new mx.controls.Image();
	imgIconIncorrect = temp;
	temp.id = "imgIconIncorrect";
	mx.binding.BindingManager.executeBindings(this, "imgIconIncorrect", imgIconIncorrect);
	if (!temp.document) temp.document = this;
	return temp;
}

private function _CloseSentenceViewControl_Text1_i() : mx.controls.Text
{
	var temp : mx.controls.Text = new mx.controls.Text();
	txtTextIncorrect = temp;
	temp.selectable = false;
	temp.id = "txtTextIncorrect";
	mx.binding.BindingManager.executeBindings(this, "txtTextIncorrect", txtTextIncorrect);
	if (!temp.document) temp.document = this;
	return temp;
}

private function _CloseSentenceViewControl_State3_i() : mx.states.State
{
	var temp : mx.states.State = new mx.states.State();
	_CloseSentenceViewControl_State3 = temp;
	temp.overrides = [_CloseSentenceViewControl_AddChild2_i()];
	mx.binding.BindingManager.executeBindings(this, "_CloseSentenceViewControl_State3", _CloseSentenceViewControl_State3);
	return temp;
}

private function _CloseSentenceViewControl_AddChild2_i() : mx.states.AddChild
{
	var temp : mx.states.AddChild = new mx.states.AddChild();
	_CloseSentenceViewControl_AddChild2 = temp;
	temp.creationPolicy = "all";
	temp.targetFactory = new mx.core.DeferredInstanceFromFunction(_CloseSentenceViewControl_HBox2_c);
	mx.binding.BindingManager.executeBindings(this, "_CloseSentenceViewControl_AddChild2", _CloseSentenceViewControl_AddChild2);
	return temp;
}

private function _CloseSentenceViewControl_HBox2_c() : mx.containers.HBox
{
	var temp : mx.containers.HBox = new mx.containers.HBox();
	temp.setStyle("verticalAlign", "middle");
	if (!temp.document) temp.document = this;
	temp.addChild(_CloseSentenceViewControl_Image2_i());
	temp.addChild(_CloseSentenceViewControl_Text2_i());
	return temp;
}

private function _CloseSentenceViewControl_Image2_i() : mx.controls.Image
{
	var temp : mx.controls.Image = new mx.controls.Image();
	imgIconCorrect = temp;
	temp.id = "imgIconCorrect";
	mx.binding.BindingManager.executeBindings(this, "imgIconCorrect", imgIconCorrect);
	if (!temp.document) temp.document = this;
	return temp;
}

private function _CloseSentenceViewControl_Text2_i() : mx.controls.Text
{
	var temp : mx.controls.Text = new mx.controls.Text();
	txtTextCorrect = temp;
	temp.selectable = false;
	temp.id = "txtTextCorrect";
	mx.binding.BindingManager.executeBindings(this, "txtTextCorrect", txtTextCorrect);
	if (!temp.document) temp.document = this;
	return temp;
}

private function _CloseSentenceViewControl_State4_i() : mx.states.State
{
	var temp : mx.states.State = new mx.states.State();
	_CloseSentenceViewControl_State4 = temp;
	temp.overrides = [_CloseSentenceViewControl_RemoveChild2_i()];
	mx.binding.BindingManager.executeBindings(this, "_CloseSentenceViewControl_State4", _CloseSentenceViewControl_State4);
	return temp;
}

private function _CloseSentenceViewControl_RemoveChild2_i() : mx.states.RemoveChild
{
	var temp : mx.states.RemoveChild = new mx.states.RemoveChild();
	_CloseSentenceViewControl_RemoveChild2 = temp;
	mx.binding.BindingManager.executeBindings(this, "_CloseSentenceViewControl_RemoveChild2", _CloseSentenceViewControl_RemoveChild2);
	return temp;
}

/**
 * @private
 **/
public function ___CloseSentenceViewControl_Canvas1_creationComplete(event:mx.events.FlexEvent):void
{
	creationCompleteHandler(event)
}


	//	binding mgmt
    private function _CloseSentenceViewControl_bindingsSetup():Array
    {
        var result:Array = [];
        var binding:Binding;

        binding = new mx.binding.Binding(this,
            function():flash.display.DisplayObject
            {
                return (flowBox);
            },
            function(_sourceFunctionReturnValue:flash.display.DisplayObject):void
            {
				
                _CloseSentenceViewControl_RemoveChild1.target = _sourceFunctionReturnValue;
            },
            "_CloseSentenceViewControl_RemoveChild1.target");
        result[0] = binding;
        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (state_incorrect);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                _CloseSentenceViewControl_State2.name = _sourceFunctionReturnValue;
            },
            "_CloseSentenceViewControl_State2.name");
        result[1] = binding;
        binding = new mx.binding.Binding(this,
            function():mx.core.UIComponent
            {
                return (vBox);
            },
            function(_sourceFunctionReturnValue:mx.core.UIComponent):void
            {
				
                _CloseSentenceViewControl_AddChild1.relativeTo = _sourceFunctionReturnValue;
            },
            "_CloseSentenceViewControl_AddChild1.relativeTo");
        result[2] = binding;
        binding = new mx.binding.Binding(this,
            function():Number
            {
                return (_fontSize);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                imgIconIncorrect.width = _sourceFunctionReturnValue;
            },
            "imgIconIncorrect.width");
        result[3] = binding;
        binding = new mx.binding.Binding(this,
            function():Number
            {
                return (_fontSize);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                imgIconIncorrect.height = _sourceFunctionReturnValue;
            },
            "imgIconIncorrect.height");
        result[4] = binding;
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
        result[5] = binding;
        binding = new mx.binding.Binding(this,
            function():Number
            {
                return (ActivityControl.MAX_WIDTH - 80 - _fontSize);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                txtTextIncorrect.maxWidth = _sourceFunctionReturnValue;
            },
            "txtTextIncorrect.maxWidth");
        result[6] = binding;
        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (state_incorrectCorrect);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                _CloseSentenceViewControl_State3.name = _sourceFunctionReturnValue;
            },
            "_CloseSentenceViewControl_State3.name");
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
				
                _CloseSentenceViewControl_State3.basedOn = _sourceFunctionReturnValue;
            },
            "_CloseSentenceViewControl_State3.basedOn");
        result[8] = binding;
        binding = new mx.binding.Binding(this,
            function():mx.core.UIComponent
            {
                return (vBox);
            },
            function(_sourceFunctionReturnValue:mx.core.UIComponent):void
            {
				
                _CloseSentenceViewControl_AddChild2.relativeTo = _sourceFunctionReturnValue;
            },
            "_CloseSentenceViewControl_AddChild2.relativeTo");
        result[9] = binding;
        binding = new mx.binding.Binding(this,
            function():Number
            {
                return (_fontSize);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                imgIconCorrect.width = _sourceFunctionReturnValue;
            },
            "imgIconCorrect.width");
        result[10] = binding;
        binding = new mx.binding.Binding(this,
            function():Number
            {
                return (_fontSize);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                imgIconCorrect.height = _sourceFunctionReturnValue;
            },
            "imgIconCorrect.height");
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
            function():Number
            {
                return (ActivityControl.MAX_WIDTH - 80 - _fontSize);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                txtTextCorrect.maxWidth = _sourceFunctionReturnValue;
            },
            "txtTextCorrect.maxWidth");
        result[13] = binding;
        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (state_correct);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                _CloseSentenceViewControl_State4.name = _sourceFunctionReturnValue;
            },
            "_CloseSentenceViewControl_State4.name");
        result[14] = binding;
        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (state_incorrectCorrect);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                _CloseSentenceViewControl_State4.basedOn = _sourceFunctionReturnValue;
            },
            "_CloseSentenceViewControl_State4.basedOn");
        result[15] = binding;
        binding = new mx.binding.Binding(this,
            function():flash.display.DisplayObject
            {
                return (hBoxIcorrect);
            },
            function(_sourceFunctionReturnValue:flash.display.DisplayObject):void
            {
				
                _CloseSentenceViewControl_RemoveChild2.target = _sourceFunctionReturnValue;
            },
            "_CloseSentenceViewControl_RemoveChild2.target");
        result[16] = binding;
        binding = new mx.binding.Binding(this,
            function():Number
            {
                return (ActivityControl.MAX_WIDTH - 80);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                flowBox.width = _sourceFunctionReturnValue;
            },
            "flowBox.width");
        result[17] = binding;
        binding = new mx.binding.Binding(this,
            function():Number
            {
                return (ActivityControl.MAX_WIDTH - 80 - _fontSize);
            },
            function(_sourceFunctionReturnValue:Number):void
            {
				
                flowBox.maxWidth = _sourceFunctionReturnValue;
            },
            "flowBox.maxWidth");
        result[18] = binding;

        return result;
    }

    private function _CloseSentenceViewControl_bindingExprs():void
    {
        var destination:*;
		[Binding(id='0')]
		destination = (flowBox);
		[Binding(id='1')]
		destination = (state_incorrect);
		[Binding(id='2')]
		destination = (vBox);
		[Binding(id='3')]
		destination = (_fontSize);
		[Binding(id='4')]
		destination = (_fontSize);
		[Binding(id='5')]
		destination = (EmbededData.inctance.iconIncorrect);
		[Binding(id='6')]
		destination = (ActivityControl.MAX_WIDTH - 80 - _fontSize);
		[Binding(id='7')]
		destination = (state_incorrectCorrect);
		[Binding(id='8')]
		destination = (state_incorrect);
		[Binding(id='9')]
		destination = (vBox);
		[Binding(id='10')]
		destination = (_fontSize);
		[Binding(id='11')]
		destination = (_fontSize);
		[Binding(id='12')]
		destination = (EmbededData.inctance.iconCorrect);
		[Binding(id='13')]
		destination = (ActivityControl.MAX_WIDTH - 80 - _fontSize);
		[Binding(id='14')]
		destination = (state_correct);
		[Binding(id='15')]
		destination = (state_incorrectCorrect);
		[Binding(id='16')]
		destination = (hBoxIcorrect);
		[Binding(id='17')]
		destination = (ActivityControl.MAX_WIDTH - 80);
		[Binding(id='18')]
		destination = (ActivityControl.MAX_WIDTH - 80 - _fontSize);
    }

    /**
     * @private
     **/
    public static function set watcherSetupUtil(watcherSetupUtil:IWatcherSetupUtil):void
    {
        (CloseSentenceViewControl)._watcherSetupUtil = watcherSetupUtil;
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
