package Controls.AnswerControls
{
  import Controls.ActivityControl;
  import Controls.SimplePromptControls.FixCapitalsViewControl;
  
  import Model.Answers.Answer;
  import Model.Answers.FixCapitalsAnswer;
  import Model.EnumRegExp;
  import Model.Events.StateEvent;
  import Model.FactoryRegExp;
  import Model.StateTypes;
  
  import interfaces.IControlView;
  import interfaces.IFontStyle;
  import interfaces.IResult;

  public class FixCapitalsAnswerControl extends AnswerControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\AnswerControls\FixCapitalsAnswerControl.as
    *
    *  Abstract:
    *     This is control for Fix Capitals Answer prompt
    *
    *  Author:
    *     Evgenij Welikij   28-December-2009
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
    public function FixCapitalsAnswerControl(answer:FixCapitalsAnswer)
    {
      super(answer);


      // Проверяем если поля ансвер и
      _control = new FixCapitalsViewControl();

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

    public override function CheckAnswer():void
    {
      // вырезать р теги
      var string:String = (_answer as FixCapitalsAnswer).answer.replace(FactoryRegExp.instance.AllTegs(EnumRegExp.G),'');
      if (FactoryRegExp.NormalazeString(IResult(_control).GetText()) != FactoryRegExp.NormalazeString((string)))
      {
        this._isCorrect = false;
        if (ActivityControl.instance.needScoreReport)
           return ;  
        IResult(_control).SetIncorrect();
        dispatchEvent(new StateEvent(StateEvent.NEW_STATE, StateTypes.SHOW_ANSWER));
      }
      else
      {
        this._isCorrect = true;
        if (ActivityControl.instance.needScoreReport)
           return ;  
        IResult(_control).SetCorrect();
      }
    }

    public override function ShowAnswer():void
    {
      IResult(_control).SetCorrect();
    }

    public override function ShowResult():void
    {
      this.CheckAnswer();
      if (this._isCorrect == false)
          this.ShowAnswer();  
    }
    
    public override function SaveResults():void
    {
       IResult(_control).SaveResults();
    }
    
    public override function LoadResults(needCheckAnswer:Boolean = false):void
    {
      IResult(_control).LoadResults(needCheckAnswer);
    }
    
    /**
    * Public members/properties
    */


    /**
    * Public methods
    */


  }
}