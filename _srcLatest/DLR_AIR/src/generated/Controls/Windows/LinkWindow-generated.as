
/**
 * 	Generated by mxmlc 2.0
 *
 *	Package:	Controls.Windows
 *	Class: 		LinkWindow
 *	Source: 	P:\Active\EvanMoorEducationalPublishers\_svnPublic\DLR\_srcLatest\DLR_AIR\src\Controls\Windows\LinkWindow.mxml
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
import mx.containers.Canvas;
import mx.controls.Button;
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
import mx.styles.*;



//	begin class def

public class LinkWindow
	extends mx.containers.Canvas
{

	//	instance variables
	[Bindable]
/**
 * @private
 **/
	public var lbTitle : mx.controls.Label;

	[Bindable]
/**
 * @private
 **/
	public var lnkBtnLink : mx.controls.LinkButton;

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
    width: 314,
    height: 132,
    childDescriptors: [
      new mx.core.UIComponentDescriptor({
        type: mx.controls.Label
        ,
        id: "lbTitle"
        ,
        propertiesFactory: function():Object { return {
          x: 10,
          width: 294,
          selectable: false,
          y: 10
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.controls.Text
        ,
        id: "txtContent"
        ,
        stylesFactory: function():void {
          this.textAlign = "center";
        }
        ,
        propertiesFactory: function():Object { return {
          width: 294,
          selectable: false,
          y: 36,
          x: 10
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.controls.Button
        ,
        events: {
          click: "___LinkWindow_Button1_click",
          rollOver: "___LinkWindow_Button1_rollOver",
          rollOut: "___LinkWindow_Button1_rollOut"
        }
        ,
        propertiesFactory: function():Object { return {
          label: "OK",
          styleName: "ButtonOKAlerWindow",
          width: 55,
          height: 28,
          x: 129.5,
          y: 92
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.controls.LinkButton
        ,
        id: "lnkBtnLink"
        ,
        events: {
          click: "__lnkBtnLink_click"
        }
        ,
        propertiesFactory: function():Object { return {
          x: 10,
          y: 64,
          width: 294
        }}
      })
    ]
  }}
})

	//	constructor (Flex display object)
    /**
     * @private
     **/
	public function LinkWindow()
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
			this.backgroundImage = _embed_mxml_style_images_AlertWindow_bkg_jpg_1933358855;
		};



		//	properties
		this.width = 314;
		this.height = 132;

		//	events

	}

	//	initialize()
    /**
     * @private
     **/
	override public function initialize():void
	{
 		mx_internal::setDocumentDescriptor(_documentDescriptor_);



		super.initialize();
	}

	//	scripts
	//	<Script>, line 6 - 59

      import Model.EmbededData;
      import flash.net.navigateToURL;
      import mx.managers.CursorManager;
      import mx.core.UIComponent;
      import mx.managers.PopUpManager;

      private var _link:String = "";

      private var HandIcon:Class = EmbededData.inctance.fingerIcon;
      private var cursorID:int;

      public static function Show(parent:UIComponent, headerText:String, alertText:String, link:String):LinkWindow
      {
        var linkWindow:LinkWindow = new LinkWindow();
        linkWindow.link = link;

        PopUpManager.addPopUp(linkWindow, parent, true);
        PopUpManager.centerPopUp(linkWindow);

        linkWindow.lnkBtnLink.label = link;
        linkWindow.lbTitle.text = headerText;
        linkWindow.txtContent.text = alertText;

        return linkWindow;
      }

      public function set link(value:String):void
      {
        _link = value;
      }

      private function Click_btnOK(event:MouseEvent):void
      {
        PopUpManager.removePopUp(this);
      }

      private function RollOver_btnOK(event:MouseEvent):void
      {
        cursorID = CursorManager.setCursor(HandIcon);
      }

      private function RollOut_btnOK(event:MouseEvent):void
      {
        CursorManager.removeCursor(cursorID);
      }

      private function Click_lnkBtnLinkHandler(event:MouseEvent):void
      {
        navigateToURL(new URLRequest(_link));
      }


    

	//	end scripts


    //	supporting function definitions for properties, events, styles, effects
/**
 * @private
 **/
public function ___LinkWindow_Button1_click(event:flash.events.MouseEvent):void
{
	Click_btnOK(event)
}

/**
 * @private
 **/
public function ___LinkWindow_Button1_rollOver(event:flash.events.MouseEvent):void
{
	RollOver_btnOK(event)
}

/**
 * @private
 **/
public function ___LinkWindow_Button1_rollOut(event:flash.events.MouseEvent):void
{
	RollOut_btnOK(event)
}

/**
 * @private
 **/
public function __lnkBtnLink_click(event:flash.events.MouseEvent):void
{
	Click_lnkBtnLinkHandler(event)
}





	//	embed carrier vars
[Embed(source='style/images/AlertWindow/bkg.jpg')]
 private var _embed_mxml_style_images_AlertWindow_bkg_jpg_1933358855:Class;

	//	end embed carrier vars


//	end class def
}

//	end package def
}