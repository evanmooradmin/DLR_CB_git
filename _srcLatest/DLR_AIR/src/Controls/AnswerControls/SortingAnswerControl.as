package Controls.AnswerControls
{
  import Controls.ActivityControl;
  import Controls.DropAnswerControl;
  import Controls.SimplePromptControls.SortingAnswerViewControl;
  
  import Model.Answers.Answer;
  import Model.Answers.SortingAnswer;
  import Model.Events.StateEvent;
  import Model.StateTypes;
  
  import interfaces.IBasePrompt;
  import interfaces.IControlView;
  import interfaces.IFontStyle;
  import interfaces.IResult;

  public class SortingAnswerControl extends AnswerControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\AnswerControls\SortingAnswerControl.as
    *
    *  Abstract:
    *     This is control for sorting answer prompt
    *
    *  Author:
    *     Evgenij Welikij   09-November-2009
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
    public function SortingAnswerControl(answer:SortingAnswer)
    {
      super(answer);
      _control = new SortingAnswerViewControl();

      _control.addEventListener(StateEvent.NEW_STATE, NewState_control);

      this.addChild(_control);
      this.percentHeight = 100;
      this.percentWidth = 100;
      this.verticalScrollPolicy = 'false';
      this.horizontalScrollPolicy = 'false';
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
      if (IResult(_control).GetText() != _answer.text)
      {
        _isCorrect = false;
        if (ActivityControl.instance.needScoreReport)
            return ;
        IResult(_control).SetIncorrect();
        dispatchEvent(new StateEvent(StateEvent.NEW_STATE, StateTypes.SHOW_ANSWER));
      }
      else
      {
        _isCorrect = true;
        if (ActivityControl.instance.needScoreReport)
              return ;
        IResult(_control).SetCorrect();
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

    public override function Init(answer:Answer):void
    {
      if (_control is IControlView)
        (_control as IControlView).Init(answer);
    }


    /**
    * Public members/properties
    */
    public function get dropControl():DropAnswerControl
    {
      return (_control as SortingAnswerViewControl).dropAnswer;
    }


    /**
    * Public methods
    */


  }
}