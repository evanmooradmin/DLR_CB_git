package Controls.PromptControls
{
  import Controls.ActivityControl;
  import Controls.AnswerControls.AnswerControl;
  import Controls.AnswerControls.Containers.SortingContainer;
  import Controls.AnswerControls.DragAnswers.DragSortingControl;
  import Controls.AnswerControls.SortingAnswerControl;
  import Controls.ButtonManager;
  import Controls.Enviroment.HeaderControl;
  import Controls.FlowBox.FlowBox;
  
  import Model.Answers.Answer;
  import Model.Answers.SortingAnswer;
  import Model.DragAndDropManager;
  import Model.Events.StateEvent;
  import Model.Preferences;
  import Model.Prompts.Sorting;
  import Model.StateTypes;
  
  import flash.events.MouseEvent;
  
  import interfaces.em.EMUserTypes;
  
  import mx.binding.utils.BindingUtils;
  import mx.containers.Canvas;
  import mx.containers.VBox;
  import mx.controls.Text;
  import mx.core.ScrollPolicy;
  import mx.events.FlexEvent;

  public class SortingControl extends PromptControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\PromptControls\SortingControl.as
    *
    *  Abstract:
    *     This is control for sorting prompt
    *
    *  Author:
    *     Evgenij Welikij   09-November-2009
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
    
    private var flowBox:FlowBox = new FlowBox();
    private var canvas:Canvas = new Canvas();
    private var vBoxAnswers:VBox = new VBox();
    private var canvasDragAnswers:SortingContainer;
    private var _headerControl:HeaderControl;
    
    
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
        DropObjectsByWord(item as SortingAnswerControl);  
        item.LoadResults(needCheckAnswer);
      }
      
       if (needCheckAnswer)
       {   
      
      
           CheckAnswer();
           AddScoreForReport();
           if (isShowImageReport)
               this._headerControl.imageReport.ChoiceState(_isCorrect);
           //Если показываем отчет учителю
         if (ActivityControl.isShowRepotFromTeacher && _isCorrect == false)
         {
             _currentState = StateTypes.SHOW_ANSWER;
             AddButtonForReport();  
         }  
       }     
     } 

    /**
    * Events handler
    */
    private function CreationCompleteHandler(event:FlexEvent):void
    {
      _isCreationCompleteEvent = true;
      var dropArr:Array = new Array();
      this.flowBox.width = this.width;

      for each (var item:SortingAnswerControl in _answerControls)
        dropArr.push(item.dropControl);

      //init drag and drop
      dragAndDrop = new DragAndDropManager(canvasDragAnswers.dragObjects, dropArr);
      
      if (_isLoadResults)
         LoadResultsAfterCreationComplete(_isNeedCheckAnswer);
      _isLoadResults = false;    
    }

    private function NewState_answerControl(event:StateEvent):void
    {
      AddNewAnswerState(event.state);
    }
    
    // Метод принимает MatchingAnswerControl куда надо дропать и слово которое надо туда дропнуть и дропает ее туды
    private function DropObjectsByWord(answerControl:SortingAnswerControl):void
    {
      //Перебераем все слова которые надо перетащить
      for each (var item:DragSortingControl in canvasDragAnswers.dragObjects)
      {
        //Сравниваем слово которое записано в answerControl как дропнутое со всеми остальными словами
        if ((answerControl.answer.result as String) == (item.answer as SortingAnswer).text)
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
    public function SortingControl(prompt:Sorting)
    {
      super(prompt);

      _control = new  Text();
     
      flowBox.width = ActivityControl.MAX_WIDTH - 30;
      (_control as Text).htmlText = prompt.text;
      (_control as Text).selectable = false;
      _headerControl = new HeaderControl(_control);
 
      flowBox.verticalScrollPolicy = ScrollPolicy.OFF;
      flowBox.horizontalScrollPolicy = ScrollPolicy.OFF;
      this.verticalScrollPolicy = ScrollPolicy.OFF;
      this.horizontalScrollPolicy = ScrollPolicy.OFF;
      vBoxAnswers.verticalScrollPolicy = ScrollPolicy.OFF;
      vBoxAnswers.horizontalScrollPolicy = ScrollPolicy.OFF;
   

      prompt.SortByNumAttribute();
      //создаем перетаскиваемые объекты
      canvasDragAnswers = new SortingContainer(prompt);


      //Сортируем в правельном порядке для создание контейнеров в который надо перетаскивать
      prompt.SortByAnswerAttribute();

      var answerControl:AnswerControl;

      for each (var item:Answer in prompt.ChildAnswers())
      {
        if (item is SortingAnswer)
        // Создаем объекты в которые нужно дропать
          answerControl = new SortingAnswerControl(item as SortingAnswer);

        answerControl.addEventListener(StateEvent.NEW_STATE, NewState_answerControl);
        _answerControls.push(answerControl);
        vBoxAnswers.addChild(answerControl);
        //vBoxAnswers.percentWidth = 100;
      }

      // высоту котролла с ответами(canvasDragAnswers) делаем такую же,
      // как и контролл с вопросами(vBoxAnswers). Возможно для каких-то случаев
      // надо сделать наоборот. Тогда эту строку надо перепесать.
      BindingUtils.bindProperty(canvasDragAnswers, "height", vBoxAnswers, "height");

      canvas.width = 20;

    

      flowBox.addChild(canvas);
      flowBox.addChild(vBoxAnswers);
      flowBox.addChild(canvasDragAnswers);

      this.addChild(_headerControl);
      this.addChild(flowBox);
     

      this.addEventListener(FlexEvent.CREATION_COMPLETE, CreationCompleteHandler);

    }


    /**
    * Virtuals methods
    */
    public override function FontName():void
    {
    //  super.FontName(name);

      if (!_isDefault)
        (_control as Text).setStyle("fontFamily", _fontName);
      else
        DefaultFont();

      canvasDragAnswers.fontName = _fontName;

      for each (var item:AnswerControl in _answerControls)
        item.fontName = _fontName;
    }

    public override function FontSize():void
    {
   //   super.FontSize(size);

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
     // super.FontColor(color);
      (_control as Text).setStyle("color", _fontColor);
      canvasDragAnswers.fontColor = _fontColor;

      for each (var item:AnswerControl in _answerControls)
        item.fontColor = _fontColor;
    }

    public override function CheckAnswer():void
    {
      if (IsComplete() == false)
        throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");
   
      _isStartState = false;
      _isCorrect = true;
      if (canvasDragAnswers.parent)
        canvasDragAnswers.parent.removeChild(canvasDragAnswers);

      _isStartState = false;
      for each (var item:AnswerControl in _answerControls)
      {
        item.CheckAnswer();
        if (item.isCorrect == false)
        _isCorrect = false;
      }
      NextState();
    }

    public override function ShowAnswer():void
    {
       _isStartState = false;
      for each (var item:AnswerControl in _answerControls)
        item.ShowAnswer();
      
      if (canvasDragAnswers.parent)
        canvasDragAnswers.parent.removeChild(canvasDragAnswers);
       NextState();  
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
          LoadResultsAfterCreationComplete(_isCreationCompleteEvent);
    }
    
    public override function Click_btnContinue(event:MouseEvent):void
    {
       _isStartState = false;
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