package Controls.PromptControls
{
  import Controls.ActivityControl;
  import Controls.Enviroment.HeaderControl;
  import Controls.Enviroment.TextExended;
  
  import Model.Events.ActivityDirectionsEvent;
  import Model.Events.StateEvent;
  import Model.Prompts.ActivityDirections;
  import Model.Prompts.FixCapitals;
  import Model.Prompts.Prompt;
  import Model.StateTypes;
  
  import interfaces.em.EMUserTypes;
  
  import mx.containers.Canvas;
  import mx.containers.HBox;
  import mx.containers.VBox;
  import mx.controls.Spacer;
  import mx.controls.Text;
  import mx.core.ScrollPolicy;
  import mx.events.FlexEvent;

  public class ActivityDirectionsControl extends PromptControl
  {
    /***************************************************************s
    *
    *  Module Name:
    *     Controls\PromptControls\ActivityDirectionsControl.as
    *
    *  Abstract:
    *     This is control for activity directions prompt
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


    /**
    * Private members/properties
    */
    private var _promptControls:Array = new Array();


    // если PromptControls строятся по-очереди то сдесь находится текущий Prompt
    private var _currentPrompt:Prompt;
    private var _currentPromptControl:PromptControl;

     /*
      <vBox>
        <_control/>
        <hBox>
          <canvas/>
          <vBoxPrompts/>
        </hBox>
      </vBox>
    */
    private var vBox:VBox = new VBox();
    private var hBox:HBox = new HBox();
    private var canvas:Canvas;
    private var vBoxPrompts:VBox = new VBox();
    private var _headerControl:HeaderControl;
    
   
    private var _isNeedCheckAnswer:Boolean = false;
    private var _isCreationCompleteEvent:Boolean = false;




    /**
    * Private methods
    */
    private function LoadResultsAfterCreationComplete(needCheckAnswer:Boolean):void
    {
       if (needCheckAnswer)
       {
         if ((_control as Text).text == "")
             isShowImageReport = false; 
         //Если контрол простой то отображать ккартинку не будем. 
          if (_promptControls.length >0)
          {
              //Сообщаем контролам что им не нужно отображать _imageReport это будет сделано в данном контроле 
                 for each (item in _promptControls)
                 {
                   if ((_control as Text).text != "")
                        item.isShowImageReport = false;
                   item.LoadResults(needCheckAnswer);
                 }
             //Отображаем картинку при показывании отчета
             if (isShowImageReport)
             {  
               //если дочернии промты являються OpenEnded то выводим вопросительный знак   
                if (IsOpenEndedChaildPrompts())
                    _headerControl.imageReport.setStateQuestionView();
                else 
                    _headerControl.imageReport.ChoiceState(isCorrect);
             }
           
          }                         
       }            
       else
          for each (var item:PromptControl in _promptControls)
                    item.LoadResults(needCheckAnswer); 
      _isLoadResults = false;
    }
    
    // building one prompt control
    private function BuildPromptControl(prompt:Prompt):PromptControl
    {
      var promptControl:PromptControl;
      promptControl = PromptControl.BuildPromptControl(prompt);

      if (promptControl != null && this.width != 0)
          promptControl.width = this.width;

      // когда в дочерних контролах добавляется новое состояние,
      // то мы добавляем его сюда
      promptControl.addEventListener(StateEvent.NEW_STATE, NewState_promptControl);
      promptControl.addEventListener(FlexEvent.CREATION_COMPLETE, CreationComplete_promptControlHandler);


      return promptControl;
    }

    // возвращает Prompt который следует за указанным
    private function GetNextPrompt(prompt:Prompt):Prompt
    {
      var isReturn:Boolean = false;

      for each (var item:Prompt in _prompt.ChildPrompts())
      {
        if (isReturn)
          return item;
        if (item == prompt)
          isReturn = true;
      }

      return null;
    }
    
    // возвращает Prompt который следует перед указанным
    private function GetPreviousPrompt(prompt:Prompt):Prompt
    {
      var isReturn:Boolean = false;

      for (var i:int = 0; i< _prompt.ChildPrompts().length; i++)
           if (_prompt.ChildPrompts()[i] as Prompt == prompt)
               if (i>0)
                   return _prompt.ChildPrompts()[i-1] as Prompt
      return null
    }
    
    
    //Метод пробегает по дочерним контролам и возвращает true если они все OpenEnded  
    private function IsOpenEndedChaildPrompts():Boolean
    {
       var result:Boolean = true;
       for each (var item:PromptControl in _promptControls) 
               if (!(item is Open_endedWritingPromptControl) && !(item is DrawingAreaControl)) 
                    result = false;
     return result;
    }  
    
    //Метод добовляет построенный промпт в контейнер и подписывает его на необходимые события
    private function InitPromptControl(promptControl:PromptControl):void 
    {
       promptControl.isDefault = _isDefault;
       promptControl.percentWidth = 100;
       _promptControls.push(promptControl);
       _currentPromptControl = promptControl;
       vBoxPrompts.addChild(_currentPromptControl); 
       _states = states.concat(promptControl.stateArray);
       _currentPromptControl.addEventListener(FlexEvent.CREATION_COMPLETE, CreationComplete_promptControlHandler);
     
       promptControl.fontName = (this._fontName);
       promptControl.fontSize = (this._fontSize);
       promptControl.fontColor = (this._fontColor);
    }
    
    //Метод удаяет промпт контрол из контейнра и массива который его содержит и возвращает 
    //пердыдущий промпт контрол если он есть
    private function DeletePromptControl(promptControl:PromptControl):PromptControl
    {
       var previousPrompt:PromptControl;
       for (var i:int=0; i<_promptControls.length; i++)
          if (promptControl == _promptControls[i] as PromptControl)
          {
              _promptControls.splice(i,1);
              break;
          }
       //Удаляем первый контрол из контейнера
       promptControl.DeleteYourself();
       //Если существует предыдущий контрол возвращаем его
       if (_promptControls[i-1] != null)
       {
            previousPrompt = _promptControls[i-1] as PromptControl;
            _currentPrompt = previousPrompt.prompt;
            return previousPrompt
       } 
       
       return  null
    }
    
    /**
    * Events handler
    */
    private function NewState_promptControl(event:StateEvent):void
    {
      // add new state
      _states.push(event.state);
    }

    private function CreationComplete_promptControlHandler(event:FlexEvent):void
    {
      dispatchEvent(new ActivityDirectionsEvent(ActivityDirectionsEvent.CREATE_PROMPT, event.currentTarget as PromptControl));

      if (_decorator)
        _decorator.Refresh();
    }

    private function CreationCompleteHandler(event:FlexEvent):void
    {
      _isCreationCompleteEvent = true;
      if (_isLoadResults)
          LoadResultsAfterCreationComplete(_isNeedCheckAnswer);
      
    } 
    
    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function ActivityDirectionsControl(prompt:ActivityDirections)
    {
      super(prompt);

      this.verticalScrollPolicy = ScrollPolicy.OFF;
      this.horizontalScrollPolicy = ScrollPolicy.OFF;
      this.percentWidth = 100;
      _control = new TextExended();
      (_control as TextExended).selectable = false;
      (_control as TextExended).text = prompt.text;
       
      //_control.width = ActivityControl.MAX_WIDTH - 60;
      this._headerControl = new HeaderControl(_control);
       var promptControl:PromptControl;

      for each (var item:Prompt in prompt.ChildPrompts())
      {
        _currentPrompt = item;
        promptControl = BuildPromptControl(item);
        promptControl.percentWidth = 100;
        promptControl.verticalScrollPolicy = ScrollPolicy.OFF;
        promptControl.horizontalScrollPolicy = ScrollPolicy.OFF;
        promptControl.addEventListener(StateEvent.NEW_STATE, NewState_promptControl);

        _currentPromptControl = promptControl;
        _promptControls.push(promptControl);
        vBoxPrompts.addChild(promptControl);

        _states = states.concat(promptControl.stateArray);

        // если контрол имеет несколько состояний, и мы не зашли с под студента 
        // то такие контроллы строим "по-одному"
        if (!promptControl.IsSimple() && ActivityControl.userType == EMUserTypes.EM_Teacher)
             break;
      }

      // there isn't any states
      if (_states.length == 0)
        _states.push(StateTypes.CONTINUE);

      vBoxPrompts.verticalScrollPolicy = ScrollPolicy.OFF;
      vBoxPrompts.horizontalScrollPolicy = ScrollPolicy.OFF;
      vBoxPrompts.percentWidth = 100;
      
      //canvas.width = 20;
      
      hBox.verticalScrollPolicy = ScrollPolicy.OFF;
      hBox.horizontalScrollPolicy = ScrollPolicy.OFF;
      hBox.percentWidth = 100;
            
      //hBox.addChild(canvas);
      hBox.addChild(vBoxPrompts);
      
      vBox.percentWidth = 100;
            
      vBox.verticalScrollPolicy = ScrollPolicy.OFF;
      vBox.horizontalScrollPolicy = ScrollPolicy.OFF;
      
      vBox.addChild(_headerControl);     
      vBox.addChild(hBox);
      
      this.addChild(vBox);
      
      this.addEventListener(FlexEvent.CREATION_COMPLETE, CreationCompleteHandler);  
    }


    /**
    * Virtuals methods
    */
      //Метод переключает состояние контрола если включили или отключили CheckAnswer 
  	public override function setStateForCheckAnswer(value:Boolean):Boolean 
  	{
  	  var result:Boolean = false;
  	  
  	  if (_currentPromptControl == null)
  	  	  return false		
  	  if (value)
  	  {
  	    for each (var promptControl:PromptControl in _promptControls)  
  	          	 if (promptControl.setStateForCheckAnswer(value))
              	     result =  true;
      }
  	  else
  	  {
  	    for each (promptControl in _promptControls)  
  	        	   if (promptControl.setStateForCheckAnswer(value))
            	       result = true;  
      }
  	   	  	
  	  return result 	   
  	}
    
    
    public override function get state():StateTypes
    {
      return _currentPromptControl.state;
    }
    
    public override function NextState():StateTypes
    {
      if (_currentPromptControl.stateArray.length != 0)
        _currentState = _currentPromptControl.NextState();
      return _currentState;
    }
    
    
    public override function FontName():void
    {
      super.FontName();
      if (!_isDefault)
        (_control as Text).setStyle("fontFamily", _fontName);
      else
        DefaultFont();

      for each (var item:PromptControl in _promptControls)
        item.fontName = _fontName;
    }

    public override function FontSize():void
    {
      super.FontSize();

      if (_isDefault)
        (_control as Text).setStyle("fontSize", _fontSize - 2);
      else
        _control.setStyle("fontSize", _fontSize);

      for each (var item:PromptControl in _promptControls)
        item.fontSize = _fontSize;
    }

    public override function FontColor():void
    {
      super.FontColor();
      (_control as Text).setStyle("color", _fontSize);

      for each (var item:PromptControl in _promptControls)
        item.fontColor = _fontColor;
    }

    public override function CheckAnswer():void
    {
      _currentPromptControl.CheckAnswer(); 
       _isStartState = false;
    }

    public override function ShowAnswer():void
    {
      _isStartState = false;
      _currentPromptControl.NextState();
      _currentPromptControl.ShowAnswer();
    }

    
    
    
    //Метод переберает все все дочерние контролы и выводит результат правельтный или нет
    public override function ShowResult():void
    {
     if (IsComplete() == false)
        throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");
     for each (var item:PromptControl in this._promptControls)
       item.ShowResult();
    }
    
    // возвращает true в случае если ВСЕ дочерние PromptControl-ы на запрос IsSimple возвращают true
    public override function IsSimple():Boolean
    {
      for each (var item:PromptControl in _promptControls)
        if (!item.IsSimple())
          return false;
      return true;
    }

    public override function Continue():void
    {
      if (IsComplete() == false)
        throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");
      
       _isStartState = false;
      _isYouCanRemoveControl = false;
   //   _currentPromptControl.NextState();

      for each (var item:PromptControl in _promptControls)
      {
        item.Continue();
       
      } 

      if (_currentPromptControl.IsFinalState()) 
      {
      	 // дизайблим все кроме ReadingAssignmentControl
        if (item.IsSimple() && (item is ReadingAssignmentControl) == false)
            item.Disable();
        // build next prompt
        _currentPrompt = GetNextPrompt(_currentPromptControl.prompt);
        if (_currentPrompt != null)
        {
          var promptControl:PromptControl = BuildPromptControl(_currentPrompt);
          InitPromptControl(promptControl);
        }
        else 
           _isYouCanRemoveControl = true; 
      }
   }
 
    
 
    public override function Init(prompt:Prompt):void
    {
      (_control as Text).htmlText = prompt.text;
    }

    public override function IsComplete():Boolean
    {
      var isComplete:Boolean = true;
      for each (var item:PromptControl in _promptControls)
      {
        if (item.IsComplete() == false)
        {
          isComplete = false;
          break;
        }
      }

      return isComplete;
    }

    public override function IsFinalState():Boolean
    {
      if (GetNextPrompt(_currentPrompt) == null)
      {
        // http://em-mantis.uarank.com/view.php?id=7167
        if (_currentPromptControl is FixCapitalsControl)
          return _currentPromptControl.IsFinalState();
        
        return super.IsFinalState();
      }
      return false;
    }

    public override function Disable():void
    {
      if (_decorator)
        _decorator.Disable();

      _control.enabled = false;
      for each (var item:PromptControl in _promptControls)
        if (item.enabled == true)
          item.Disable();
    }

    public override function Enable():void
    {
      if (_decorator)
        _decorator.Enable();

      this.enabled = true;
      _control.enabled = true;

      for each (var item:PromptControl in _promptControls)
        item.Enable();
    }

    public override function getContent():Array
    {
      return [hBox];
    }

    public override function set paddingTop(value:Number):void
    {
    }

    public override function DefaultFont():void
    {
      _control.setStyle("fontFamily", "Futura");
    }

    public override function set isDefault(value:Boolean):void
    {
      super.isDefault = value;

      for each (var item:PromptControl in _promptControls)
        item.isDefault = value;
    }
    
    //Пробегаем по всем контролам и сохраняем результат
    public override function SaveResults():void
    {
      for each (var item:PromptControl in this._promptControls)
                item.SaveResults();
    }
   
   
    //Пробегаем по всем контролам и загружаем результат
    public override function LoadResults(needCheckAnswer:Boolean = false):void
    {
      _isLoadResults = true;
      _isNeedCheckAnswer = needCheckAnswer;
      if (_isCreationCompleteEvent)
          LoadResultsAfterCreationComplete(needCheckAnswer);
    }
    
    //Метод переопределен дя получения общего количества правленых ответов для лиентбраузера 
    public override function get isCorrect():Boolean
    {
      _isCorrect = true;
      for each (var item:PromptControl in this._promptControls)
                if (item.isCorrect == false)
                    _isCorrect = false;
      return _isCorrect; 
    } 
    
    public override function DeleteCurrentTask():void
    {
      _isYouCanRemoveControl = true;
      //Если сотояние у таска начальное то его надо удалить и перестроить предыдущий 
      if (_currentPromptControl.isStartState == true )
      {
        //Проверяем существует ли пердыдущий контрол 
        if (_promptControls.length == 1 || _promptControls.length == 2) 
            return 
    
        _isYouCanRemoveControl = false;
         //Удаляем текущий контрол
        _currentPromptControl =  DeletePromptControl(_currentPromptControl);
       } 
       else 
       {
         if (_promptControls.length == 1 )
             return 
       }               
       //Если текущий таск имеете не начальное состояние то его удаляем и его перестраиваем
       if (_currentPromptControl == null)
          return 
     
          
       _isYouCanRemoveControl = false;
       DeletePromptControl(_currentPromptControl);
       var promptControl:PromptControl = BuildPromptControl(_currentPromptControl.prompt);
       InitPromptControl(promptControl);  
      //Если перестроенный контрол первый то ставим что у него стартовое состояние
       if (_promptControls.length == 1)
          _isStartState = true;   
    }
    
    public override function SaveScore():void
    {
      super.SaveScore();
      for each (var promptControl:PromptControl in this._promptControls)
                promptControl.SaveScore();
    }
    
    /**
    * Public members/properties
    */
   //Общее количество промтов
    public override function get countTotalPromptControls():int
    {
     var counter:int = 0;
      if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport) 
         if (this.prompt.scoreRight)
             return int(this.prompt.scoreRight);
      
      for each (var promptControl:PromptControl in this._promptControls) 
                counter += promptControl.countTotalPromptControls;
      
      return counter;
    }
    
     public override function get countOfCompletePrompts():int 
     {
       var counter:int = 0;
       if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport) 
         if (this.prompt.scoreLeft)
             return int(this.prompt.scoreLeft);
       
       for each (var promptControl:PromptControl in this._promptControls)
                counter += promptControl.countOfCompletePrompts;
        return counter;
     }
 
     public override function get countOfFilledPrompts():int 
     {
       var counter:int = 0;
   
       for each (var promptControl:PromptControl in this._promptControls)
                counter += promptControl.countOfFilledPrompts;
       return counter;
     }

   

    /**
    * Public methods
    */
    
    public function checkAnswerFromScore():void
    {
      for each (var promptControl:PromptControl in this._promptControls)
                promptControl.CheckAnswer();             
    }
  }
}