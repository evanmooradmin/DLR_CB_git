package Controls.AnswerControls
{
  import Controls.ActivityControl;
  import Controls.DropAnswerControl;
  import Controls.SimplePromptControls.MatchingAnswerViewControl;
  
  import Model.Answers.Answer;
  import Model.Answers.MatchingAnswer;
  import Model.Prompts.Matching;
  
  import interfaces.IControlView;
  import interfaces.IFontStyle;
  import interfaces.IResult;

  public class MatchingAnswerControl extends AnswerControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\AnswerControls\MatchingControl.as
    *
    *  Abstract:
    *     This is control for Matching prompt
    *
    *  Author:
    *     Evgenij Welikij   26-October-2009
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
    protected var _strictCompliance:Boolean;    // указывает на строгое соответствие ответов
                                                // т. е. каждый Answer соостветствует только самому себе
                                                // Если == true, то Answer может быть равен одному из ответов
                                                // из Matching. По умолчанию = true


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
    public function MatchingAnswerControl(answer:MatchingAnswer, strictCompliance:Boolean = true)
    {
      super(answer);
      _control = new MatchingAnswerViewControl();

      _strictCompliance = strictCompliance;
    
      this.addChild(_control);
    }


    /**
    * Virtuals methods
    */
    public override function FontName():void
    {
      if (!_isDefault)
        IFontStyle(_control).fontName = _fontName;
      else
        (_control as IFontStyle).DefaultFont();
    }

    public override function FontSize():void
    {
      IFontStyle(_control).fontSize = _fontSize;
    }

    public override function FontColor():void
    {
      IFontStyle(_control).fontColor = _fontColor;
    }

    public override function CheckAnswer():void
    {
      var isCorrect:Boolean;
      var temp:String;

      if (_strictCompliance)
        isCorrect = GetText() == (_answer as MatchingAnswer).answer ? true : false;
      else
      {
        var matching:Matching = (_answer as MatchingAnswer).parentPrompt;
        isCorrect = false;

        for each (var item:MatchingAnswer in matching.ChildAnswers())
          if (item.answer == GetText())
          {
            temp = (_answer as MatchingAnswer).answer;
            (_answer as MatchingAnswer).answer = item.answer;
            item.answer = temp;

            isCorrect = true;
            break;
          }
      }
      if (ActivityControl.instance.needScoreReport)
          return ;     
      if (isCorrect)
      {
        IResult(_control).SetCorrect();
        _isCorrect = true;
      }
      else
      {
        IResult(_control).SetIncorrect();
        _isCorrect = false;
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
    
    public override function Init(answer:Answer):void
    {
      IControlView(_control).Init(answer);
    }

    public override function GetText():String
    {
      return IResult(_control).GetText();
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
     return (_control as MatchingAnswerViewControl).dropAnswer;
    }


    public function setMaxWidthChildren(value:int):void
    {
      (_control as MatchingAnswerViewControl).setMaxWidthChildren(value);
    }

    /**
    * Public methods
    */


  }
}