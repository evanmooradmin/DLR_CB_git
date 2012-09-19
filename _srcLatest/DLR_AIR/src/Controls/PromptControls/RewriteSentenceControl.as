package Controls.PromptControls
{
  import Controls.ActivityControl;
  import Controls.QuizControl;
  import Controls.SimplePromptControls.RewriteSentencesViewControl;
  
  import Model.Answers.Answer;
  import Model.EnumRegExp;
  import Model.FactoryRegExp;
  import Model.Prompts.Prompt;
  import Model.Prompts.RewriteSentence;
  import Model.StateTypes;
  
  import interfaces.IControlView;
  import interfaces.IFontStyle;
  import interfaces.IResult;
  import interfaces.em.EMUserTypes;

  public class RewriteSentenceControl extends PromptControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\PromptControls\RewriteSentenceControl.as
    *
    *  Abstract:
    *     This is control for rewrite sentences prompt
    *
    *  Author:
    *     Evgenij Welikij   29-Ocotber-2009
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
    // Метод переберает все варианты ответов и проверяет их с текстом который ввл пользователь. В случае совпадениея возвращаеться true
    private function CheckAnswers(itemArray:Array, userAnswer:String):Boolean
    {
      var isCorrect:Boolean = false;

      for each (var item:Answer in itemArray)
         {
          //вывезаем все марки с тега
           var text:String = item.text.replace(FactoryRegExp.instance.Mark(EnumRegExp.G), '');
          // заменяем кавычки на нормальные чтобы сравнить строки
           text = text.replace(new RegExp("[“”]", "g"), "\"");
           // сравниваем то что ввел пользователь с ответом, сравниваються нормализированы предложения с один пробелом между слов и тд и тп
           if (FactoryRegExp.NormalazeString(userAnswer) == FactoryRegExp.NormalazeString(text))
           {
             isCorrect = true;
             // Записываем строку с которой надо будет сравнить то что ввел пользователь и подсветить
             (prompt as RewriteSentence).answer = item.text;
              break;
           }
         }
      return isCorrect;
    }


    //Метод проверяет введенный ответ с ответом пользователя и возвращает булевское значение
    //На вход принемается правельный ответ и ответ который ввел пользователь
    private function CheckOneAnswer(rightAnswer:String, userAnswer:String):Boolean
    {
      var isCorrect:Boolean = false;
         //вырезаем теги
      var pattern:RegExp = new RegExp("(<\\s*?/{0,1}\\s*?[a-z]{1,2}\\s*?/{0,1}\\s*?>)",'g');
      var rightAnswer:String = rightAnswer.replace(pattern,' ');
      rightAnswer = rightAnswer.replace(new RegExp("[“”]", "g"), "\"");
      //Вырезаем {}
      rightAnswer =  rightAnswer.replace(FactoryRegExp.instance.Mark(EnumRegExp.G),' ');
      rightAnswer =  FactoryRegExp.NormalazeString(rightAnswer);

      if (FactoryRegExp.NormalazeString(userAnswer) == FactoryRegExp.NormalazeString(rightAnswer))
          isCorrect = true;

     return  isCorrect;
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
    public function RewriteSentenceControl(prompt:RewriteSentence)
    {
      super(prompt);

      _control = new RewriteSentencesViewControl(); 
      (_control as RewriteSentencesViewControl).parentControl = this; 
      this.percentWidth = 100; 
      
      this.addChild(_control);
    } 


    /**
    * Virtuals methods
    */
    public override function FontName():void
    {
     // super.FontName(name);

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
      if (IsComplete() == false)
        throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");

      _isCorrect = false;
      _isStartState = false;
      // если есть другие варианты ответа проверяем их
      if ((prompt as RewriteSentence).variantOrAnswerContainer != null)
      {
        //Проверяем введенный ответ на коректность
         _isCorrect = CheckAnswers((prompt as RewriteSentence).variantOrAnswerContainer.ChildAnswers(), IResult(_control).GetText());
        // Если ответ неправельный то вызываем состояние отображение неправельного ответа
         if (_isCorrect == false)
         {
             this.AddNewAnswerState(StateTypes.SHOW_ANSWER);
             if (ActivityControl.instance.needScoreReport == false)
                 IResult(_control).SetIncorrect();
         }
         else
         {
             if (ActivityControl.instance.needScoreReport == false)
                 ShowAnswer();
             _isCorrect = true;
         }
      }
      else
      {
        //Если введеный ответ не совпадает с правельным то вызываем состояние SetIncorrect
        if (!CheckOneAnswer((prompt as RewriteSentence).answer, IResult(_control).GetText()))
        {
          if (ActivityControl.instance.needScoreReport == false)
              IResult(_control).SetIncorrect();
          _isCorrect = false;    
          this.AddNewAnswerState(StateTypes.SHOW_ANSWER);
        }
        else
        {
          if (ActivityControl.instance.needScoreReport == false)
              ShowAnswer();
          _isCorrect = true;
        }
      }
       NextState();
    }

    public override function Continue():void
    {
        _isStartState = false;
      IResult(_control).Continue();
       NextState();
    }


    //Метод используется для вызова состояния SetCorrect у контрола но он так же вызываеться при отключенной опции
    // CheckAnswer поэтому здесь производим проверку ответа и вызова определенный состояний
    public override function ShowAnswer():void
    {
      var isCorrect:Boolean = false;
     _isStartState = false;
          if (QuizControl.instance.preferences.isCheckAnswer == false)
          {
              // если есть другие варианты ответа проверяем их
               if ((prompt as RewriteSentence).variantOrAnswerContainer != null)
               {
                  //Проверяем введенный ответ на коректность
                 if(!CheckAnswers((prompt as RewriteSentence).variantOrAnswerContainer.ChildAnswers(), IResult(_control).GetText()))
                    (_control as RewriteSentencesViewControl).isCheckAnswer = false;
               }
               else
                 //Если введеный ответ не совпадает с правельным то вызываем состояние SetIncorrect
                 if (!CheckOneAnswer((prompt as RewriteSentence).answer, IResult(_control).GetText()))
                    (_control as RewriteSentencesViewControl).isCheckAnswer = false;
             //Если пользователь не ввел ответ или ответ пустой то показываем некоректное состояние
              if (FactoryRegExp.trim(IResult(_control).GetText()) == "")
                  (_control as RewriteSentencesViewControl).isCheckAnswer = true;
              else if ((_control as RewriteSentencesViewControl).isCheckAnswer == false)
                    IResult(_control).SetIncorrect();
          }

          IResult(_control).SetCorrect();
        NextState();   
    }

    public override function ShowResult():void
    {
      this.CheckAnswer();
      if (_isCorrect == false)
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
           //Если показываем отчет учителю
          if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport || 
              ActivityControl.userType == EMUserTypes.EM_Student_ShowReport_Extended) 
              ShowResult(); 
          else     
              CheckAnswer();
          AddScoreForReport();     
        }
    }  
    
    public override function Init(prompt:Prompt):void
    {
      IControlView(_control).Init(prompt);
    }

    public override function IsComplete():Boolean
    {
      if (IResult(_control).IsComplete())
        return true;
      return false;
    }
    
  
      
    /**
    * Public members/properties
    */


    /**
    * Public methods
    */


  }
}