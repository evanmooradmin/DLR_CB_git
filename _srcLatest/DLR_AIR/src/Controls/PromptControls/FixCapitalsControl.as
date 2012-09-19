package Controls.PromptControls
{
  import Controls.ActivityControl;
  import Controls.SimplePromptControls.FixCapitalsViewControlAdvanced;
  
  import Model.Answers.FixCapitalsAnswer;
  import Model.EnumRegExp;
  import Model.Events.StateEvent;
  import Model.FactoryRegExp;
  import Model.Prompts.FixCapitals;
  import Model.Prompts.Prompt;
  import Model.StateTypes;
  
  import flash.events.MouseEvent;
  
  import interfaces.IControlView;
  import interfaces.IFontStyle;
  import interfaces.IResult;
  import interfaces.em.EMUserTypes;
  
  import mx.core.ScrollPolicy;
  import mx.events.FlexEvent;

  public class FixCapitalsControl extends PromptControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\PromptControls\FixCapitalsControl.as
    *
    *  Abstract:
    *     This is control for all fix capitals controls
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
    // это на случай когда у промпта нет answer, т.е. в этом случае _control нада инициализировать обьектом answer
    // его создаем на основе _prompt
    private var _answer:FixCapitalsAnswer;
    private var _isLoadResult:Boolean = false;
    private var _isNeedCheckAnswer:Boolean = false;  

    /**
    * Private methods
    */
  

    /**
    * Events handler
    */
    private function NewState_controlHandler(event:StateEvent):void
    {
      AddNewAnswerState(event.state);
    }


    /**
    * Initialization
    */
     private function CreationComplete_Handler(event:FlexEvent):void
     {
       _isCreationComplete = true;
       if (_isLoadResult)
       {
          LoadResults(_isNeedCheckAnswer);
          _isLoadResult = false;
       }
     }

    /**
    * Constructor
    */
    public function FixCapitalsControl(prompt:FixCapitals)
    {
      super(prompt);

      if (prompt.ChildAnswers().length != 0)
      {
        _control = new FixCapitalsWithAnswersControl(prompt);
        _control.addEventListener(StateEvent.NEW_STATE, NewState_controlHandler);
      }
      else
      {
        // создаем обьект FixCapitalsAnswer на основе prompt для инициализации _control в методе Init
        _answer = new FixCapitalsAnswer(prompt.ID, prompt.ID, true, prompt.num, prompt.text, prompt.answer, 0, prompt.parentActivity);
        _control = new FixCapitalsViewControlAdvanced();
        //Передаем промт в вид чтор бы можно было сохранить в него данные которые ввел пользователь
        (_control as FixCapitalsViewControlAdvanced).parentPrompt = prompt;
        if (this._decorator != null)
           (_control as FixCapitalsViewControlAdvanced).isNeedStateCorrect = true;
      }
      this.verticalScrollPolicy = ScrollPolicy.OFF;
      this.horizontalScrollPolicy = ScrollPolicy.OFF;
      this.addChild(_control);
      this.addEventListener(FlexEvent.CREATION_COMPLETE, CreationComplete_Handler);
     }


    /**
    * Virtuals methods
    */
    public override function FontName():void
    {
     // super.FontName();

      if (_control is PromptControl || !_isDefault)
        IFontStyle(_control).fontName =_fontName;
      else
        (_control as IFontStyle).DefaultFont();
    }

    public override function FontSize():void
    {
    //  super.FontSize(size);
      IFontStyle(_control).fontSize = _fontSize;
    }

    public override function FontColor():void
    {
      //super.FontColor(color);
      IFontStyle(_control).fontColor = _fontSize;
    }

    public override function Bold():void
    {
      IFontStyle(_control).Bold();
    }

    public override function Init(prompt:Prompt):void
    {
      if (_answer)
        IControlView(_control).Init(_answer);
    }

    public override function CheckAnswer():void
    {
      _isCorrect = false;
      if (_control is FixCapitalsWithAnswersControl)
        (_control as FixCapitalsWithAnswersControl).CheckAnswer();
      else
      {
        // вырезаем все марки
        var rightAnswer:String = _answer.answer.replace(FactoryRegExp.instance.Mark(EnumRegExp.G), ' ');
        //Вырезаем все теги
        rightAnswer = rightAnswer.replace(FactoryRegExp.instance.AllTegs(EnumRegExp.G),' ');
        // Проверяем ответ который ввел пользователь с правельным
        if (FactoryRegExp.NormalazeString(IResult(_control).GetText()) != FactoryRegExp.NormalazeString(rightAnswer))
        {
          IResult(_control).SetIncorrect();
          if (ActivityControl.instance.needScoreReport)
              return ;  
          AddNewAnswerState(StateTypes.SHOW_ANSWER);
        }
        else
        {
          _isCorrect = true;
          if (ActivityControl.instance.needScoreReport)
              return ;  
          IResult(_control).SetCorrect();
        }
      }
       _isStartState = false;
       NextState();
    }

    public override function ShowAnswer():void
    {
        _isStartState = false;
      if (_control is FixCapitalsWithAnswersControl)
          (_control as FixCapitalsWithAnswersControl).ShowAnswer();
      else
          IResult(_control).SetCorrect();
      NextState();     
    }

    public override function Continue():void
    {
        _isStartState = false;
      if (_answer)
        IResult(_control).Continue();
      NextState();   
    }

    public override function ShowResult():void
    {
       if (_control is FixCapitalsWithAnswersControl)
          (_control as FixCapitalsWithAnswersControl).ShowResult();
       else
         this.ShowAnswer();
    } 
    
    public override function SaveResults():void 
    {
      if (_control is FixCapitalsViewControlAdvanced)
          (_control as FixCapitalsViewControlAdvanced).SaveResults();
      if (_control is FixCapitalsWithAnswersControl)    
          (_control as FixCapitalsWithAnswersControl).SaveResults();
    }
    
    public override function LoadResults(needCheckAnswer:Boolean = false):void
    {
      _isNeedCheckAnswer = needCheckAnswer;
      _isLoadResult = true; 
      if (!_isCreationComplete)
          return;
      if (_control is PromptControl)
          (_control as PromptControl).isShowImageReport = isShowImageReport;
          
      if (_control is FixCapitalsViewControlAdvanced)
          (_control as FixCapitalsViewControlAdvanced).LoadResults(needCheckAnswer);
      if (_control is FixCapitalsWithAnswersControl)    
          (_control as FixCapitalsWithAnswersControl).LoadResults(needCheckAnswer);
      if (needCheckAnswer)
      {    
         CheckAnswer();
         AddScoreForReport();
        //Если показываем отчет учителю
        if (_isCorrect == false)
            if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport || 
                ActivityControl.userType == EMUserTypes.EM_Student_ShowReport_Extended)
            { 
               if (_control is FixCapitalsWithAnswersControl)//(isRebuildPromptControlStructure)
               {
                 _currentState = StateTypes.SHOW_ANSWER; 
                  AddButtonForReport();
               }
                else 
                  ShowResult();
            }
      }    
    }
     
    public override function Click_btnContinue(event:MouseEvent):void
    {
      this.ShowAnswer();
      if (_buttonManager.parent != null)
          _buttonManager.parent.removeChild(_buttonManager);
    } 
          
    public override function getContent():Array
    {
      return [_control];
    }

    public override function set isDefault(value:Boolean):void
    {
      _isDefault = value;
      if (_control is PromptControl)
        (_control as PromptControl).isDefault = value;
    }



    /**
    * Public members/properties
    */


    /**
    * Public methods
    */


  }
}