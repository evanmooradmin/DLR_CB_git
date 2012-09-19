package Controls.PromptControls
{
  import Controls.ActivityControl;
  import Controls.AnswerControls.AnswerControl;
  import Controls.AnswerControls.FillInTheBlanksAnswerControl;
  import Controls.Enviroment.HeaderControl;
  import Controls.QuizControl;
  
  import Model.Answers.Answer;
  import Model.Answers.FillInTheBlanksAnswer;
  import Model.Events.StateEvent;
  import Model.Preferences;
  import Model.Prompts.FillInTheBlanks;
  import Model.Prompts.Prompt;
  import Model.StateTypes;
  
  import flash.events.MouseEvent;
  import flash.utils.Dictionary;
  
  import interfaces.IResult;
  import interfaces.em.EMUserTypes;
  
  import mx.containers.Canvas;
  import mx.containers.HBox;
  import mx.containers.VBox;
  import mx.controls.Text;
  import mx.core.Container;
  import mx.core.ScrollPolicy;

  public class FillInTheBlanksWithAnswersControl extends PromptControl implements IResult
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\PromptControls\FillInTheBlanksWithAnswersControl.as
    *
    *  Abstract:
    *     This is control for fill in the blanks prompt with contains answers prompt
    *
    *  Author:
    *     Evgenij Welikij   05-Nevember-2009
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
    protected var _answerControls:Array = new Array();

    protected var _checkedAnswers:Dictionary = new Dictionary();
    
    private var _headerControl:HeaderControl;
 
    /*
      <vBox>
        <_control/>
        <hBox>
          <canvas/>
          <vBoxAnswers/>
        </hBox>
      </vBox>
    */
    private var vBox:VBox = new VBox();
    private var hBox:HBox = new HBox();
    private var canvas:Canvas = new Canvas();
    private var containerAnswers:Container;


    /**
    * Private methods
    */
    // метод ищет answer в _prompt.ChildAnswers()
    private function FindInAnswers(answer:FillInTheBlanksAnswerControl):Boolean
    {
      var temp:String = "";
      for each (var item:FillInTheBlanksAnswer in _prompt.ChildAnswers())
      {
        if (item.answer == answer.GetText() && _checkedAnswers[item] == null)
        {
          _checkedAnswers[item] = answer;

          // если ответы стоят в неправильном порядке то мы поменяем их местами
          temp = (answer.answer as FillInTheBlanksAnswer).answer;
          (answer.answer as FillInTheBlanksAnswer).answer = item.answer;
          item.answer = temp;

          return true;
        }
      }

      return false;
    }


    /**
    * Events handler
    */
    private function NewState_answerControl(event:StateEvent):void
    {
      AddNewAnswerState(event.state);
    }


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function FillInTheBlanksWithAnswersControl(prompt:FillInTheBlanks)
    {
      super(prompt);
      this.verticalScrollPolicy = ScrollPolicy.OFF;
      this.horizontalScrollPolicy = ScrollPolicy.OFF;
      this.percentWidth = 100;
      //this.maxWidth = ActivityControl.MAX_WIDTH - 30;
      
      _control = new Text();
      // _control.maxWidth = ActivityControl.MAX_WIDTH - 30;
      (_control as Text).selectable = false;
      
      _headerControl = new HeaderControl(_control);
     
      // в зависимости от параметра создаем соответствующий контейнер
      if (prompt.isHorizontal)
        containerAnswers = new HBox();
      else
        containerAnswers = new VBox();
      
      
      var answerControl:AnswerControl;

      for each (var item:Answer in prompt.ChildAnswers())
      {
        if (item is FillInTheBlanksAnswer)
            answerControl = new FillInTheBlanksAnswerControl(item as FillInTheBlanksAnswer);

        answerControl.addEventListener(StateEvent.NEW_STATE, NewState_answerControl);
        _answerControls.push(answerControl);
        containerAnswers.addChild(answerControl);
      }

      canvas.width = 20;
      hBox.percentWidth = 100;
      hBox.addChild(canvas);
      hBox.addChild(containerAnswers);

      hBox.verticalScrollPolicy = ScrollPolicy.OFF;
      hBox.horizontalScrollPolicy = ScrollPolicy.OFF;

      vBox.verticalScrollPolicy = ScrollPolicy.OFF;
      vBox.horizontalScrollPolicy = ScrollPolicy.OFF;
      vBox.percentWidth = 100;
      vBox.addChild(_headerControl);
      vBox.addChild(hBox);
    
      this.addChild(vBox);
    }


    /**
    * Virtuals methods
    */
    public override function FontName():void
    {
      super.FontName();

//      if (!_isDefault)
//        (_control as Text).setStyle("fontFamily", _fontName);
//      else
//        DefaultFont();

      for each (var item:AnswerControl in _answerControls)
        item.fontName = _fontName;
    }

    public override function FontSize():void
    {
     //super.FontSize();

      if (_isDefault && _prompt.relatedPromptID == 0)
        (_control as Text).setStyle("fontSize", _fontSize + Preferences.parentPromptFontSizeShift);
      else
        _control.setStyle("fontSize", _fontSize + 1);

      for each (var item:AnswerControl in _answerControls)
        item.fontSize = _fontSize;
    }

    public override function FontColor():void
    {
     // super.FontColor();
    //  (_control as Text).setStyle("color", _fontColor);

      for each (var item:AnswerControl in _answerControls)
        item.fontColor = _fontColor;
    }
    
    public override function CheckAnswer():void
    {
      if (this.isCheckAnswer == false)
      {
         for each (var item:FillInTheBlanksAnswerControl in _answerControls)
          {
             item.SetCorrect();
          }
      }
       else
       {
          if (!IsComplete())
              throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");

          _isCorrect = true;
  
          for each (item in _answerControls)
          {
            if (FindInAnswers(item) == false)
            {
              item.SetIncorrect();
              _isCorrect = false;
            }
            else
              item.SetCorrect();
          }
       }
        NextState();
    }

    public override function ShowAnswer():void
    {
        _isStartState = false;
      for each (var item:AnswerControl in _answerControls)
        item.ShowAnswer();
       NextState();  
    }

    public override function Init(prompt:Prompt):void
    {
      (_control as Text).htmlText = prompt.text;
    }

    public override function SaveResults():void
    {
      for each (var item:FillInTheBlanksAnswerControl in _answerControls)
              item.SaveResults();
    }
    
    public override function LoadResults(needCheckAnswer:Boolean = false):void
    {
      for each (var item:FillInTheBlanksAnswerControl in _answerControls)
              item.LoadResults(needCheckAnswer);
      if (needCheckAnswer) 
      {       
          CheckAnswer();
          AddScoreForReport();
          if (isShowImageReport)
              _headerControl.imageReport.ChoiceState(_isCorrect);
            //Если показываем отчет учителю
         if ((QuizControl.userType == EMUserTypes.EM_Teacher_ShowReport ||
              QuizControl.userType == EMUserTypes.EM_Student_ShowReport_Extended) && _isCorrect == false)
         { 
            _currentState = StateTypes.SHOW_ANSWER;
            AddButtonForReport();
        }
      }        
    }
    
    public override function Click_btnContinue(event:MouseEvent):void
    {
      this.ShowAnswer();
      if (_buttonManager.parent != null)
          _buttonManager.parent.removeChild(_buttonManager);
    } 
    
    public override function IsComplete():Boolean
    {
      for each (var item:AnswerControl in _answerControls)
        if (item.IsComplete() == false)
          return false;

      return true;
    }

    public virtual function SetCorrect():void
    {
    }

    public virtual function SetIncorrect():void
    {
    }

    public override function Continue():void
    {
       _isStartState = false; 
      for each (var item:AnswerControl in _answerControls)
        item.Continue();
       NextState();   
    }

    public override function DefaultFont():void
    {
      _control.setStyle("fontFamily", "Futura");
    }

    public override function set isDefault(value:Boolean):void
    {
      super.isDefault = value;

      for each (var item:AnswerControl in _answerControls)
        item.isDefault = value;
    }
  
    public override function getContent():Array
    {
      return [hBox]
    }
    
    //Количество законченых промтов
    public override function get countOfCompletePrompts():int
    {
      var counter:int = 0;
      if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport) 
         if (this.prompt.scoreLeft)
             return int(this.prompt.scoreLeft);
      
      for each (var item:AnswerControl in _answerControls) 
               if (item.isCorrect)
                    counter++;
      
      return counter;               
    }
    
    //Общее количество промтов
    public override function get countTotalPromptControls():int
    {
      var counter:int = 0;
      if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport) 
         if (this.prompt.scoreRight)
             return int(this.prompt.scoreRight);
      
      for each (var item:AnswerControl in _answerControls)
                if (item.answer.isCorrect)
                    counter++;
       
     return counter;
    }    
    /**
    * Public members/properties
    */
    public var isCheckAnswer:Boolean = true;


    /**
    * Public methods
    */



  }
}