package Controls.PromptControls
{
  import Controls.ActivityControl;
  import Controls.AnswerControls.AnswerControl;
  import Controls.AnswerControls.Containers.MatchingContainer;
  import Controls.AnswerControls.DragAnswers.DragMatchingControl;
  import Controls.AnswerControls.MatchingAnswerControl;
  import Controls.ButtonManager;
  import Controls.Enviroment.HeaderControl;
  import Controls.QuizControl;
  
  import Model.Answers.Answer;
  import Model.Answers.MatchingAnswer;
  import Model.DragAndDropManager;
  import Model.Preferences;
  import Model.Prompts.Matching;
  import Model.StateTypes;
  
  import flash.events.MouseEvent;
  import flash.geom.Point;
  
  import interfaces.em.EMUserTypes;
  
  import mx.containers.Canvas;
  import mx.containers.HBox;
  import mx.containers.VBox;
  import mx.controls.Text;
  import mx.core.ScrollPolicy;
  import mx.core.UIComponent;
  import mx.events.FlexEvent;
  import mx.events.ResizeEvent;

  public class MatchingControl extends PromptControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\PromptControls\MatchingControl.as
    *
    *  Abstract:
    *     This is control for matching prompt
    *
    *  Author:
    *     Evgenij Welikij   26-October-2009
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
    private var vBox:VBox = new VBox();
    private var hBox:HBox = new HBox();
    private var canvas:Canvas = new Canvas();
    private var vBoxAnswers:VBox = new VBox();
    //Контейнер содержит объекты которые надо перетащить
    private var canvasDragAnswers:MatchingContainer;
    private var currentFountSize:int;
    private var _headerControl:HeaderControl;
    
    

    /**
    * Private methods
    */


    /**
    * Events handler
    */
    private function CreationComplete(event:FlexEvent):void
    {
      var dropArr:Array = new Array();

      for each (var item:MatchingAnswerControl in _answerControls)
        dropArr.push(item.dropControl);

      //init drag and drop
      dragAndDrop = new DragAndDropManager(canvasDragAnswers.dragObjects, dropArr);
      // 20 это размер вертикального скрола (ну приблизительнно) чтоб скрол не перекрывал боковой контейнер с ответами
    
      var point:Point = localToGlobal(new Point());
      point = QuizControl.instance.globalToLocal(point);
      
      this.width = ActivityControl.MAX_WIDTH - point.x - 20;
      
      point =  QuizControl.instance.globalToLocal(vBoxAnswers.localToGlobal(new Point()));
      vBoxAnswers.maxWidth = this.width - canvasDragAnswers.width - point.x;
     
      for each (var chaild:UIComponent in vBoxAnswers.getChildren())
      {
        if (chaild is MatchingAnswerControl)
           (chaild as MatchingAnswerControl).setMaxWidthChildren(vBoxAnswers.maxWidth);
      }
      for each (chaild in vBoxAnswers.getChildren())
                chaild.width;
    }

    private function Resize_hBoxHandler(event:ResizeEvent):void
    {
      var conteinerFromDragAndDropObjects:HBox = (event.target as HBox);
     // var conteinerFromDragAndDropObjectsWidth:int = conteinerFromDragAndDropObjects.localToGlobal(new Point()).x + conteinerFromDragAndDropObjects.width;
      if (conteinerFromDragAndDropObjects.width > this.width )
      {
          vBoxAnswers.maxWidth -= conteinerFromDragAndDropObjects.width - this.width;

        for each (var chaild:UIComponent in vBoxAnswers.getChildren())
        {
          if (chaild is MatchingAnswerControl)
             (chaild as MatchingAnswerControl).setMaxWidthChildren(vBoxAnswers.width);
        }
      }
    }

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


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function MatchingControl(prompt:Matching)
    {
      super(prompt);
      this.verticalScrollPolicy = ScrollPolicy.OFF;
      this.horizontalScrollPolicy = ScrollPolicy.OFF;
      vBoxAnswers.verticalScrollPolicy = ScrollPolicy.OFF;
      vBoxAnswers.horizontalScrollPolicy = ScrollPolicy.OFF;
      hBox.verticalScrollPolicy = ScrollPolicy.OFF;
      hBox.horizontalScrollPolicy = ScrollPolicy.OFF;

      prompt.SortByNumAttribute();

       _control = new Text();
      (_control as Text).htmlText = prompt.text;
      (_control as Text).selectable = false;
      
      _headerControl = new HeaderControl(_control);

      var answerControl:AnswerControl;
      
      //Создаем контейнеры в которые надо перетаскивать слова
      for each (var item:Answer in prompt.ChildAnswers())
      {
        if (item is MatchingAnswer)
          answerControl = new MatchingAnswerControl(item as MatchingAnswer);

        _answerControls.push(answerControl);
        vBoxAnswers.addChild(answerControl);
      }
      //Создаем контейнеры которые надо перетаскивать
      canvasDragAnswers = new MatchingContainer(prompt);

      if (prompt.text != "")
        canvas.width = 20;

      hBox.addChild(canvas);
      hBox.addChild(vBoxAnswers);
      hBox.addChild(canvasDragAnswers);

      vBox.addChild(_headerControl);
      vBox.addChild(hBox);

      this.addChild(vBox);
      this.addEventListener(FlexEvent.CREATION_COMPLETE, CreationComplete);
      hBox.addEventListener(ResizeEvent.RESIZE, Resize_hBoxHandler);

      hBox.setStyle('verticalAlign','middle');

    }


    /**
    * Virtuals methods
    */
    public override function FontName():void
    {
     // super.FontName(name);

      if (!_isDefault)
        (_control as Text).setStyle("fontFamily", _fontName);
      else
        DefaultFont();

      canvasDragAnswers.fontName =_fontName;

      for each (var item:AnswerControl in _answerControls)
        item.fontName = _fontName;
    }

    public override function FontSize():void
    {
     // super.FontSize(size);

      if (_isDefault && _prompt.relatedPromptID == 0)
        (_control as Text).setStyle("fontSize", _fontSize + Preferences.parentPromptFontSizeShift);
      else
        _control.setStyle("fontSize", _fontSize + 1);

      canvasDragAnswers.fontSize = _fontSize;

      for each (var item:AnswerControl in _answerControls)
        item.fontSize = _fontSize;
    }

    public override function FontColor():void
    {
      //super.FontColor();
      (_control as Text).setStyle("color", _fontColor);
      canvasDragAnswers.fontColor = _fontColor;

      for each (var item:AnswerControl in _answerControls)
        item.fontColor = _fontColor
    }

    public override function CheckAnswer():void
    {
      if (_complete == false)
      {
        if (IsComplete() == false)
          throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");

        // hide VBoxAnswes control
        canvasDragAnswers.visible = false;

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
      // hide VBoxAnswes control
      canvasDragAnswers.visible = false;

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
            item.SaveResults()
    }
   
    public override function LoadResults(needCheckAnswer:Boolean = false):void
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
           CheckAnswer()
         AddScoreForReport();  
         if (isShowImageReport)  
             _headerControl.imageReport.ChoiceState(_isCorrect);
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
    }
    

    /**
    * Public members/properties
    */
    public override function get countTotalPromptControls():int 
    {
      if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport) 
         if (this.prompt.scoreRight)
             return int(this.prompt.scoreRight);
    
      return _answerControls.length;
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
  
    /**
    * Public methods
    */


  }
}