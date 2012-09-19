package Controls.Enviroment
{
  import Model.EnumRegExp;
  import Model.FactoryRegExp;
  
  import mx.controls.Text;
  import mx.events.FlexEvent;

  public class TextExended extends Text
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\Enviromen\TextExended.as
    *
    *  Abstract:
    *     Розширенный контролл Text который выключает прокрутку mouseWheelEnabled
    *
    *  Author:
    *     Evgenij Welikij   15-April-2010
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
    private var _isUnderline:Boolean = false;
    private var _htmlText:String;
    private var _isCreationComplete:Boolean = false;
    
    /**
    * Private methods
    */



    /**
    * Events handler
    */
     private function creationComplete(event:FlexEvent):void
     {
       _isCreationComplete = true;
     }

    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function TextExended()
    {
      super();
      this.addEventListener(FlexEvent.CREATION_COMPLETE, creationComplete); 
    }


    /**
    * Virtuals methods
    */
    protected override function createChildren():void
    {
      super.createChildren();

      textField.mouseWheelEnabled = false;
    }

    protected override function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
    {
      super.updateDisplayList(unscaledWidth, unscaledHeight);

      textField.mouseWheelEnabled = false;
      selectable = false;
      
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
    public function set HtmlText(value:String):void
    {
      // есили нашли в предложении теги u то заварапчиваем все слова между тегами в тег u
      if (value.search(FactoryRegExp.instance.U(EnumRegExp.G)) != -1)
      {
        // приводим к нормальному виду тег </u>
          this.text = FactoryRegExp.AddTagToEachWord(FactoryRegExp.instance.U_start(EnumRegExp.G), FactoryRegExp.instance.U_finish(EnumRegExp.G),
                                     FactoryRegExp.U_START, FactoryRegExp.U_FINISH, value);
           this._isUnderline = true;
           this._htmlText = this.text;
           this.htmlText = value.replace(FactoryRegExp.instance.U(EnumRegExp.G),'');

           invalidateDisplayList();
      }
      else
      {
        this._htmlText = value;
        this.htmlText = value.replace(FactoryRegExp.instance.U(EnumRegExp.G),'');
      }
    }
    public function get HtmlText():String
    {
      if (this._htmlText == null)
          return super.htmlText;
      else  if (this._htmlText == '')
          return ' ';
      else
          return this._htmlText;
    }

    public function get isCreationComplete():Boolean
    {
      return _isCreationComplete;
    }
    /**
    * Public methods
    */


  }
}