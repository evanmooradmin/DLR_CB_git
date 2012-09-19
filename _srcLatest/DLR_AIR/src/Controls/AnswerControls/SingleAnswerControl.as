package Controls.AnswerControls
{
  import Controls.ActivityControl;
  import Controls.SimplePromptControls.MultipleViewRadioButton;
  
  import Model.Answers.Answer;
  import Model.Answers.SingleAnswer;
  
  import interfaces.IControlView;
  import interfaces.IFontStyle;
  import interfaces.IResult;
  
  import mx.controls.RadioButtonGroup;
  import mx.events.FlexEvent;

  public class SingleAnswerControl extends AnswerControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\AnswerControls\SingleAnswerControl.as
    *
    *  Abstract:
    *     This is control for single answer prompt
    *
    *  Author:
    *     Evgenij Welikij   22-Ocotber-2009
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
    //Переменная отображает находится ли вид в состоянии Default или нет
    //Это нужно что бы удалять те виды которые находияться в состоянии Default
    //используеться в методе ShowResult
    private var _isDefaultState:Boolean = false;
    private var _isCompleteGroup:Boolean = false;


    /**
    * Private methods
    */


    /**
    * Events handler
    */
    private function CreationComplete_control(event:FlexEvent):void
    {
      (_control as MultipleViewRadioButton).group = _group;
    }


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function SingleAnswerControl(answer:SingleAnswer)
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
        _isDefaultState = true; 
      }
    }

    public override function ShowAnswer():void
    {
      if (answer.isCorrect == true && _complete == false)
          IResult(_control).SetCorrect();
      else
          (_control as MultipleViewRadioButton).SetDefault();
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
        else if (_isDefaultState == true)
        {
          //Удаляем контрол который имеет состояние Default чтобы отсались только правельные или нетпрпаввелные ответы
          if (this.parent != null)
            this.parent.removeChild(this);
        }
    } 
   
    public function set isCompleteGroup(value:Boolean):void
    {
      var prevValue:Boolean = _isCompleteGroup;
      _isCompleteGroup = value;
      if(_isCompleteGroup && !prevValue)
        (_control as MultipleViewRadioButton).SetDefault();
    }
    
    public override function Init(answer:Answer):void
    {
      IControlView(_control).Init(answer);
    }

    public override function IsComplete():Boolean
    {
       return IResult(_control).IsComplete();
    }

    public override function SaveResults():void
    {
        IResult(_control).SaveResults();
    }
    
    public override function LoadResults(needCheckAnswer:Boolean = false):void
    {
        IResult(_control).LoadResults(needCheckAnswer);
    }
    
    public override function get isSelected():Boolean
    {
      return IResult(_control).IsComplete();
    }
    
    /**
    * Public members/properties
    */
    public function set group(value:RadioButtonGroup):void
    {
      _group = value;
      (_control as MultipleViewRadioButton).group = value;
    }

    public function selected(selected:Boolean):void
    {
      if (_control is MultipleViewRadioButton)
          (_control as MultipleViewRadioButton).selected(selected);
    }

    /**
    * Public methods
    */


  }
}