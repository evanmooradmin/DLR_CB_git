package Controls.AnswerControls
{
  import Model.Answers.Answer;
  
  import interfaces.IDirection;
  import interfaces.IFontStyle;
  
  import mx.containers.Canvas;
  import mx.core.ScrollPolicy;
  import mx.core.UIComponent;

  public class AnswerControl extends Canvas implements IFontStyle, IDirection
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\AnswerControls\AnswerControl.as
    *
    *  Abstract:
    *     This is base control for all answer controls
    *
    *  Author:
    *     Evgenij Welikij   16-October-2009
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
    protected var _answer:Answer;
    protected var _isCorrect:Boolean = false;
    protected var _isSelected:Boolean = false;
    protected var _control:UIComponent = new UIComponent();

    protected var _isDefault:Boolean = true;

    protected var _fontName:String;
    protected var _fontSize:int;
    protected var _fontColor:int;
    
    private var _fontNameChanged:Boolean = false;
    private var _fontSizeChanged:Boolean = false;
    private var _fontColorChanged:Boolean = false;
   
    
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
    public function AnswerControl(answer:Answer)
    {
      super();
      this._answer = answer;
      
      this.verticalScrollPolicy = ScrollPolicy.OFF;
      this.horizontalScrollPolicy = ScrollPolicy.OFF;
    }


    /**
    * Virtuals methods
    */
    protected override function commitProperties():void
    {
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
    
    
    protected override function createChildren():void
    {
      super.createChildren();

      Init(this._answer);

      fontName = _fontName;
      fontSize = _fontSize;
      fontColor = _fontColor;
    }

    public virtual function CheckAnswer():void
    {
        
    }

    public virtual function ShowAnswer():void
    {
    }
    
    public virtual function ShowResult():void
    {
    } 
    
    public virtual function Continue():void
    {
    }

    public virtual function IsComplete():Boolean
    {
      return _isSelected;
    }

    public virtual function FontName():void
    {
     // this._fontName = name;
    }

    public virtual function FontSize():void
    {
     // this._fontSize = size;
    }

    public virtual function FontColor():void
    {
      //this._fontColor = color;
    }

    public virtual function Bold():void
    {
      if (_control != null)
        _control.setStyle("fontWeight", "bold");
    }

    public virtual function Init(answer:Answer):void
    {
    }

    public virtual function GetText():String
    {
      return "";
    }

    public virtual function DefaultFont():void
    {
      (_control as IFontStyle).DefaultFont();
    }

    public virtual function set isDefault(value:Boolean):void
    {
      _isDefault = value;
    }

    //Метод необходим что бы сохранять результаты которые ввел пользователь
    public virtual function SaveResults():void
    {
    }
    
    //Метод необходим что бы загрузить результаты которые ввел пользователь
    public virtual function LoadResults(needCheckAnswer:Boolean = false):void
    {
    }
    
    /**
    * Public members/properties
    */
    public function get answer():Answer
    {
      return _answer;
    }

    public function get isCorrect():Boolean
    {
      return _isCorrect;
    }

    public function get isSelected():Boolean
    {
      return _isSelected;
    }
    
    public function set fontName(name:String):void
    {
      if (name == "Default")
          _isDefault = true;
      else 
          _isDefault = false; 
      
      this._fontName = name;
      this._fontNameChanged = true;
      invalidateProperties();
    }

    public function set fontSize(size:int):void
    {
      this._fontSize = size;
      this._fontSizeChanged = true;
      invalidateProperties();
    }
    
    public function set fontColor(color:int):void 
    {
      this._fontColor = color;
      this._fontColorChanged = true;
      invalidateProperties();
    }
     
    /**
    * Public methods
    */
    public function Disable():void
    {
      this.enabled = false;
    }

    public function Enable():void
    {
      this.enabled = true;
    }


  }
}