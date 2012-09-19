package Controls.PromptControls
{
  import Controls.ActivityControl;
  import Controls.SimplePromptControls.SentenceEvaluationViewControl;
  
  import Model.Events.StateEvent;
  import Model.Prompts.Prompt;
  import Model.Prompts.SentenceEvaluation;
  import Model.StateTypes;
  
  import flash.events.MouseEvent;
  
  import interfaces.IControlView;
  import interfaces.IFontStyle;
  import interfaces.IResult;
  
  import mx.containers.VBox;
  import mx.core.ScrollPolicy;

  public class SentenceEvaluationControl extends PromptControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\PromptControls\SentenceEvaluationControl.as
    *
    *  Abstract:
    *     This is control for Sentence Evaluation prompt
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
     private var _vBox:VBox = new VBox();
     

    /**
    * Private methods
    */


    /**
    * Events handler
    */
    private function NewState_sentenceControlHandler(event:StateEvent):void
    {
      AddNewAnswerState(event.state);
    }


    /**
    * Initialization 
    */


    /**
    * Constructor
    */
    public function SentenceEvaluationControl(prompt:SentenceEvaluation)
    {
      super(prompt);
      
      _vBox.verticalScrollPolicy = ScrollPolicy.OFF;
      _vBox.horizontalScrollPolicy = ScrollPolicy.OFF;
     // _vBox.percentWidth = 100;
      
      _control = new SentenceEvaluationViewControl();
    //  _vBox.addChild(_control);
    
      this.verticalScrollPolicy = ScrollPolicy.OFF; 
      this.horizontalScrollPolicy = ScrollPolicy.OFF;
      this.addChild(_control);
    }


    /**
    * Virtuals methods
    */
    public override function FontName():void
    {
    //  super.FontName(name);

      if (!_isDefault)
        (_control as IFontStyle).fontName = _fontName;
      else
        (_control as IFontStyle).DefaultFont();
    }

    public override function FontSize():void
    {
     // super.FontSize(size);

      (_control as IFontStyle).fontSize = _fontSize;
    }

    public override function FontColor():void
    {
     //super.FontColor(color);

      (_control as IFontStyle).fontColor = _fontColor;
    }

    public override function CheckAnswer():void
    {
      if (!IsComplete())
        throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");
      _isStartState = false;
      if ((_control as IResult).GetText() != (_prompt as SentenceEvaluation).answer)
      {
        _isCorrect = false;
        if (ActivityControl.instance.needScoreReport == false)
           (_control as IResult).SetIncorrect();
        AddNewAnswerState(StateTypes.SHOW_ANSWER);
      }
      else
      {
        _isCorrect = true;
        if (ActivityControl.instance.needScoreReport == false)
            (_control as IResult).SetCorrect();
      }
      NextState();
    }

    public override function ShowAnswer():void
    {
      _isStartState = false;
      (_control as IResult).SetCorrect();
       NextState();
    }
    
    public override function SaveResults():void
    {
      (_control as IResult).SaveResults();
    }
    
    public override function LoadResults(needCheckAnswer:Boolean = false):void
    {
      (_control as IResult).LoadResults(needCheckAnswer);
      if (needCheckAnswer)
      {
          CheckAnswer();
          AddScoreForReport();
         //Если показываем отчет учителю
         if (ActivityControl.isShowRepotFromTeacher && _isCorrect == false)
         { 
           _currentState = StateTypes.SHOW_ANSWER;
           AddButtonForReport();
         }
      }
    }
    
    public override function Click_btnContinue(event:MouseEvent):void
    {
      ShowAnswer();
      if (_buttonManager.parent != null)
          _buttonManager.parent.removeChild(_buttonManager); 
    }   
      
    public override function Continue():void
    {
        _isStartState = false;
      (_control as IResult).Continue();
    }

    public override function Init(prompt:Prompt):void
    {
      (_control as IControlView).Init(prompt);
    }

    public override function IsComplete():Boolean
    {
      if (ActivityControl.isCheckAnswer == false)
        return true;

      return (_control as IResult).IsComplete();
    }

    public override function getContent():Array
    {
      return [_vBox];
    }

    public override function set isDefault(value:Boolean):void
    {
      super.isDefault = value;

     /* for each (var item:AnswerControl in _answerControls)
        item.isDefault = value;*/
    }


    /**
    * Public members/properties
    */


    /**
    * Public methods
    */


  }
}