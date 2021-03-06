
/**
 * 	Generated by mxmlc 2.0
 *
 *	Package:	Controls.Windows
 *	Class: 		AboutWindow
 *	Source: 	P:\Active\EvanMoorEducationalPublishers\_svnPublic\DLR\_srcLatest\DLR_AIR\src\Controls\Windows\AboutWindow.mxml
 *	Template: 	flex2/compiler/mxml/gen/ClassDef.vm
 *	Time: 		2010.07.27 18:32:04 EEST
 */

package Controls.Windows
{

import flash.accessibility.*;
import flash.data.*;
import flash.debugger.*;
import flash.desktop.*;
import flash.display.*;
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
import mx.controls.Button;
import mx.controls.Image;
import mx.controls.Label;
import mx.controls.LinkButton;
import mx.controls.Text;
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

public class AboutWindow
	extends mx.containers.Canvas
	implements mx.binding.IBindingClient
{

	//	instance variables
/**
 * @private
 **/
	public var _AboutWindow_Image1 : mx.controls.Image;

/**
 * @private
 **/
	public var _AboutWindow_Image2 : mx.controls.Image;

/**
 * @private
 **/
	public var _AboutWindow_Label2 : mx.controls.Label;

	[Bindable]
/**
 * @private
 **/
	public var btnClose : mx.controls.Button;

	[Bindable]
/**
 * @private
 **/
	public var lbVersion : mx.controls.Label;

	[Bindable]
/**
 * @private
 **/
	public var lnkBtnViewTerms : mx.controls.LinkButton;

	[Bindable]
/**
 * @private
 **/
	public var txtContent : mx.controls.Text;


	//	type-import dummies


	//	Container document descriptor
private var _documentDescriptor_ : mx.core.UIComponentDescriptor = 
new mx.core.UIComponentDescriptor({
  type: mx.containers.Canvas
  ,
  propertiesFactory: function():Object { return {
    width: 290,
    height: 508,
    childDescriptors: [
      new mx.core.UIComponentDescriptor({
        type: mx.controls.Text
        ,
        id: "txtContent"
        ,
        stylesFactory: function():void {
          this.fontSize = 9;
          this.fontFamily = "Arial";
          this.color = 0;
          this.fontWeight = "bold";
        }
        ,
        propertiesFactory: function():Object { return {
          x: 10,
          y: 140,
          width: 270,
          height: 276,
          selectable: false
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.controls.Label
        ,
        id: "lbVersion"
        ,
        stylesFactory: function():void {
          this.fontSize = 9;
          this.fontFamily = "Arial";
          this.fontWeight = "bold";
          this.color = 10856104;
        }
        ,
        propertiesFactory: function():Object { return {
          x: 10,
          y: 115,
          width: 270,
          selectable: false
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.controls.Label
        ,
        id: "_AboutWindow_Label2"
        ,
        stylesFactory: function():void {
          this.fontSize = 16;
          this.fontWeight = "bold";
          this.color = 0;
          this.fontFamily = "Arial";
        }
        ,
        propertiesFactory: function():Object { return {
          x: 10,
          y: 82,
          width: 270
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.controls.Image
        ,
        id: "_AboutWindow_Image1"
        ,
        propertiesFactory: function():Object { return {
          x: 10,
          y: 10,
          width: 64,
          height: 64
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.controls.Image
        ,
        id: "_AboutWindow_Image2"
        ,
        propertiesFactory: function():Object { return {
          x: 10,
          y: 424,
          width: 100,
          height: 42
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.controls.Button
        ,
        id: "btnClose"
        ,
        events: {
          click: "__btnClose_click",
          mouseOver: "__btnClose_mouseOver",
          mouseOut: "__btnClose_mouseOut"
        }
        ,
        propertiesFactory: function():Object { return {
          x: 230,
          y: 10,
          styleName: "CloseAbout",
          width: 48,
          height: 20
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.controls.LinkButton
        ,
        id: "lnkBtnViewTerms"
        ,
        events: {
          click: "__lnkBtnViewTerms_click"
        }
        ,
        stylesFactory: function():void {
          this.color = 2097919;
          this.themeColor = 16777215;
          this.textDecoration = "underline";
        }
        ,
        propertiesFactory: function():Object { return {
          x: 10,
          y: 474,
          label: "View Terms and Conditions of Use",
          alpha: 1.0
        }}
      })
    ]
  }}
})

	//	constructor (Flex display object)
    /**
     * @private
     **/
	public function AboutWindow()
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
			this.backgroundImage = _embed_mxml_style_images_AboutWindow_bkg_jpg_4656117;
			this.backgroundColor = 16777215;
			this.borderStyle = "solid";
			this.borderColor = 10856104;
			this.cornerRadius = 0;
		};



		//	properties
		this.width = 290;
		this.height = 508;

		//	events
		this.addEventListener("creationComplete", ___AboutWindow_Canvas1_creationComplete);

	}

	//	initialize()
    /**
     * @private
     **/
	override public function initialize():void
	{
 		mx_internal::setDocumentDescriptor(_documentDescriptor_);

		var bindings:Array = _AboutWindow_bindingsSetup();
		var watchers:Array = [];

		var target:AboutWindow = this;

		if (_watcherSetupUtil == null)
		{
			var watcherSetupUtilClass:Object = getDefinitionByName("_Controls_Windows_AboutWindowWatcherSetupUtil");
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
	//	<Script>, line 7 - 79

      import Model.EmbededData;
      import mx.containers.Tile;
     // import org.alivepdf.viewing.Title;
      import mx.core.Application;
      import mx.managers.CursorManager;
      import mx.managers.PopUpManager;
      import mx.core.UIComponent;
      import mx.events.FlexEvent;

      private var _fingerIcon:Class = EmbededData.inctance.fingerIcon;

      private var cursorID:int;

      private var _parent:UIComponent;

      public static function Show(parent:UIComponent, version:String):void
      {
        var aboutWindow:AboutWindow = new AboutWindow();

        PopUpManager.addPopUp(aboutWindow, parent, true);
        PopUpManager.centerPopUp(aboutWindow);

        aboutWindow.lbVersion.text = "Version: " + version;
        aboutWindow.Parent = parent;
      }

      private function CreationComplete(event:FlexEvent):void
      {
        txtContent.htmlText = "PROJECT DIRECTOR: Keli Winters<br/><br/>" +
                              "PROJECT MANAGER: Konstantin Sashchuk<br/><br/>" +
                              "PROJECT COORDINATOR: Vlad Shrubek<br/><br/>" +
                              "APPLICATION DEVELOPMENT: Evgeniy Velikiy, Sergey Ruban<br/><br/>" +
                              "DESIGN: Irina Cherbina<br/><br/>" +
                              "EDITORIAL CONTENT SUPPORT AND COPY-EDIT:  Marilyn Evans, Michele Nizza, Joanie Sherlock<br/><br/>" +
                              "UPDATE AUTOMATION: Evan Lynch<br/><br/>" +
                              "QUALITY ASSURANCE, PACKAGING and INSTALLATION: " +
                              "Bret Bailey, Matthew Warren<br/><br/>" +

                              "Copyright © 2010, Evan-Moor Corp.  All rights reserved.";


      }

      private function Click_btnClose(event:MouseEvent):void
      {
        PopUpManager.removePopUp(this);
      }

      private function MouseOver_btnClose(event:MouseEvent):void
      {
        cursorID = CursorManager.setCursor(_fingerIcon);
      }

      private function MouseOut_btnClose(event:MouseEvent):void
      {
        CursorManager.removeCursor(cursorID);
      }

      public function set Parent(value:UIComponent):void
      {
        _parent = value;
      }

      private function Click_lnkBtnViewTerms(event:MouseEvent):void
      {
        TermsAndConditionsOfUseWindow.Show(_parent, "With the purchase of electronic materials from Evan-Moor Educational Publishers, you are granted a single-classroom user license which entitles you to use or duplicate these materials for a single classroom (or home) only. Additionally, these electronic materials may be transmitted to others within the community of a single classroom (or home) via a secure intranet, website, electronic bulletin board, FTP site, or newsgroup. Sharing the materials or making copies for additional classrooms or schools or for other individuals is prohibited. Use of the materials for anything other than classroom instruction is a violation of Evan-Moor Educational Publishers' intellectual property rights. Evan-Moor Corporation retains full intellectual property rights on all its products, and these rights extend to electronic editions of complete books and individual teaching activities offered for sale in digital format.<br/><br/>" +

"If you would like to use Evan-Moor software for additional purposes not outlined in the single-classroom license (described above), please submit an Application to Use Copyrighted Materials form by fax or mail to Evan-Moor Educational Publishers, Attn: Copyrights.");

      }

    

	//	end scripts


    //	supporting function definitions for properties, events, styles, effects
/**
 * @private
 **/
public function ___AboutWindow_Canvas1_creationComplete(event:mx.events.FlexEvent):void
{
	CreationComplete(event)
}

/**
 * @private
 **/
public function __btnClose_click(event:flash.events.MouseEvent):void
{
	Click_btnClose(event)
}

/**
 * @private
 **/
public function __btnClose_mouseOver(event:flash.events.MouseEvent):void
{
	MouseOver_btnClose(event)
}

/**
 * @private
 **/
public function __btnClose_mouseOut(event:flash.events.MouseEvent):void
{
	MouseOut_btnClose(event)
}

/**
 * @private
 **/
public function __lnkBtnViewTerms_click(event:flash.events.MouseEvent):void
{
	Click_lnkBtnViewTerms(event)
}


	//	binding mgmt
    private function _AboutWindow_bindingsSetup():Array
    {
        var result:Array = [];
        var binding:Binding;

        binding = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (Application.application.Titile);
                var stringResult:String = (result == undefined ? null : String(result));
                return stringResult;
            },
            function(_sourceFunctionReturnValue:String):void
            {
				
                _AboutWindow_Label2.text = _sourceFunctionReturnValue;
            },
            "_AboutWindow_Label2.text");
        result[0] = binding;
        binding = new mx.binding.Binding(this,
            function():Object
            {
                return (Application.application.iconApp);
            },
            function(_sourceFunctionReturnValue:Object):void
            {
				
                _AboutWindow_Image1.source = _sourceFunctionReturnValue;
            },
            "_AboutWindow_Image1.source");
        result[1] = binding;
        binding = new mx.binding.Binding(this,
            function():Object
            {
                return (EmbededData.inctance.logo);
            },
            function(_sourceFunctionReturnValue:Object):void
            {
				
                _AboutWindow_Image2.source = _sourceFunctionReturnValue;
            },
            "_AboutWindow_Image2.source");
        result[2] = binding;

        return result;
    }

    private function _AboutWindow_bindingExprs():void
    {
        var destination:*;
		[Binding(id='0')]
		destination = (Application.application.Titile);
		[Binding(id='1')]
		destination = (Application.application.iconApp);
		[Binding(id='2')]
		destination = (EmbededData.inctance.logo);
    }

    /**
     * @private
     **/
    public static function set watcherSetupUtil(watcherSetupUtil:IWatcherSetupUtil):void
    {
        (AboutWindow)._watcherSetupUtil = watcherSetupUtil;
    }

    private static var _watcherSetupUtil:IWatcherSetupUtil;



	//	embed carrier vars
[Embed(source='style/images/AboutWindow/bkg.jpg')]
 private var _embed_mxml_style_images_AboutWindow_bkg_jpg_4656117:Class;

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
