package Controls
{
  import Model.EnumRegExp;
  import Model.FactoryRegExp;
  
  import flash.events.MouseEvent;
  
  import interfaces.IFontStyle;
  
  import mx.controls.Text;

  public class SelectableLabel extends Text implements IFontStyle
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\SelectableLabel.as
    *
    *  Abstract:
    *     This is Selectable Label control
    *
    *  Author:
    *     Ruban Sergey  04-January-2010
    *
    *  Revision History:
    *
    ***************************************************************/


    /**
    * Static
    */
    public static function IntToHex(item:Object):String
    {
      var hex:String = Number(item).toString(16);
      return ("00000" + hex.toUpperCase()).substr(-6);
    }

    /**
    * Private members/properties
    */
    // Цвет не выделеного текста в hex
    private var _unSelectedColor:String;

    // Цвет выделеного текста в hex
    private var _selectedColor:String;

    //Выделены ли текст или нет используеться в обработчике клика мышки
    private var _isSelected:Boolean = false;

    // Текст который передаеться в конструктор
    private var _text:String;

    // Содержит знаки которые были перед словом
    private var _toString:String;

    //Содержит середину слова без заков по бокам
    private var _centerString:String;

    // Содержит знаки которые были в конце слова
    private var _afterString:String;

    private var _canSelected:Boolean = true;

    // сигнализирует отом должно ли это слово быть выделиным
    // по умолчанию = false
    private var _mustSelected:Boolean = false;

    private var _select:Boolean = false;

    // есть ли в слове U тег
    private var _isUnderline:Boolean = false;
    
    protected var _fontName:String;
    protected var _fontSize:int;
    protected var _fontColor:int;
    
    private var _fontNameChanged:Boolean = false;
    private var _fontSizeChanged:Boolean = false;
    private var _fontColorChanged:Boolean = false;
   
    
    /**
    * Private methods
    */
    /*
    * Метод получает на вход слово и разбивает его на знаки которые
    * стоят перед словом на само слово и на знаки которые стоят
    * после слова значения записываеться в переменные
    * _toString,_centerString,_afterString
    */
    private function stringTreatment(string:String):void
    {
      var  pattern:RegExp = /[A-z0-9<>]+.*/g;
      this._toString =  string.replace(pattern,"");
      // pattern = /[^a-zA-Z0-9^'^-^-^’^<>^\/]+/g;
      pattern = /([^A-z0-9<>]+?$)/g;
      this._centerString =  string.replace(pattern,"");
       pattern = /(^[^A-z0-9<>]+)/g;
      this._centerString =  this._centerString.replace(pattern,"");
      var result:Object = pattern.exec(string);
      this._afterString =  string.replace(new RegExp(".*?[A-z0-9^</ub>]+","g"),"");
    }


    /**
    * Events handler
    */
    // При клике мышкой по слову меняем цвет слова на указаный при этом знаки цвет не меняют
    private function click_MouseEventHandler(event:MouseEvent):void
    {
      if (_canSelected)
      {
        _isSelected = !_isSelected;
        select = _isSelected;
      }
    }


    /**
    * Initialization
    */


    /**
    * Constructor
    */
     public function SelectableLabel(unSelectedColor:int=0x000000, selectedColor:int=0x000000, text:String = '',
        mustSelected:Boolean = false)
     {
       super();

       if (text.search(FactoryRegExp.instance.U(EnumRegExp.G)) != -1)
       {
           this._isUnderline = true;
           //Удаляем теги U из слова потому что подчеркивать мы будем вручную
           text = text.replace(FactoryRegExp.instance.U(EnumRegExp.G),"");
       }
       stringTreatment(text);
       _text = text;
       _mustSelected = mustSelected;

       this.selectable = false;
       this._selectedColor = IntToHex(selectedColor);
       this._unSelectedColor = IntToHex(unSelectedColor);
       this.htmlText = "<font color='#"+_unSelectedColor+"'>"+text+"</font>";
       this.addEventListener(MouseEvent.CLICK,click_MouseEventHandler);
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
    
    
    public virtual function FontName():void
    {
      this.setStyle('fontFamily',_fontName);
    }

    public virtual function FontSize():void
    {
      this.setStyle('fontSize',_fontSize);
    }

    public virtual function FontColor():void
    {
      this._unSelectedColor = IntToHex(_fontColor);
      this.htmlText = "<font color='#" + _unSelectedColor+"'>" + this._text + "</font>";
    }

    public virtual function Bold():void
    {
      this.setStyle('fontWeight','bold');
    }

    public virtual function DefaultFont():void
    {
      this.setStyle("fontFamily", "Futura");
    }

    protected override function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
    {
      super.updateDisplayList(unscaledWidth, unscaledHeight);

      if (this._isUnderline == true)
      {
        this.graphics.clear();
        this.graphics.lineStyle(1, 0x000000);
        this.graphics.moveTo(0,  this.baselinePosition + this.height/11);
        this.graphics.lineTo(this.width, this.baselinePosition + this.height/11);
      }
    }

    /**
    * Public members/properties
    */
    public function get centerString():String
    {
      return _centerString;
    }
    
    public function get fullString():String
    {
      return _text;
    }

    public function get isSelected():Boolean
    {
      return _isSelected;
    }

    public function set canSelected(value:Boolean):void
    {
      _canSelected = value;
    }
    
      public function set selectedColor(value:int):void
    {
      _selectedColor = IntToHex(value);
      select = _select;
    }

    // позволяет снять либо установить выдиление
    public function set select(value:Boolean):void
    {
      _select = value;
      _isSelected = value;
      if (value == false)
        this.htmlText = "<font color='#"+_unSelectedColor+"'>"+_text+"</font>";
      else
        this.htmlText = "<font color='#"+_unSelectedColor+"'>"+this._toString+"</font>"+
                        "<font color='#"+_selectedColor+"'>"+this._centerString+"</font>"+
                        "<font color='#"+_unSelectedColor+"'>"+this._afterString+"</font>";
    }
    public function get select():Boolean
    {
      return _select;
    }

    public function get mustSelected():Boolean
    {
      return _mustSelected;
    }

    public function get ToString():String
    {
      return _toString;
    }

    public function get AfterString():String
    {
      return _afterString;
    }

    public function get isUnderline():Boolean
    {
      return this._isUnderline;
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



  }
}