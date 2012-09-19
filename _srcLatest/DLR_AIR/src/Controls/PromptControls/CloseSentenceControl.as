package Controls.PromptControls
{
  import Controls.ActivityControl;
  import Controls.QuizControl;
  import Controls.SimplePromptControls.CloseSentenceViewControl;
  
  import Model.FactoryRegExp;
  import Model.Prompts.CloseSentence;
  import Model.Prompts.Prompt;
  import Model.StateTypes;
  
  import interfaces.IControlView;
  import interfaces.IFontStyle;
  import interfaces.IResult;
  
  import mx.controls.TextInput;

  public class CloseSentenceControl extends PromptControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\PromptControls\CloseSentenceControl.as
    *
    *  Abstract:
    *     This is control for prompt CloseSentence
    *
    *  Author:
    *     Evgenij Welikij   06-March-2010
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
    private function CheckAnswers(control:CloseSentenceViewControl):Boolean
    {
      var isCorrect:Boolean = true;
      // предполагается что кол-во TextInput == CloseSentence.answers.length
      for (var i:int = 0; i < (control).txtInputs.length; i++)
      {
        var txtInput:TextInput = (control).txtInputs[i];
        var answer:String = (_prompt as CloseSentence).answers[i];

        if (FactoryRegExp.NormalazeString(txtInput.text) != FactoryRegExp.NormalazeString(answer))
        {
          isCorrect = false;
          break;
        }
      }
      return isCorrect;
    }

    /**
    * Events handler
    */


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function CloseSentenceControl(prompt:CloseSentence)
    {
      super(prompt);

      _control = new CloseSentenceViewControl();

      this.addChild(_control);
    }


    /**
    * Virtuals methods
    */
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

    public override function Init(prompt:Prompt):void
    {
       IControlView(_control).Init(prompt);
    }

    public override function CheckAnswer():void
    {
      if (IsComplete() == false)
        throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");

      _isStartState = false;
      _isCorrect = true;
    
      // предполагается что кол-во TextInput == CloseSentence.answers.length
      for (var i:int = 0; i < (_control as CloseSentenceViewControl).txtInputs.length; i++)
      {
        var txtInput:TextInput = (_control as CloseSentenceViewControl).txtInputs[i];
        var answer:String = (_prompt as CloseSentence).answers[i];

        if (txtInput.text != answer)
        {
          _isCorrect = false;
          break;
        }
      }
      if (ActivityControl.instance.needScoreReport)
          return ;  
      if (_isCorrect)
        IResult(_control).SetCorrect();
      else
      {
        AddNewAnswerState(StateTypes.SHOW_ANSWER);
        IResult(_control).SetIncorrect();
      }
       NextState();
    }

    public override function ShowAnswer():void
    {
      _isStartState = false;
      if (QuizControl.instance.preferences.isCheckAnswer == false)
      {
       var isCorrect:Boolean = true;
         // предполагается что кол-во TextInput == CloseSentence.answers.length
          for (var i:int = 0; i < (_control as CloseSentenceViewControl).txtInputs.length; i++)
          {
            var txtInput:TextInput = (_control as CloseSentenceViewControl).txtInputs[i];
            var answer:String = (_prompt as CloseSentence).answers[i];

             if (FactoryRegExp.NormalazeString(txtInput.text) == "")
             {
                  IResult(_control as CloseSentenceViewControl).SetCorrect();
                  isCorrect = false;
                  break;
             }
          }
          if (isCorrect == true)
          {
            for (i = 0; i < (_control as CloseSentenceViewControl).txtInputs.length; i++)
            {
                txtInput = (_control as CloseSentenceViewControl).txtInputs[i];
                answer = (_prompt as CloseSentence).answers[i];
                if (FactoryRegExp.NormalazeString(txtInput.text) != FactoryRegExp.NormalazeString(answer))
                {
                  IResult(_control as CloseSentenceViewControl).SetIncorrect();
                  isCorrect = false;
                  break;
                }
            }
          }
      }
      else
         IResult(_control).SetCorrect();
       NextState();   
    }
    
    public override function ShowResult():void
    {
      this.CheckAnswer();
      if (this.isCorrect == false)
          this.ShowAnswer();
    }
    
    public override function SaveResults():void
    {
      IResult(_control).SaveResults();
    }
    
    public override function LoadResults(needCheckAnswer:Boolean = false):void
    {
      IResult(_control).LoadResults(needCheckAnswer);
      if (needCheckAnswer)
      {
          this.CheckAnswer();
        //Если показываем отчет учителю
        if (ActivityControl.isShowRepotFromTeacher  && _isCorrect == false)
           if (this.isCorrect == false)
               this.ShowAnswer();
        AddScoreForReport();    
      }
    }
      
    public override function IsComplete():Boolean
    {
      return IResult(_control).IsComplete();
    }

    public override function Continue():void
    {
       _isStartState = false;
      (_control as IResult).Continue();
    }
    
 

    /**
    * Public members/properties
    */


    /**
    * Public methods
    */


  }
}