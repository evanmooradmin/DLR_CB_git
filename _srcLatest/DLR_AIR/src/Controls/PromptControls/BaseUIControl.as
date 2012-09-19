package Controls.PromptControls
{
  import flash.display.DisplayObject;
  
  import interfaces.IBasePrompt;
  import interfaces.IControlView;
  import interfaces.IDirection;
  import interfaces.IFontStyle;
  import interfaces.IResult;
  
  import mx.containers.Canvas;

  public class BaseUIControl extends Canvas implements IDirection, IFontStyle, IResult, IControlView
  {
  /***************************************************************
    *
    *  Module Name:
    *     Controls\PromptControls\BaseIUControl.as
    *
    *  Abstract:
    *     Base control for all ui components
    *
    *  Author:
    *     Valeria Shiryaeva    10-March-2010
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
    private var _children:Array = [];
    
    protected var _fontName:String;
    [Bindable]
    protected var _fontSize:int;
    protected var _fontColor:int;
    
    protected var _fontNameChanged:Boolean = false;
    protected var _fontSizeChanged:Boolean = false;
    protected var _fontColorChanged:Boolean = false;
    
    protected var _isCorrect:Boolean = false;

    /**
    * Private methods
    */


    /**
    * Events handler
    */


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function BaseUIControl()
    {
      super();
    }


    /**
    * Virtuals methods
    */
    protected override function commitProperties():void
    {
     for each (var item:DisplayObject in _children)
              this.addChild(item);
              
     if (_fontNameChanged)
          FontName();
     if (_fontSizeChanged)
          FontSize();
     if (_fontColorChanged)
          FontColor();
          
      _fontNameChanged = false;
      _fontSizeChanged = false;  
      _fontColorChanged = false;         
     
     super.commitProperties();   
    }
    
    //interface IDirection
    public virtual function Init(promptAnswer:IBasePrompt):void{}
    public virtual function Action():void{}
//    public virtual function CheckAnswer():void{}
//    public virtual function ShowAnswer():void{}
//    public virtual function Continue():void{}

    //interface IFontStyle
    public virtual function FontName():void
    {
      this.setStyle("fontFamily", _fontName);
    }

    public virtual function FontSize():void
    {
      this.setStyle("fontSize", _fontSize);
    }

    public virtual function FontColor():void
    {
      this.setStyle("color", _fontColor);
    }

    public virtual function Bold():void{}

    public virtual function DefaultFont():void{}
    //interface IResult
    public virtual function SetCorrect():void{}
    public virtual function SetIncorrect():void{}

    public virtual function IsComplete():Boolean {return true;}
    public virtual function GetResult():* {return null;}
    
    public virtual function SaveResults():void{}
    
    public virtual function LoadResults(needCheckAnswer:Boolean = false):void{}
    
    public virtual function CheckAnswer():void{}
    public virtual function ShowAnswer():void{}
    public virtual function Continue():void{}
    
    
    public virtual function get isCorrect():Boolean
    {
      return _isCorrect
    }
    
    public virtual function GetText():String
    {
      return "";
    }
   
    /**
    * Public members/properties
    */
    public function set children(value:*):void
    {
      if (value is DisplayObject)
        _children = [value];
      else
        _children = value;

      invalidateProperties();
    }
    
    
    public function set fontName(name:String):void
    {
      if (this._fontName == name)
          return   
      this._fontName = name;
      this._fontNameChanged = true;
      invalidateProperties();
    }

    public function set fontSize(size:int):void
    {
      if (this._fontSize == size)
          return   
      this._fontSize = size;
      this._fontSizeChanged = true;
      invalidateProperties();
    }
    
    public function set fontColor(color:int):void 
    {
      if (this._fontColor == color)
          return   
      this._fontColor = color;
      this._fontColorChanged = true;
      invalidateProperties();
    }

    /**
    * Public methods
    */


  }
}