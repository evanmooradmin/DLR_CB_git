package Controls.PromptControls
{
  import Controls.ActivityControl;
  import Controls.QuizControl;
  import Controls.SimplePromptControls.FillInTheBlanks.FillInTheBlanksPromptViewControl;
  import Controls.SimplePromptControls.VariantOrViewControl;
  
  import Model.Answers.VariantORAnswer;
  import Model.Events.StateEvent;
  import Model.FactoryRegExp;
  import Model.Prompts.FillInTheBlanks;
  import Model.Prompts.Prompt;
  import Model.StateTypes;
  
  import flash.events.MouseEvent;
  
  import interfaces.IControlView;
  import interfaces.IFontStyle;
  import interfaces.IResult;
  import interfaces.em.EMUserTypes;
  
  import mx.core.ScrollPolicy;
  import mx.core.UIComponent;

  public class FillInTheBlanksControl extends PromptControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\PromptControls\FillInTheBlanksControl.as
    *
    *  Abstract:
    *     This is control for Fill-In-The-Blanks prompt
    *
    *  Author:
    *     Evgenij Welikij   03-November-2009
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
    protected var _complete:Boolean = false;


    /**
    * Private methods
    */
    //Метод проверяет на коректность введенный пользователем текст.
    // Данный метод принемает один из трех контролов
    private function CheckAnswers(control:UIComponent):Boolean
    {
      var isCorrect:Boolean = false;

      if (control is FillInTheBlanksPromptViewControl)      // если контрол не содержит контроллов с ответами
      {
        if (FactoryRegExp.NormalazeString(IResult(control).GetText()) == FactoryRegExp.NormalazeString((_prompt as FillInTheBlanks).answer))
          isCorrect = true;
      }
      else if (_control is FillInTheBlanksWithAnswersControl)
      {
        FillInTheBlanksWithAnswersControl(control).CheckAnswer();
        isCorrect = FillInTheBlanksWithAnswersControl(control).isCorrect;
      }
      else if (_control is VariantOrViewControl)
      {
        for each (var item:VariantORAnswer in (_prompt as FillInTheBlanks).variantOrAnswerContainer.ChildAnswers())
          if (FactoryRegExp.NormalazeString(item.text) == FactoryRegExp.NormalazeString(IResult(control).GetText()))
          {
            isCorrect = true;
            break;
          }
      }

      return isCorrect;
    }


    //Метод вызываеться только при отключенной опции CheckAnswer и управляет сотояниями текущего контрола
    private function SetStatesFromFillInTheBlanksPromptViewControl(control:FillInTheBlanksPromptViewControl):void
    {
      var isCorrect:Boolean = false;
      //Проверяем заполнил ли пользователь поле для ввода
      if (FactoryRegExp.NormalazeString(IResult(control).GetText()) != "")
      {
          isCorrect = CheckAnswers(control);
          if (!isCorrect)
             IResult(control).SetIncorrect();
      }
      IResult(control).SetCorrect();

    }


    //Метод вызываеться только при отключенной опции CheckAnswer и управляет сотояниями текущего контрола
    private function SetStatesFromFillInTheBlanksWithAnswersControl(control:FillInTheBlanksWithAnswersControl):void
    {
       var isCorrect:Boolean = false;
       control.isCheckAnswer = false;
       isCorrect = CheckAnswers(control);
    }


   //Метод вызываеться только при отключенной опции CheckAnswer и управляет сотояниями текущего контрола
    private function SetStatesFromVariantOrViewControl(control:VariantOrViewControl):void
    {
       var isCorrect:Boolean = false;
       //Проверяем заполнил ли пользователь поле для ввода
       if (FactoryRegExp.NormalazeString(IResult(control).GetText()) != "")
       {
          isCorrect = CheckAnswers(control);
          if (!isCorrect)
             IResult(control).SetIncorrect();
       }
       else
          control.isCheckAnswer = true;
      IResult(control).SetCorrect();
    }

    /**
    * Events handler
    */
    private function NewState_control(event:StateEvent):void
    {
      AddNewAnswerState(event.state);
    }


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function FillInTheBlanksControl(prompt:FillInTheBlanks)
    {
      super(prompt);
      
      if (prompt.variantOrAnswerContainer != null)
      {
           _control = new VariantOrViewControl();
      }
      else if (prompt.ChildAnswers().length != 0)
              _control = new FillInTheBlanksWithAnswersControl(prompt);
           else
              _control = new FillInTheBlanksPromptViewControl();

      this.verticalScrollPolicy = ScrollPolicy.OFF;
      this.horizontalScrollPolicy = ScrollPolicy.OFF;

      _control.addEventListener(StateEvent.NEW_STATE, NewState_control);
     
      this.addChild(_control);
    }


    /**
    * Virtuals methods
    */
    //Метод меняет шрифт у контролов
    public override function FontName():void
    {
      if (_isDefault)
          DefaultFont();     
      else
           IFontStyle(_control).fontName = _fontName; 
    }
    
     //Метод меняет размер у контролов
    public override function FontSize():void
    {
      IFontStyle(_control).fontSize = _fontSize; 
    }
    
    //Метод меняет цвет у контролов
    public override function FontColor():void
    {
    	if(_isDefault)
			  	DefaultFont();
			else   	 
          IFontStyle(_control).fontColor = _fontColor;
	  }

    public override function Bold():void
    {
      if (_control != null)
         IFontStyle(_control).Bold();
    }
   

    public override function CheckAnswer():void
    {
      if (IResult(_control).IsComplete() == false)
        throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");

      _isCorrect = false;
      _isStartState = false;

      _isCorrect = CheckAnswers(this._control);
     
      if (ActivityControl.instance.needScoreReport)
          return ;  
     
      if (!_isCorrect)
      {
        this.AddNewAnswerState(StateTypes.SHOW_ANSWER);
        if (_control is VariantOrViewControl)
           (_control as VariantOrViewControl).isCheckAnswer = true;
        IResult(_control).SetIncorrect();
       }
      else
        IResult(_control).SetCorrect();

      // флаг сигнализирующий что этот контрол на корректность проверять не надо
      _complete = true;
      NextState(); 
    }
   
    public override function ShowResult():void
    {
       this.CheckAnswer();
       if (!this._isCorrect)
           this.ShowAnswer();  
    }
      
     //Метод используется для вызова состояния SetCorrect у контрола но он так же вызываеться при отключенной опции
    // CheckAnswer поэтому здесь производим проверку ответа и вызова определенный состояний
    public override function ShowAnswer():void
    {
      var isCorrect:Boolean = false;
      _isStartState = false;
      if (_control is FillInTheBlanksPromptViewControl)
      {
        if (QuizControl.instance.preferences.isCheckAnswer == false)
             SetStatesFromFillInTheBlanksPromptViewControl(_control as FillInTheBlanksPromptViewControl);
        else
             IResult(_control).SetCorrect();
      }
      else if (_control is FillInTheBlanksWithAnswersControl)
      {
        if (QuizControl.instance.preferences.isCheckAnswer == false)
            SetStatesFromFillInTheBlanksWithAnswersControl(_control as FillInTheBlanksWithAnswersControl);
        else
            FillInTheBlanksWithAnswersControl(_control).ShowAnswer();
      }
      else if (_control is VariantOrViewControl)
      {
        if (QuizControl.instance.preferences.isCheckAnswer == false)
            SetStatesFromVariantOrViewControl(_control as VariantOrViewControl);
        else
            IResult(_control).SetCorrect();
      }
      NextState();
    }
    
    public override function SaveResults():void
    {
      IResult(_control).SaveResults();   
    }
    
    public override function LoadResults(needCheckAnswer:Boolean = false):void  
    {
      if (_control is PromptControl)
      {
         (_control as PromptControl).isShowImageReport = isShowImageReport;
         (_control as PromptControl).LoadResults(false);
         if (needCheckAnswer)
         {
             CheckAnswer();
             _isCorrect = (_control as PromptControl).isCorrect; 
             
             AddScoreForReport();
             if (needCheckAnswer && !_isCorrect)
                 AddButtonForReport(); 
         }
      }
      else
      {
          IResult(_control).LoadResults(false); 
          if (needCheckAnswer)
          { 
             CheckAnswer();
             //Если показываем отчет учителю
              if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport || 
                  ActivityControl.userType == EMUserTypes.EM_Student_ShowReport_Extended)   
                  ShowAnswer(); 
                 
              AddScoreForReport();     
           }
      }
    }
    
    public override function Init(prompt:Prompt):void
    {
      if (_control is PromptControl)
          PromptControl(_control).Init(prompt);
      else 
          IControlView(_control).Init(prompt);
    }

    public override function Continue():void
    {
        _isStartState = false;
      IResult(_control).Continue();
       NextState();
    }

    public override function set isDefault(value:Boolean):void
    {
      super.isDefault = value;

      if (_control is PromptControl)
          (_control as PromptControl).isDefault = value;
    }

    public override function DefaultFont():void 
    {
      
      (_control as IFontStyle).DefaultFont();
    }
    
    public override function Click_btnContinue(event:MouseEvent):void
    {
      ShowAnswer();
      _buttonManager.DeleteYourself(); 
    }
    
   //Количество правельно пройденных промптов
    public override function get countOfCompletePrompts():int
    {
      if (_control is FillInTheBlanksWithAnswersControl)
          return  (_control as PromptControl).countOfCompletePrompts;
      return super.countOfCompletePrompts;    
    }
    
    //Общее количество промтов
    public override function get countTotalPromptControls():int
    {
      if (_control is FillInTheBlanksWithAnswersControl)
          return  (_control as PromptControl).countTotalPromptControls;
      return super.countTotalPromptControls;    
    }    
      
    /**
    * Public members/properties
    */
  

    /**
    * Public methods
    */


  }
}