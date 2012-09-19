package Controls.PromptControls
{
  import Controls.ActivityControl;
  
  import Model.Events.ActivityDirectionsEvent;
  import Model.Events.StateEvent;
  import Model.Preferences;
  import Model.Prompts.ContainerOneByOne;
  import Model.Prompts.Prompt;
  import Model.StateTypes;
  
  import interfaces.em.EMUserTypes;
  
  import mx.containers.HBox;
  import mx.containers.VBox;
  import mx.controls.Text;
  import mx.effects.Blur;
  import mx.effects.Parallel;
  import mx.effects.Resize;
  import mx.effects.Sequence;
  import mx.events.FlexEvent;

  public class ContainerOneByOneControl extends PromptControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\PromptControls\ContainerOneByOneControl.as
    *
    *  Abstract:
    *     This is control for container one-by-one prompt.
    *
    *  Author:
    *     Evgenij Welikij   28-March-2010
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
    protected var _promptControls:Array = [];

    protected var _currentPrompt:Prompt;
    protected var _currentPromptControl:PromptControl;

    /*
      <vBox>
        <_control/>
        <vBoxPrompts/>
      </vBox>
    */
    private var vBox:VBox = new VBox();
    private var hBox:HBox = new HBox();
    private var vBoxPrompts:VBox = new VBox();
    
    private var _showPromptEffect:Parallel = new Parallel();
    private var _showResizeEffect:Resize = new Resize();
    private var _sequence:Sequence = new Sequence();
  

    /**
    * Private methods
    */
     //Метод добовляет построенный промпт в контейнер и подписывает его на необходимые события
    private function InitPromptControl(promptControl:PromptControl):void 
    {
       _promptControls.push(promptControl);
       _currentPromptControl.addEventListener(FlexEvent.CREATION_COMPLETE, CreationComplete_promptControlHandler);
       for each (var item:StateTypes in promptControl.stateArray)
            AddState(item);
       
       _currentPromptControl =  promptControl;
       promptControl.percentWidth = 100;
       vBoxPrompts.addChild(promptControl);
       promptControl.fontName  = _fontName;
       promptControl.fontSize  = _fontSize;
       promptControl.fontColor = _fontColor;
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
    
    // building one prompt control
    private function BuildPromptControl(prompt:Prompt):PromptControl
    {
      var promptControl:PromptControl;
      promptControl = PromptControl.BuildPromptControl(prompt);

      if (promptControl != null)
          promptControl.width = this.width;

      // когда в дочерних контролах добавляется новое состояние,
      // то мы добавляем его сюда
      promptControl.addEventListener(StateEvent.NEW_STATE, NewState_promptControl);

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

    // метод добавляет новое состояние в массив состояний
    // вместо состояния CONTINUE добавляется NEXT (кроме последнего промпта!!!!!!!!!!!!!!!)
    private function AddState(state:StateTypes):void
    {
      if (state == StateTypes.CONTINUE && GetNextPrompt(_currentPrompt))
        state = StateTypes.NEXT;

      _states.push(state);

      dispatchEvent(new StateEvent(StateEvent.NEW_STATE, state));
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
      //Проигрываем эфект плавного перехода между контейнерами
      _showPromptEffect.target = event.currentTarget;
      _showPromptEffect.play();
      dispatchEvent(new ActivityDirectionsEvent(ActivityDirectionsEvent.CREATE_PROMPT, event.currentTarget as PromptControl));
    }


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function ContainerOneByOneControl(prompt:ContainerOneByOne)
    {
      super(prompt);
      this.percentWidth = 99;
   
      //Настраиваем эфекты перехода между контейнерами 
      _showPromptEffect.addChild(_showResizeEffect);
      _showResizeEffect.duration = 300;
      _showResizeEffect.heightFrom = 0;
      _showPromptEffect.addChild(_sequence);
      var blur:Blur = new Blur();
      blur.duration = 200;
      blur.blurXFrom = 1,0;
      blur.blurYTo = 20,0;
      _sequence.addChild(blur);
      blur = new Blur();
      blur.duration = 200;
      blur.blurXFrom = 20,0;
      blur.blurYTo = 1,0;
      _sequence.addChild(blur);      

      _control = new Text();
      (_control as Text).htmlText = prompt.text;
      (_control as Text).selectable = false;
       
    
      
      vBox.percentWidth = 100; 
      vBoxPrompts.percentWidth = 100;
      for each (var childPrompt:Prompt in prompt.ChildPrompts()) 
      { 
          _currentPrompt = childPrompt;
          _currentPromptControl = BuildPromptControl(childPrompt); 
          _currentPromptControl.percentWidth = 100;
          _promptControls.push(_currentPromptControl);
    
          _states = [];
    
          for each (var item:StateTypes in _currentPromptControl.stateArray)
                    AddState(item);
          
         
          vBox.addChild(_control);
          vBox.addChild(vBoxPrompts);
          vBoxPrompts.addChild(_currentPromptControl);
          //Строим только один контрол
          if (ActivityControl.userType == EMUserTypes.EM_Teacher)
              break
      }
      this.addChild(vBox);
    }


    /**
    * Virtuals methods
    */
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
        _control.setStyle("fontFamily", _fontName);
      else
        DefaultFont();

      for each (var item:PromptControl in _promptControls)
        item.fontName = _fontName;
    }

    public override function FontSize():void
    {
      super.FontSize();

      if (_isDefault && _prompt.relatedPromptID == 0)
        (_control as Text).setStyle("fontSize", _fontSize + Preferences.parentPromptFontSizeShift);
      else
        _control.setStyle("fontSize", _fontSize + 1);

      for each (var item:PromptControl in _promptControls)
        item.fontSize = _fontSize;
    }

    public override function FontColor():void
    {
      super.FontColor();

      _control.setStyle("color", _fontColor);

      for each (var item:PromptControl in _promptControls)
        item.fontColor = _fontColor;
    }

    public override function CheckAnswer():void
    {
      if (ActivityControl.instance.needScoreReport)
          return ;      
      
     // _currentPromptControl.NextState();
      _currentPromptControl.CheckAnswer();
      _isStartState = false;
    }

    public override function ShowAnswer():void
    {
      _isStartState = false;
  //    _currentPromptControl.NextState();
      _currentPromptControl.ShowAnswer();
    }
    
    public override function ShowResult():void
    {
        for each (var item:PromptControl in this._promptControls)
          item.ShowResult();      
    }
    
    public override function IsSimple():Boolean
    {
      return false;
    }

    public override function IsFinalState():Boolean 
    {
      if (_currentPrompt == null)
          return true;
      if (!GetNextPrompt(_currentPrompt))
        return _states.length ? false : true;
      return false;
    }

    public override function Enable():void
    {
      this.enabled = true;

      for each (var item:PromptControl in _promptControls)
        item.Enable();
    }

    public override function Continue():void
    {
      _isStartState = false;
      _isYouCanRemoveControl = false;
      
      _currentPromptControl.Continue();
     // _currentPromptControl.NextState();

      if (_currentPromptControl.IsFinalState())
      {
        _states = [];
        _currentPrompt = GetNextPrompt(_currentPromptControl.prompt);
        if (_currentPrompt)
        {
          _currentPromptControl.Disable();
          _currentPromptControl = BuildPromptControl(_currentPrompt);
          InitPromptControl(_currentPromptControl);
        }
        else
          _isYouCanRemoveControl = true;
      }
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
       for each (var item:PromptControl in this._promptControls)
                item.LoadResults(needCheckAnswer); 
    }
    
    
    /**
    * Public members/properties
    */
     public override function DeleteCurrentTask():void
    {
      _isYouCanRemoveControl = true;
      this.enabled = true;
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
    
    //Количество законченых промтов
    public override function get countOfCompletePrompts():int
    {
       var counter:int = 0;
       if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport) 
         if (this.prompt.scoreLeft)
             return int(this.prompt.scoreLeft);
       
      for each (var item:PromptControl in _promptControls)
                counter += item.countOfCompletePrompts;
      return counter;          
    }
    
     //Количество заполненых промтов
    public override function get countOfFilledPrompts():int
    {
      var counter:int = 0;
      for each (var item:PromptControl in _promptControls)
                counter += item.countOfFilledPrompts; 
      return counter;          
    }
    
    //Общее количество промтов
    public override function get countTotalPromptControls():int
    {
      if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport) 
         if (this.prompt.scoreRight)
             return int(this.prompt.scoreRight);
      
      return _promptControls.length     
    }    
    
    public override function SaveScore():void
    {
      super.SaveScore();
      for each (var promptControl:PromptControl in this._promptControls)
                promptControl.SaveScore();
    } 
    
  
    /**
    * Public methods
    */


  }
}