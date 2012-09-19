package Controls.PromptControls
{
  import Controls.ActivityControl;
  import Controls.AnswerControls.AnswerControl;
  import Controls.AnswerControls.MultipleAnswersControl;
  import Controls.AnswerControls.SingleAnswerControl;
  import Controls.ButtonManager;
  import Controls.Enviroment.HeaderControl;
  import Controls.Enviroment.TextExended;
  
  import Model.Answers.Answer;
  import Model.Answers.MultipleAnswer;
  import Model.Answers.SingleAnswer;
  import Model.Preferences;
  import Model.Prompts.MultipleChoice;
  import Model.Prompts.Prompt;
  import Model.StateTypes;
  
  import flash.events.MouseEvent;
  
  import interfaces.em.EMUserTypes;
  
  import mx.containers.Canvas;
  import mx.containers.HBox;
  import mx.containers.VBox;
  import mx.controls.RadioButtonGroup;
  import mx.core.ScrollPolicy;
  import mx.events.FlexEvent;

  public class MultipleChoiceControl extends PromptControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Control\PromptControls\MultipleChoiceControl.as
    *
    *  Abstract:
    *     This is control for multiple-choice control
    *
    *  Author:
    *     Evgenij Welikij   22-Ocotober-2009
    *
    *  Revision History:
    *
    ***************************************************************/


    /**
    * Static
    */
    //public static var instance:MultipleChoiceControl;

    /**
    * Private members/properties
    */
    protected var _answerControls:Array = new Array();

    private var rbGroup:RadioButtonGroup = new RadioButtonGroup();

    /*
      <vBox>
        <_control/>
        <hBox>
          <canvas/>
          <hboxColumns>
            <vBoxAnswers/>
          </hboxColumns>
        </hBox>
      </vBox>
    */
    private var vBox:VBox = new VBox();
    private var hBox:HBox = new HBox();
    private var canvas:Canvas = new Canvas();
    private var hBoxColumns:HBox = new HBox();  //  колонки
    private var vBoxAnswers:VBox = new VBox();
    private var _headerControl:HeaderControl;
  
    
  
    private var _isNeedCheckAnswer:Boolean = false;
    private var _isCreationCompleteEvent:Boolean = false;


    /**
    * Private methods
    */
    private function LoadResultsAfterCreationComplete(needCheckAnswer:Boolean):void
    {
      for each (var answerControl:AnswerControl in _answerControls)
        answerControl.LoadResults(needCheckAnswer);
      if(needCheckAnswer) 
      { 
         CheckAnswer();
         //if (isShowImageReport)
             //this._headerControl.imageReport.ChoiceState(_isCorrect);  
          //Добовляем Score 
          AddScoreForReport();
          if (_isCorrect == false) 
                AddButtonForReport();
      }  
    }
    
      /**
    * Events handler
    */
     private function CreationCompleteHandler(event:FlexEvent):void
     {
       _isCreationCompleteEvent = true;
       if (_isLoadResults)
           LoadResultsAfterCreationComplete(_isNeedCheckAnswer);
       _isLoadResults = false;     
     } 

    /**
    * Initialization
    */
    private function InitializeHandler(event:FlexEvent):void
    {
       fontName = _fontName;
       fontSize = _fontSize;
       fontColor = _fontColor; 
    }
    
    protected override function createChildren():void
    {
      var count:int = 0;    // подсчитывает кол-во созданых айтемов
      var answerControl:AnswerControl;
      _control = new TextExended();
	  _control.percentWidth = 100;
     // _control.setStyle("fontWeight", "bold");
     // _headerControl = new HeaderControl(_control);
      hBoxColumns.setStyle("horizontalGap", 50);
      hBoxColumns.addChild(vBoxAnswers);
      for each (var item:Answer in prompt.ChildAnswers())
      {
        count++;

        if (item is SingleAnswer)
        {
          answerControl = new SingleAnswerControl(item as SingleAnswer);
          (answerControl as SingleAnswerControl).group = rbGroup;
        }
        else if (item is MultipleAnswer)
                 answerControl = new MultipleAnswersControl(item as MultipleAnswer);
        
        answerControl.percentWidth = 100;  
        _answerControls.push(answerControl);
        vBoxAnswers.addChild(answerControl);

        if (count % 6 == 0)
        {
          vBoxAnswers = new VBox();
          vBoxAnswers.percentWidth = 100;
          hBoxColumns.addChild(vBoxAnswers); 
        }
      }
      //РѕС‚СЃС‚СѓРї СЃР»РµРІР°
      canvas.width = 20;

      hBox.addChild(canvas);
      hBox.addChild(hBoxColumns);

      vBox.addChild(_control);
      //_headerControl.setStyle("borderStyle", "solid");
      vBox.addChild(hBox);
      this.addChild(vBox);
      
      super.createChildren();
    }

    /**
    * Constructor
    */
    public function MultipleChoiceControl(prompt:MultipleChoice)
    {
      super(prompt); 
      this.percentWidth = 98;
      this.vBox.percentWidth = 100;
      this.hBoxColumns.percentWidth = 100;  
      this.vBoxAnswers.percentWidth = 100; 
      this.hBox.percentWidth = 100;
     
      this.vBox.setStyle("verticalGap", "0");
      this.verticalScrollPolicy = ScrollPolicy.OFF;
      this.horizontalScrollPolicy = ScrollPolicy.OFF;
      this.addEventListener(FlexEvent.CREATION_COMPLETE, CreationCompleteHandler); 
      this.addEventListener(FlexEvent.INITIALIZE, InitializeHandler);  
    }


    /**
    * Virtuals methods
    */
    public override function FontName():void 
    {
     if (_fontName == null) 
      return 
        
      super.FontName();

      if (!_isDefault)
        (_control as TextExended).setStyle("fontFamily", _fontName); 
      else
        DefaultFont();

      for each (var item:AnswerControl in _answerControls)
        item.fontName= _fontName;
    }

    public override function FontSize():void
    {
      super.FontSize();

      if (_isDefault && _prompt.relatedPromptID == 0)
        _control.setStyle("fontSize", _fontSize + Preferences.parentPromptFontSizeShift); 
      else
        _control.setStyle("fontSize", _fontSize + 1);

      for each (var item:AnswerControl in _answerControls)
        item.fontSize = _fontSize;
    }

    public override function FontColor():void
    {
       super.FontColor();
      _control.setStyle("color", _fontColor);

      for each (var item:AnswerControl in _answerControls)
        item.fontColor = _fontColor;
    }

    public override function CheckAnswer():void
    {
      if (IsComplete() == false)
        throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");
      
      //Счетчик правельных ответов
      var counterCorrectAnswers:int = 0;
      var isSomeSelected:Boolean = false;   
      _isCorrect = true;
      _isStartState = false;
      
      //Проверяем ответы      
      for each (var answerControl:AnswerControl in _answerControls ) 
           answerControl.CheckAnswer();
     
     //Проверяем нажал ли пользователь хоть на один чекбокс
      for each (var answerCon:AnswerControl in _answerControls) 
        if (answerCon.IsComplete())
            isSomeSelected = true;
     
     //Если CheckAnswer отключен то пользователю необязательно нажимать на чекбоксы
      if (ActivityControl.isCheckAnswer == false)
           isSomeSelected = true;
      
      for each (answerControl in _answerControls)
      {
        //Если ответ павельный и он выбран то увеличеваем счетчик правельных ответов   
        if (answerControl.isCorrect && answerControl.isSelected)
             counterCorrectAnswers++;
        else 
        {
           //Если выбран ответ но он неправльный то счетаем контрол как пройденный неправельно
           if (answerControl.isSelected)
               _isCorrect = false;     
        }
      } 
      //если ответили  не на все ответы правельно то помечаем контрол как неправельный
      if (counterCorrectAnswers != (_prompt as MultipleChoice).countCorrectAnswers)
          _isCorrect = false;
      
      // add state "Show Answer"
      if (_isCorrect == false)
        this.AddNewAnswerState(StateTypes.SHOW_ANSWER);
      NextState();   
    }
    
    public override function ShowAnswer():void
    {
       _isStartState = false;
      for each (var answerControl:AnswerControl in _answerControls)
        answerControl.ShowAnswer();
      NextState();   
    }

    public override function Continue():void
    {
        _isStartState = false;
      for each (var answerControl:AnswerControl in _answerControls)
        answerControl.Continue();
      NextState();   
    }
    
    public override function ShowResult():void
    {
      if (IsComplete() == false)
        throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");

      for each (var answerControl:AnswerControl in _answerControls)
           answerControl.ShowResult();
    }
    
    //Сохраняем данные которые ввел пользователь 
    public override  function SaveResults():void
    {
      for each (var answerControl:AnswerControl in _answerControls)
        answerControl.SaveResults();
    }
    
    //Загружаем данные которые ввел пользователь 
    public override function LoadResults(needCheckAnswer:Boolean = false):void
    {
        _isLoadResults = true;
        _isNeedCheckAnswer = needCheckAnswer;
        if (_isCreationCompleteEvent)
            LoadResultsAfterCreationComplete(needCheckAnswer);
    }
    
    public override function Click_btnContinue(event:MouseEvent):void
    {
      this.ShowAnswer();
      _buttonManager.DeleteYourself();
    } 
    
    public override function IsComplete():Boolean
    {
      if (ActivityControl.isCheckAnswer == false)
        return true;

      for each (var answerControl:AnswerControl in _answerControls)
        if ( answerControl.IsComplete())
          return true;
      return false;
    }
    
    
    public override function Init(prompt:Prompt):void
    {
      if (prompt.existInsertPlace == true)
        (_control as TextExended).htmlText  = prompt.textTo + "________" + prompt.textAfter;
      else
        (_control as TextExended).htmlText = prompt.text;
        
    }

    public override function DefaultFont():void
    {
      _control.setStyle("fontFamily", "Futura");
    }

    public override function set isDefault(value:Boolean):void
    {
      super._isDefault = value;

      for each (var item:AnswerControl in _answerControls)
        item.isDefault = value;
    }

    public override function get paddingTop():Number
    {
      return _control.height;
    }
    
   
    /**
    * Public members/properties
    */
    public override function get countTotalPromptControls():int 
    {
      var counter:int = 0;
      if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport) 
         if (this.prompt.scoreRight)
             return int(this.prompt.scoreRight); 
      
      for each (var answerControl:AnswerControl in _answerControls) 
                counter += answerControl.answer.isCorrect;       
      
      return counter;
    }
    
    public override function get countOfCompletePrompts():int
    {
      var counter:int = 0;
      if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport) 
         if (this.prompt.scoreLeft)
             return int(this.prompt.scoreLeft);
      
      for each (var answerControl:AnswerControl in _answerControls) 
                counter += answerControl.isCorrect;
                
      return counter;
    }
    
    protected override function AddAnswerForReport():String 
    {
      var resultStr:String = "";
      
      for each (var answerControl:AnswerControl in _answerControls) 
                if (answerControl.answer.isCorrect)
                    resultStr += answerControl.answer.text + ", ";
     resultStr =  resultStr.replace(new RegExp(",\s$"), ""); 
  
     return resultStr;             
    }
    
    /*public function get answerControls():Array
    {
      return _answerControls;
    }*/

    public function Delete():void
    {
      if (this.parent != null)
          this.parent.removeChild(this);
    }
    /**
    * Public methods
    */



  }
}