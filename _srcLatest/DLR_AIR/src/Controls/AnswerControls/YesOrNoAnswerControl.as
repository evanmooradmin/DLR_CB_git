package Controls.AnswerControls
{
  import Controls.ActivityControl;
  import Controls.SimplePromptControls.MultipleViewRadioButton;
  
  import Model.Answers.Answer;
  import Model.Answers.YesOrNoAnswer;
  
  import flash.events.MouseEvent;
  
  import interfaces.IControlView;
  import interfaces.IFontStyle;
  import interfaces.IResult;
  
  import mx.controls.RadioButtonGroup;
  import mx.events.FlexEvent;

  public class YesOrNoAnswerControl extends AnswerControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\AnswerControls\YesOrNoAnswerControl.as
    *
    *  Abstract:
    *     This is control for yes or no answer
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
    private var _group:RadioButtonGroup;
    private var _complete:Boolean = false;
    private var _isDefaultState:Boolean = false;


    /**
    * Private methods
    */


    /**
    * Events handler
    */
    private function CreationComplete_control(event:FlexEvent):void
    {
      (_control as MultipleViewRadioButton).rbVariant.addEventListener(MouseEvent.CLICK, Click_rbVariant);
      (_control as MultipleViewRadioButton).txVariantText.addEventListener(MouseEvent.CLICK, Click_rbVariant);
      (_control as MultipleViewRadioButton).group = _group;
    }

    private function Click_rbVariant(event:MouseEvent):void
    {
      _isSelected = true;
    }


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function YesOrNoAnswerControl(answer:YesOrNoAnswer)
    {
      super(answer);

      _control = new MultipleViewRadioButton();

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
          _isCorrect = true;
          if (ActivityControl.instance.needScoreReport)
              return ;    
          IResult(_control).SetCorrect();
        }
        else if (IResult(_control).GetText() && !answer.isCorrect)
        {
          _isCorrect = false;
          if (ActivityControl.instance.needScoreReport)
              return ;    
          IResult(_control).SetIncorrect();
        }
      }
      else
      {
         MultipleViewRadioButton(_control).SetDefault();
         _isCorrect = true;
         _isDefaultState = true;
       }
    }

    public override function ShowAnswer():void
    {
      if (answer.isCorrect == true && _complete == false)
        IResult(_control).SetCorrect();
      else
        MultipleViewRadioButton(_control).SetDefault();
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
       CheckAnswer();
       if (_isDefaultState == true)
       {
          if (answer.isCorrect == true)
               ShowAnswer();
          else if (this.parent != null)
                     this.parent.removeChild(this);
       }
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
      return (_control as IResult).IsComplete();
    }


    /**
    * Public members/properties
    */
    public function set group(value:RadioButtonGroup):void
    {
      _group = value;
      (_control as MultipleViewRadioButton).group = value;
    }


    /**
    * Public methods
    */



  }
}