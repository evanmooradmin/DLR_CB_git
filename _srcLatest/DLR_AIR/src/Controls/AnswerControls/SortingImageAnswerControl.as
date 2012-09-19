package Controls.AnswerControls
{
  import Controls.ActivityControl;
  import Controls.DropAnswerControl;
  import Controls.SimplePromptControls.SortingImageAnswerViewControl;
  import Controls.SimplePromptControls.SortingImageAnswerViewControlAdvanced;
  
  import Model.Answers.Answer;
  import Model.Answers.SortingImage;
  import Model.FactoryRegExp;
  
  import interfaces.IControlView;
  import interfaces.IFontStyle;
  import interfaces.IResult;

  public class SortingImageAnswerControl extends AnswerControl
  {
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


    /**
    * Private members/properties
    */


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
    public function SortingImageAnswerControl(answer:SortingImage, widthContainer:int = -1)
    {
      super(answer);
      // проверяем если есть поле текст то строи одно представление если поле пустое то другое
      if (FactoryRegExp.NormalazeString(answer.text) != '')
      {
        _control = new SortingImageAnswerViewControlAdvanced();
        if (widthContainer == -1)
            _control.width = ActivityControl.MAX_WIDTH - 30;
        else
           _control.width = widthContainer;
      }
      else
        _control = new SortingImageAnswerViewControl();

      this.addChild(_control);
    }

    /**
    * Virtuals methods
    */
    public override function Init(answer:Answer):void
    {
      IControlView(_control).Init(answer);
    }
    
    public override function FontName():void
    {
      super.FontName();

      if (!_isDefault)
        IFontStyle(_control).fontName = _fontName;
      else
        (_control as IFontStyle).DefaultFont();
    }

    public override function FontSize():void
    {
      super.FontSize();
      IFontStyle(_control).fontSize = _fontSize;
    }

    public override function FontColor():void
    {
      super.FontColor();
      IFontStyle(_control).fontColor = _fontColor;
    }

    public override function GetText():String
    {
      return IResult(_control).GetText();
    }

    public override function CheckAnswer():void
    {
      var i:String = GetText().toString();
      // если картинка соответcтвует ответу то отоброжаем сотояние ответа
      if (GetText().toString() == (_answer as SortingImage).answer.toString())
      {
        _isCorrect = true;
        if (ActivityControl.instance.needScoreReport)
             return ;
        IResult(_control).SetCorrect();
      }
      else
      {
       _isCorrect = false;
       if (ActivityControl.instance.needScoreReport)
             return ;
       IResult(_control).SetIncorrect();
      }
    }

    public override function ShowAnswer():void
    {
      IResult(_control).SetCorrect();
    }
    
    public override function SaveResults():void
    {
      IResult(_control).SaveResults();
    }
    
    public override function LoadResults(needCheckAnswer:Boolean = false):void
    {
      IResult(_control).LoadResults(needCheckAnswer); 
    }
    
    public override function IsComplete():Boolean
    {
      return IResult(_control).IsComplete();
    }
    
    /**
    * Public members/properties
    */
    public function get dropControl():DropAnswerControl
    {
      if (_control is SortingImageAnswerViewControl)
           return (_control as SortingImageAnswerViewControl).dropAnswer;
      return (_control as SortingImageAnswerViewControlAdvanced).dropAnswer;
    }

    public function set contentWidth(value:int):void
    {
      if (_control is SortingImageAnswerViewControl)
      {
        (_control as SortingImageAnswerViewControl).dropAnswer.width = value;
        (_control as SortingImageAnswerViewControl).dropAnswer.defaultWidth = value;
      }
      else if (_control is SortingImageAnswerViewControlAdvanced)
      {
        (_control as SortingImageAnswerViewControlAdvanced).dropAnswer.width = value;
        (_control as SortingImageAnswerViewControlAdvanced).dropAnswer.defaultWidth = value;
      }
    }

    public function set contentHeight(value:int):void
    {
      if (_control is SortingImageAnswerViewControl)
      {
        (_control as SortingImageAnswerViewControl).dropAnswer.height = value;
        (_control as SortingImageAnswerViewControl).dropAnswer.minHeight = value;
      }
      else if (_control is SortingImageAnswerViewControlAdvanced)
      {
        (_control as SortingImageAnswerViewControlAdvanced).dropAnswer.height = value;
        (_control as SortingImageAnswerViewControlAdvanced).dropAnswer.minHeight = value;
      }
    }

  
    /**
    * Public methods
    */


  }
}