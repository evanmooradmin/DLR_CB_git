package Controls.AnswerControls
{
  import Controls.SimplePromptControls.SentenceEvaluationViewControl;
  
  import Model.Answers.Answer;
  import Model.Answers.SentenceEvaluationAnswer;
  import Model.StateTypes;
  
  import interfaces.IBasePrompt;

  public class SentenceEvaluationAnswerControl extends AnswerControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\AnswerControls\SentenceEvaluationAnswerControl.as
    *
    *  Abstract:
    *     This is control for Sentence Evaluation Answer prompt
    *
    *  Author:
    *     Evgenij Welikij   30-December-2009
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
    public function SentenceEvaluationAnswerControl(answer:SentenceEvaluationAnswer)
    {
      super(answer);

      _control = new SentenceEvaluationViewControl();

      this.addChild(_control);
    }


    /**
    * Virtuals methods
    */
    public override function FontName(name:String):void
    {
      super.FontName(name);

      IFontStyle(_control).FontName(name);
    }

    public override function FontSize(size:int):void
    {
      super.FontSize(size);
      IFontStyle(_control).FontSize(size);
    }

    public override function FontColor(color:int):void
    {
      super.FontColor(color);
      IFontStyle(_control).FontColor(color);
    }

    public override function CheckAnswer():void
    {
      if (!IResult(_control).IsComplete())
        throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");

      if (IResult(_control).GetText() != answer.text)
      {
        _isCorrect = false;
        if (ActivityControl.instance.needScroreReport)
              return ;
        IResult(_control).SetIncorrect();
        // сообщаем о необходимости добавить показ ответа
        dispatchEvent(new StateEvent(Old_StateEvent.NEW_STATE, StateTypes.SHOW_ANSWER, false));
      }
      else
      {
        _isCorrect = true;
        if (ActivityControl.instance.needScroreReport)
            return ;
        IResult(_control).SetCorrect();
      }
    }

    public override function Continue():void
    {
      (_control as IResult).Continue();
    }

    public override function ShowAnswer():void
    {
      IResult(_control).SetCorrect();
    }

    public override function IsComplete():Boolean
    {
      return IResult(_control).IsComplete();
    }

    public override function Init(answer:Answer):void
    {
      IBasePrompt(_control).Init(answer);
    }


    /**
    * Public members/properties
    */


    /**
    * Public methods
    */


  }
}