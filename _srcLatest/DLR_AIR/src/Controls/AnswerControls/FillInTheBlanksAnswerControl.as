package Controls.AnswerControls
{
  import Controls.ActivityControl;
  import Controls.SimplePromptControls.FillInTheBlanks.FillInTheBlanksAnswerViewControl;
  
  import Model.Answers.Answer;
  import Model.Answers.FillInTheBlanksAnswer;
  import Model.Events.StateEvent;
  
  import interfaces.IControlView;
  import interfaces.IFontStyle;
  import interfaces.IResult;

  public class FillInTheBlanksAnswerControl extends AnswerControl implements IResult
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\AnswerControl\FillInTheBlanksAnswerControl.as
    *
    *  Abstract:
    *     This is control for fill in the blanks answer
    *
    *  Author:
    *     Evgenij Welikij   05-November-2009
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
    private function NewState_control(event:StateEvent):void
    {
      dispatchEvent(new StateEvent(StateEvent.NEW_STATE, event.state));
    }


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function FillInTheBlanksAnswerControl(answer:FillInTheBlanksAnswer)
    {
      super(answer);

         _control = new FillInTheBlanksAnswerViewControl();

      _control.addEventListener(StateEvent.NEW_STATE, NewState_control);

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
        IFontStyle(_control).DefaultFont();   
     }

    public override function FontSize():void
    {
      super.FontSize();
      IFontStyle(_control).fontSize  = _fontSize;
    }

    public override function FontColor():void
    {
      super.FontColor();
      IFontStyle(_control).fontColor = _fontColor;
    }

    /*public override function CheckAnswer():void
    {
      if (!IResult(_control).IsComplete())
        throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");

      if (IResult(_control).GetText() == (_answer as FillInTheBlanksAnswer).text)
        IResult(_control).SetCorrect();
      else
        IResult(_control).SetIncorrect();
    }*/

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

    public override function IsComplete():Boolean
    {
      return IResult(_control).IsComplete();
    }

    public override function Continue():void
    {
      IResult(_control).Continue();
    }

    public override function GetText():String
    {
      return IResult(_control).GetText();
    }

    public virtual function SetCorrect():void
    {
      if (ActivityControl.instance.needScoreReport)
          return ;  
      IResult(_control).SetCorrect();
    }

    public virtual function SetIncorrect():void
    {
      if (ActivityControl.instance.needScoreReport)
         return ;  
      IResult(_control).SetIncorrect();
    }

    public override function DefaultFont():void
    {
      (_control as IFontStyle).DefaultFont();
    }


    /**
    * Public members/properties
    */


    /**
    * Public methods
    */


  }
}