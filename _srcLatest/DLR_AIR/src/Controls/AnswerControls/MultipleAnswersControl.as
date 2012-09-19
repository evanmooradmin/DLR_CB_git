package Controls.AnswerControls
{
  import Controls.ActivityControl;
  import Controls.SimplePromptControls.MultipleViewCheckBox;
  
  import Model.Answers.Answer;
  import Model.Answers.MultipleAnswer;
  
  import flash.events.MouseEvent;
  
  import interfaces.IControlView;
  import interfaces.IFontStyle;
  import interfaces.IResult;
  
  import mx.events.FlexEvent;

  public class MultipleAnswersControl extends AnswerControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\AnswerControls\MultipleAnswersControl.as
    *
    *  Abstract:
    *     This is control for multiple answers prompt
    *
    *  Author:
    *     Evgenij Welikij   02-November-2009
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
    private var _complete:Boolean = false;
    private var _isSomeChecked:Boolean = false;


    /**
    * Private methods
    */


    /**
    * Events handler
    */
    private function CreationComplete_control(event:FlexEvent):void
    {
      (_control as MultipleViewCheckBox).chVariant.addEventListener(MouseEvent.CLICK, Click_chVariant);
    }

    private function Click_chVariant(event:MouseEvent):void
    {
      _isSelected = true;
    }


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function MultipleAnswersControl(answer:MultipleAnswer)
    {
      super(answer);
      _control = new MultipleViewCheckBox();

      _control.addEventListener(FlexEvent.CREATION_COMPLETE, CreationComplete_control);

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

    public override function CheckAnswer():void
    {
      if (IResult(_control).IsComplete())
      {
        if (IResult(_control).GetText() && answer.isCorrect)
        {
          if (ActivityControl.instance.needScoreReport)
              return ;
           _isCorrect = true;     
          IResult(_control).SetCorrect();
        }
        else if (IResult(_control).GetText() && !answer.isCorrect)
        {
          if (ActivityControl.instance.needScoreReport)
              return ;
          _isCorrect = false;
          IResult(_control).SetIncorrect();
        }
      }
      else
      {
        MultipleViewCheckBox(_control).SetDefault();

        if (_answer.isCorrect == true)
            _isCorrect = false;
      }
    }

    public override function ShowAnswer():void
    {
      if (answer.isCorrect == true && _complete == false)
        IResult(_control).SetCorrect();
      else
        MultipleViewCheckBox(_control).SetDefault();
    }

    public override function Continue():void
    {
      _complete = true;

      if (!_answer.isCorrect && parent)
        this.parent.removeChild(this);
      else if (_answer.isCorrect && parent)
        IResult(_control).SetCorrect();
    }
    
    public override function ShowResult():void
    {
      this.CheckAnswer();
      if (answer.isCorrect == true && _complete == false)
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
    
   
    public override function get isSelected():Boolean
    {
      return IResult(_control).IsComplete();
    }

    /**
    * Public members/properties
    */
    public function selected(selected:Boolean):void
    {
      if (_control is MultipleViewCheckBox)
          (_control as MultipleViewCheckBox).selected(selected);
    }
      
    public function set isSomeChecked(value:Boolean):void
    {
      _isSomeChecked = value;
      if(_isSomeChecked)
        (_control as MultipleViewCheckBox).SetDefault();
    }  
      
    /**
    * Public methods
    */


  }
}