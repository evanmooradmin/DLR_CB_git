package Controls.Enviroment
{
  import Controls.ActivityControl;
  
  import Model.FactoryRegExp;
  
  import interfaces.em.EMUserTypes;
  
  import mx.containers.Canvas;
  import mx.containers.HBox;
  import mx.containers.VBox;
  import mx.controls.Label;
  import mx.controls.TextArea;
  import mx.controls.TextInput;
  import mx.core.ScrollPolicy;
  import mx.events.FlexEvent;

  public class ScoreContainer extends Canvas
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\OtherControls\ScoreContainer.as
    *
    *  Abstract:
    *    Контрол необходим для вывода 2-x текстовых полей со значениями
    *     
    *  Author:
    *     Ruban Sergey   21-March-2011
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
    private var _vbBorderContainer:VBox; 
    private var _hbScoreContainer:HBox;
    private var _hbCommentContainer:HBox;
    
    private var _commentsArea:TextArea;
    
    private var _txtAnswer:String;
    private var _txtValueLeft:String;
    private var _txtValueRight:String;
    private var _txtInputLeft:TextInput;
    private var _txtInputRight:TextInput;
    private var _txtComment:String = "";
    
    private var _label_1:Label;
    private var _label_2:Label;
    private var _label_3:Label;
    private var _label_4:Label;
    private var _label_5:Label;
      
    protected var _fontName:String;
    protected var _fontSize:int;
    protected var _fontColor:int;
    
    private var _fontNameChanged:Boolean = false;
    private var _fontSizeChanged:Boolean = false;
    private var _fontColorChanged:Boolean = false;
    
    //Узкий контрол или нет
    private var _isControlNarrow:Boolean = false;
  
     
    /**
    * Private methods
    */
     private virtual function FontSize(size:int):void
    {
      size = 17;
      if (_txtInputLeft != null)
          _txtInputLeft.setStyle("fontSize", size);
      if (_txtInputRight != null)    
          _txtInputRight.setStyle("fontSize", size);
      if (_label_1 != null)
          _label_1.setStyle("fontSize", size);  
      if (_label_2 != null)
          _label_2.setStyle("fontSize", size);  
      if (_label_3 != null)
          _label_3.setStyle("fontSize", size);  
      if (_label_4 != null)
          _label_4.setStyle("fontSize", size);
      if (_label_5 != null)
          _label_5.setStyle("fontSize", size);    
      if (_commentsArea != null)
          _commentsArea.setStyle("fontSize", 18);           
      _fontSize = size;
    }      
      
    private virtual function FontName(name:String):void
    {
       _fontName = name; 
       if (name == "Default")
       {
          DefaultFont();
          return 
       }  
       if (_txtInputLeft != null)
            _txtInputLeft.setStyle("fontFamily", name);
       if (_txtInputRight != null)   
            _txtInputRight.setStyle("fontFamily", name);
       if (_label_1 != null)      
           _label_1.setStyle("fontFamily", name);
       if (_label_2 != null)      
           _label_2.setStyle("fontFamily", name);
       if (_label_3 != null)      
           _label_3.setStyle("fontFamily", name);          
       if (_label_4 != null)      
           _label_4.setStyle("fontFamily", name);
       if (_label_5 != null)      
           _label_5.setStyle("fontFamily", name);       
       if (_commentsArea != null)      
           _commentsArea.setStyle("fontFamily", name);                  
    }
    
    private virtual function FontColor(color:int):void 
    {
      
       if (_txtInputLeft != null)
           _txtInputLeft.setStyle("color", color);
       if (_txtInputRight != null)   
           _txtInputRight.setStyle("color", color);   
       if (_label_1 != null)
           _label_1.setStyle("color", color); 
       if (_label_2 != null)
           _label_2.setStyle("color", 0x606060); 
       if (_label_3 != null)
           _label_3.setStyle("color", 0x606060); 
       if (_label_4 != null)
           _label_4.setStyle("color", color);
       if (_label_5 != null)
           _label_5.setStyle("color", color);           
       if (_commentsArea != null)
           _commentsArea.setStyle("color", 0x606060);               
      _fontColor = color;
    }
    
    private function initComment():HBox
    {
       _label_4 = new Label();
      //Создаем контейнер содержащий коментарии
      _hbCommentContainer = new HBox();
      _hbCommentContainer.percentWidth = 98;
      _hbCommentContainer.verticalScrollPolicy = ScrollPolicy.OFF;
      _hbCommentContainer.horizontalScrollPolicy = ScrollPolicy.OFF; 
      _commentsArea = new TextArea();
      _commentsArea.setStyle("styleName", "listVerticalScrollBar");
      _commentsArea.percentWidth = 100;
      _commentsArea.height = 70;
      _commentsArea.text = _txtComment;
      
      if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport)
          _label_4.htmlText = "<b>Comment to Student:</b>";  
      else
      {  
          _label_4.htmlText = "<b>Comment</b>";
          _commentsArea.editable = false;   
          _commentsArea.selectable = false;
          _commentsArea.setStyle("focusAlpha", "0");        
      }

      _hbCommentContainer.addChild(_label_4);
      _hbCommentContainer.addChild(_commentsArea);
     
     return _hbCommentContainer;  
    }
    
    private function initScore():HBox
    {
      //Создаем контейнер который содержит скоры
      _hbScoreContainer = new HBox();
      _hbScoreContainer.percentWidth = 98;
      _hbScoreContainer.verticalScrollPolicy = ScrollPolicy.OFF;
      _hbScoreContainer.horizontalScrollPolicy = ScrollPolicy.OFF; 
      
      _label_1 = new Label();
      
      if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport)
      {
       
        _label_1.htmlText = "<b>Score:</b>"; 
        _label_2 = new Label();
        _label_2.text = "out of";
        _label_3 = new Label();
        _label_3.text = "points";
     
        _txtInputLeft = new TextInput();
        _txtInputRight = new TextInput();
        _txtInputLeft.setStyle("borderColor", "0");
        _txtInputRight.setStyle("borderColor", "0");
        _txtInputLeft.setStyle("focusAlpha", "0");
        _txtInputRight.setStyle("focusAlpha", "0");
        _txtInputLeft.maxChars = 3;
        _txtInputRight.maxChars = 3;
        _txtInputLeft.minWidth = 40;
        _txtInputRight.minWidth = 40;
        _txtInputLeft.setStyle("textAlign", "center");
        _txtInputRight.setStyle("textAlign", "center");
        _txtInputLeft.text  = _txtValueLeft; 
        _txtInputRight.text = _txtValueRight;
        _hbScoreContainer.addChild(_label_1);
        _hbScoreContainer.addChild(_txtInputLeft);
        _hbScoreContainer.addChild(_label_2);
        _hbScoreContainer.addChild(_txtInputRight);
        _hbScoreContainer.addChild(_label_3);
      }
      else  
      {
        _label_1.htmlText = "<b>Score:</b>   <b>" + _txtValueLeft + "</b> out of <b>" + _txtValueRight + "</b> points awarded"; 
        _hbScoreContainer.addChild(_label_1);     
      } 
       return _hbScoreContainer
    }
    
    
    
     private function DefaultFont():void
     {
      if (_txtInputLeft != null)
            _txtInputLeft.setStyle("fontFamily","Futura");
       if (_txtInputRight != null)   
            _txtInputRight.setStyle("fontFamily","Futura");
       if (_label_1 != null)      
           _label_1.setStyle("fontFamily","Futura");
       if (_label_2 != null)      
           _label_2.setStyle("fontFamily","Futura");
       if (_label_3 != null)      
           _label_3.setStyle("fontFamily","Futura");
       if (_label_4 != null)      
           _label_4.setStyle("fontFamily","Futura"); 
       if (_label_5 != null)      
           _label_5.setStyle("fontFamily","Futura");     
       if (_commentsArea != null)      
           _commentsArea.setStyle("fontFamily","Futura"); 
                         
     }
     //Mетод перестрнаивает контрол если у него небольшая ширена
     private function rebuildStructureForNarrowView():void
     {
       if (_label_4 == null || _hbCommentContainer == null)
           return
       var commentContainer:VBox = new VBox();
       commentContainer.verticalScrollPolicy = ScrollPolicy.OFF;
       commentContainer.horizontalScrollPolicy = ScrollPolicy.OFF;
       commentContainer.percentWidth = 100;
       commentContainer.addChild(_label_4);
       commentContainer.addChild(_hbCommentContainer);
       commentContainer.setStyle("verticalGap", "3");  
       _hbCommentContainer.setStyle("paddingLeft", "15"); 
       _vbBorderContainer.addChild(commentContainer);
       _isControlNarrow = true;
     }
     
     private function Update():void
     {
       fontSize = _fontSize;
       fontName = _fontName;
       fontColor = _fontColor;
     }
     
    /** 
    * Initialization
    */
    protected override function createChildren():void 
    {
      //Создаем контейнер который будет содержать все элементы и иметь рамку 
      _vbBorderContainer = new VBox();
      _vbBorderContainer.percentWidth = 99;
      _vbBorderContainer.verticalScrollPolicy = ScrollPolicy.OFF; 
      _vbBorderContainer.horizontalScrollPolicy = ScrollPolicy.OFF;  
      _vbBorderContainer.y = 30; 
      _vbBorderContainer.setStyle("borderStyle", "solid");  
      _vbBorderContainer.setStyle("verticalAlign", "middle");  
      _vbBorderContainer.setStyle("borderThickness", "2"); 
      _vbBorderContainer.setStyle("verticalGap", "6");  
      //_vbBorderContainer.setStyle("paddingBottom", "2"); 
      _vbBorderContainer.setStyle("paddingTop", "5"); 
     
      //Добовляем answer
      if (ActivityControl.userType != EMUserTypes.EM_Student_ShowReport && FactoryRegExp.trim(_txtAnswer) != "" && _txtAnswer) 
      {
        _label_5 = new Label();
        _label_5.htmlText = "<b>Answer:</b> "+ _txtAnswer;
        this._vbBorderContainer.addChild(_label_5);
      } 
      //обовляем score
      this._vbBorderContainer.addChild(initScore()); 
      //Добовляем коментирий 
      if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport)
            this._vbBorderContainer.addChild(initComment()); 
      else if (FactoryRegExp.trim(_txtComment) != "")  
               this._vbBorderContainer.addChild(initComment()); 
     
      this.addChild(_vbBorderContainer);
      super.createChildren();
    }
    
    private function CreationComplete_Handler(event:FlexEvent):void
    {
      Update();
      //сли контрол узкий то перестраиваем его немного
      if (this.width <= 500 && !_isControlNarrow)
          rebuildStructureForNarrowView();
    } 
    
    /**
    * Constructor 
    */  
    public function ScoreContainer(leftTextValue:String="", rightTextValue:String="")
    {
      super();
 
      this.width = 950; 
      this._txtValueLeft = leftTextValue;
      this._txtValueRight = rightTextValue;
      this.verticalScrollPolicy = ScrollPolicy.OFF;
      this.horizontalScrollPolicy = ScrollPolicy.OFF; 
      this.setStyle("horizontalAlign", "center"); 
      this.setStyle("verticalAlign", "middle");
     
      this.addEventListener(FlexEvent.CREATION_COMPLETE, CreationComplete_Handler);
    }
    
    
    /**
    * Virtuals methods
    */
    protected override function commitProperties():void
    {
      if (_fontNameChanged)
          FontName(_fontName);
      if (_fontSizeChanged)
          FontSize(_fontSize);
      if (_fontColorChanged)
          FontColor(_fontColor);
          
      _fontNameChanged = false;
      _fontSizeChanged = false;  
      _fontColorChanged = false;
   
      super.commitProperties(); 
    }
    
    /**
    * Public members/properties
    */
    public function set answer(value:String):void
    {
      this._txtAnswer = value;
    }
    
    
    public function get txtValueLeft():String
    {
      if (_txtInputLeft != null)
          if (FactoryRegExp.trim(_txtInputLeft.text) != "")
              return _txtInputLeft.text;
      return null    
    }
    public function set txtValueLeft(value:String):void
    {
       this._txtValueLeft = value;
       if (_txtInputLeft != null)
           this._txtInputLeft.text = value;
    }
    
    
    public function get txtValueRight():String
    {
      if (_txtInputRight != null)
          if (FactoryRegExp.trim(_txtInputRight.text) != "")
              return _txtInputRight.text;
      return null    
    }
    public function set txtValueRight(value:String):void
    {
      this._txtValueRight = value;
      if (_txtInputRight)
          this._txtInputRight.text = value;
    }
    
    public function get comment():String
    {
      if (_commentsArea != null)
          if (FactoryRegExp.trim(_commentsArea.text) != "")
              return _commentsArea.text;
      return null    
    }
    public function set comment(value:String):void
    {
      this._txtComment = value;
      if (_commentsArea)
          this._commentsArea.text = value;
    }
    
    
    public function set fontName(name:String):void
    {
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
   
    
    public function DeleteYourself():void
	  {
	  	 if (this.parent != null)
	   	 	   this.parent.removeChild(this);			
	  }	
    

    
  }
}