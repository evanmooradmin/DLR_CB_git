package Controls.PromptControls
{
  import Controls.ActivityControl;
  import Controls.AnswerControls.AnswerControl;
  import Controls.AnswerControls.Containers.MatchingContainer;
  import Controls.AnswerControls.DragAnswers.DragMatchingControl;
  import Controls.AnswerControls.MatchingAnswerControl;
  import Controls.Enviroment.HeaderControl;
  import Controls.FlowBox.FlowBox;
  
  import Model.Answers.Answer;
  import Model.Answers.MatchingAnswer;
  import Model.DragAndDropManager;
  import Model.Preferences;
  import Model.Prompts.ActivityMatching;
  import Model.Prompts.Matching;
  import Model.StateTypes;
  
  import flash.events.MouseEvent;
  
  import interfaces.em.EMUserTypes;
  
  import mx.containers.Canvas;
  import mx.containers.HBox;
  import mx.containers.VBox;
  import mx.controls.Label;
  import mx.controls.Text;
  import mx.core.ScrollPolicy;
  import mx.events.FlexEvent;

  public class ActivityMatchingControl extends PromptControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\PromptControls\ActivityMatchingControl.as
    *
    *  Abstract:
    *     This is control for activity matching prompt
    *
    *  Author:
    *     Evgenij Welikij   04-March-2010
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
    protected var _headerControls:Array = [];
    protected var dragAndDrop:DragAndDropManager;
    protected var _complete:Boolean = false;

    /*
      <vBox>
        <_control/>
        <hBox>
          <canvas/>
          <vBoxAnswers/>
          <canvasDragAnswers/>
        </hBox>
      </vBox>
    */
    private var hBox:HBox = new HBox();
    private var canvas:Canvas = new Canvas();
    private var vBoxAnswers:VBox = new VBox();
    private var canvasDragAnswers:MatchingContainer;
    
    private var _headerControl:HeaderControl;
    private var _flowBox:FlowBox = new FlowBox();
    
 
    private var _isNeedCheckAnswer:Boolean = false;
    private var _isCreationCompleteEvent:Boolean = false;


    /**
    * Private methods
    */
     
     private function LoadResultsAfterCreationComplete(needCheckAnswer:Boolean):void
     { 
       //Перебераем контейнеры в которые надо перетаскивать
      for each (var item:AnswerControl in _answerControls)
      {
        //Берем объект в который надо дропать, если в него перетащили слово он будет содержит его в result
        DropObjectsByWord(item as MatchingAnswerControl);  
        item.LoadResults(needCheckAnswer);
      }
      
       if (needCheckAnswer)
       {   
         for each (item in _answerControls)
            item.LoadResults(needCheckAnswer)  
           CheckAnswer();
         if (isShowImageReport)  
             _headerControl.imageReport.ChoiceState(_isCorrect);
       
        //Если показываем отчет учителю
        if (_isCorrect == false)
            if (ActivityControl.isShowRepotFromTeacher || ActivityControl.userType == EMUserTypes.EM_Student_ShowReport_Extended)
                AddButtonForReport();
       }           
     }
     
    /**
    * Events handler
    */
     // Метод принимает MatchingAnswerControl куда надо дропать и слово которое надо туда дропнуть и дропает ее туды
        private function DropObjectsByWord(answerControl:MatchingAnswerControl):void
        {
          //Перебераем все слова которые надо перетащить
          for each (var item:DragMatchingControl in canvasDragAnswers.dragObjects)
           {
             //Сравниваем слово которое записано в answerControl как дропнутое со всеми остальными словами
            if ((answerControl.answer.result as String) == (item.answer as MatchingAnswer).answer)
            {
                 //Дропаем слово 
                 answerControl.dropControl.DropObject(item);
                 break;
             }
           }
        }
     
    private function creationCompleteHandler(event:FlexEvent):void
    {
      _isCreationCompleteEvent = true;
      _flowBox.width = this.width;
      if (_isLoadResults)
          LoadResultsAfterCreationComplete(_isNeedCheckAnswer); 
      _isLoadResults = false;    
    }    

    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function ActivityMatchingControl(prompt:ActivityMatching)
    {
      super(prompt);
            
      this.verticalScrollPolicy = ScrollPolicy.OFF;
      this.horizontalScrollPolicy = ScrollPolicy.OFF;
      
      var answerControl:AnswerControl;
      var promptWithAllAnswers:Matching = new Matching(prompt.ID, prompt.page, prompt.num, prompt.showNum,
          prompt.relatedActivityID, prompt.cascading, prompt.text);    // в этот промпт будем добавлять все Answer

      _control = new Text();
      (_control as Text).htmlText = prompt.text;
      (_control as Text).selectable = false;
      
      _headerControl = new HeaderControl(_control);

      for each (var itemMathing:Matching in prompt.ChildPrompts())
      {
        if (promptWithAllAnswers == null)
          promptWithAllAnswers = itemMathing; 
     
        // Здесь хранятся поля в которые надо перетаскивать
        vBoxAnswers.setStyle("horizontalAlign", "center");
        vBoxAnswers.verticalScrollPolicy = ScrollPolicy.OFF;
        vBoxAnswers.horizontalScrollPolicy = ScrollPolicy.OFF;
    
        var headerLabel:Label = new Label();

        headerLabel.htmlText = itemMathing.text;
        _headerControls.push(headerLabel);
        vBoxAnswers.addChild(headerLabel);
      
        for each (var item:Answer in itemMathing.ChildAnswers())
        {
          if (item is MatchingAnswer)
            answerControl = new MatchingAnswerControl(item as MatchingAnswer, false);

          _answerControls.push(answerControl);
          vBoxAnswers.addChild(answerControl);
       
          if (promptWithAllAnswers != itemMathing)
          {
            var matchingAnswer:MatchingAnswer = new MatchingAnswer(item.ID, promptWithAllAnswers.ID, item.isCorrect, item.num,
                "", item.text, (item as MatchingAnswer).answer, 0, item.parentActivity);

            promptWithAllAnswers.AddAnswer(matchingAnswer);
          }
        }
        _flowBox.addChild(vBoxAnswers);
        vBoxAnswers = new VBox();
      }
      
      promptWithAllAnswers.SortByNumAttribute();
      //Контейнр для слов которые надо перетаскивать
      canvasDragAnswers = new MatchingContainer(promptWithAllAnswers);

      canvas.width = 20;
      //_flowBox.addEventListener(FlexEvent., UpdateComplete_hBoxHandler);
      _flowBox.addChild(canvasDragAnswers);
 
      this.addChild(_headerControl); 
      this.addChild(_flowBox);
      this.addEventListener(FlexEvent.CREATION_COMPLETE, creationCompleteHandler); 
    }
  

    /**
    * Virtuals methods
    */
    
    
    public override function FontName():void
    {
      //super.FontName();

      if (!_isDefault)
      {
        _control.setStyle("fontFamily", _fontName);

        for each (var label:Label in _headerControls)
          label.setStyle("fontFamily", _fontName);
      }
      else
        DefaultFont();

      for each (var item:AnswerControl in _answerControls)
        item.fontName = _fontName;

      canvasDragAnswers.fontName = _fontName;
    }

    public override function FontSize():void
    {
     // super.FontSize();

      if (_isDefault && _prompt.relatedPromptID == 0)
        (_control as Text).setStyle("fontSize", _fontSize + Preferences.parentPromptFontSizeShift);
      else
        _control.setStyle("fontSize", _fontSize + 1);

      canvasDragAnswers.fontSize =_fontSize;

      for each (var label:Label in _headerControls)
        label.setStyle("fontSize", _fontSize);

      for each (var item:AnswerControl in _answerControls)
        item.fontSize = _fontSize;
    }

    public override function FontColor():void
    {
      //super.FontColor();

      _control.setStyle("color", _fontColor);
      canvasDragAnswers.fontColor = _fontColor;

      for each (var label:Label in _headerControls)
        label.setStyle("color", _fontColor);

      for each (var item:AnswerControl in _answerControls)
        item.fontColor = _fontColor;
    }

    protected override function createChildren():void
    {
      super.createChildren();

      var dropArr:Array = new Array();

      for each (var item:MatchingAnswerControl in _answerControls)
        dropArr.push(item.dropControl);

      //init drag and drop
      dragAndDrop = new DragAndDropManager(canvasDragAnswers.dragObjects, dropArr);
    }

    public override function CheckAnswer():void
    {
      if (_complete == false)
      {
        if (IsComplete() == false)
          throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");

        // hide VBoxAnswes control

        if (canvasDragAnswers.parent)
            canvasDragAnswers.parent.removeChild(canvasDragAnswers);

        _isCorrect = true;
        _isStartState = false;
        for each (var item:AnswerControl in _answerControls)
        {
          item.CheckAnswer();
          if (item.isCorrect == false)
            _isCorrect = false;
        }

        // add state "Show Answer"
        if (_isCorrect == false)
          this.AddNewAnswerState(StateTypes.SHOW_ANSWER);
          _complete = true;
        NextState();  
      }
    }

    public override function ShowAnswer():void
    {
       _isStartState = false;
      if (canvasDragAnswers.parent)
        canvasDragAnswers.parent.removeChild(canvasDragAnswers);

      for each (var item:AnswerControl in _answerControls)
        item.ShowAnswer();
      NextState();   
    }
    
    public override function ShowResult():void
    {
        this.CheckAnswer();
    }
    
    public override function SaveResults():void
    {
        for each (var item:AnswerControl in _answerControls)
             item.SaveResults();
    }
    
    public override function LoadResults(needCheckAnswer:Boolean = false):void
    {
        _isLoadResults = true;
        _isNeedCheckAnswer = needCheckAnswer;
        if (_isCreationCompleteEvent)
            LoadResultsAfterCreationComplete(needCheckAnswer);
    }
    
    public override function Click_btnContinue(event:MouseEvent):void
    {
      ShowAnswer();
      if (_buttonManager.parent != null)
          _buttonManager.parent.removeChild(_buttonManager); 
    }
    
    public override function IsComplete():Boolean
    {
      var isComplete:Boolean = true;

      for each (var answerControl:AnswerControl in _answerControls)
        if (answerControl.IsComplete() == false)
          isComplete = false;
      return isComplete;
    }

    public override function set isDefault(value:Boolean):void
    {
      super.isDefault = value;

      canvasDragAnswers.isDefault = value;

      for each (var item:AnswerControl in _answerControls)
        item.isDefault = value;
    }

    public override function DefaultFont():void
    {
      _control.setStyle("fontFamily", "Futura");

      for each (var item:Label in _headerControls)
          item.setStyle("fontFamily", "Futura");
    }


    /**
    * Public members/properties
    */
    //Количество законченых промтов
    public override function get countOfCompletePrompts():int
    {
      var counter:int = 0;
      for each (var answerControl:AnswerControl in _answerControls)  
                counter += answerControl.isCorrect;
                
      return counter;
    }
    
    //Количество заполненых промтов
    public override function get countOfFilledPrompts():int
    {
      if (isControlComplete)
          return 1
      else 
          return 0    
    }
    
    //Общее количество промтов
    public override function get countTotalPromptControls():int
    {
      return _answerControls.length;
    }    

    /**
    * Public methods
    */


  }
}