package Controls.PromptControls
{
  import Controls.ActivityControl;
  import Controls.ButtonManager;
  import Controls.Decorators.ActivityGraphicDecorator;
  import Controls.Decorators.BackgroundImageDecorator;
  import Controls.Decorators.Decorator;
  import Controls.Enviroment.ImageReport;
  import Controls.Enviroment.ScoreContainer;
  
  import Model.Events.StateEvent;
  import Model.Prompts.ActivityDirections;
  import Model.Prompts.ActivityMatching;
  import Model.Prompts.CloseSentence;
  import Model.Prompts.ContainerOneByOne;
  import Model.Prompts.Corrected;
  import Model.Prompts.DrawingArea;
  import Model.Prompts.FillInTheBlanks;
  import Model.Prompts.FixCapitals;
  import Model.Prompts.Matching;
  import Model.Prompts.MultipleChoice;
  import Model.Prompts.MultipleChoiceCascading;
  import Model.Prompts.Open_endedWritingPrompt;
  import Model.Prompts.Prompt;
  import Model.Prompts.ReadingAssignment;
  import Model.Prompts.RewriteSentence;
  import Model.Prompts.SentenceEvaluation;
  import Model.Prompts.Sorting;
  import Model.Prompts.SortingGraphics;
  import Model.Prompts.YesOrNo;
  import Model.StateTypes;
  
  import flash.display.DisplayObject;
  import flash.events.MouseEvent;
  
  import interfaces.IButtonManager;
  import interfaces.IDirection;
  import interfaces.IFontStyle;
  import interfaces.em.EMUserTypes;
  
  import mx.containers.Canvas;
  import mx.containers.VBox;
  import mx.controls.Image;
  import mx.core.ScrollPolicy;
  import mx.core.UIComponent;
  import mx.events.FlexEvent;

  public class PromptControl extends VBox implements IFontStyle, IDirection, IButtonManager
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\PromptControls\PromptControl.as
    *
    *  Abstract:
    *     This is base control for all prompts controls
    *
    *  Author:
    *     Evgenij Welikij   16-October-2009
    *
    *  Revision History:
    *
    ***************************************************************/


    /**
    * Static
    */

    public static function BuildPromptControl(prompt:Prompt):PromptControl
    {
      var _currentPromptControl:PromptControl;

        if (prompt is MultipleChoice)
          _currentPromptControl = new MultipleChoiceControl(prompt as MultipleChoice);
        else if (prompt is ActivityDirections)
          _currentPromptControl = new ActivityDirectionsControl(prompt as ActivityDirections);
        else if (prompt is Open_endedWritingPrompt)
          _currentPromptControl = new Open_endedWritingPromptControl(prompt as Open_endedWritingPrompt);
        else if (prompt is Matching)
          _currentPromptControl = new MatchingControl(prompt as Matching);
        else if (prompt is Sorting)
          _currentPromptControl = new SortingControl(prompt as Sorting);
        else if (prompt is FixCapitals)
          _currentPromptControl = new FixCapitalsControl(prompt as FixCapitals);
        else if (prompt is DrawingArea)
          _currentPromptControl = new DrawingAreaControl(prompt as DrawingArea);
        else if (prompt is SortingGraphics)
          _currentPromptControl = new SortingGraphicsControl(prompt as SortingGraphics);
        else if (prompt is ActivityMatching)
          _currentPromptControl = new ActivityMatchingControl(prompt as ActivityMatching);
        else if (prompt is FillInTheBlanks)
          _currentPromptControl = new FillInTheBlanksControl(prompt as FillInTheBlanks);
        else if (prompt is RewriteSentence)
           _currentPromptControl = new RewriteSentenceControl(prompt as RewriteSentence);
        else if (prompt is YesOrNo)
           _currentPromptControl = new YesOrNoControl(prompt as YesOrNo);
        else if (prompt is ReadingAssignment)
           _currentPromptControl = new ReadingAssignmentControl(prompt as ReadingAssignment);
        else if (prompt is FixCapitals)
           _currentPromptControl = new FixCapitalsControl(prompt as FixCapitals);
        else if (prompt is SentenceEvaluation)
           _currentPromptControl = new SentenceEvaluationControl(prompt as SentenceEvaluation);
        else if (prompt is DrawingArea)
           _currentPromptControl = new DrawingAreaControl(prompt as DrawingArea);
        else if (prompt is CloseSentence)
           _currentPromptControl = new CloseSentenceControl(prompt as CloseSentence);
        else if (prompt is Corrected)
          _currentPromptControl = new CorrectedControl(prompt as Corrected);
        else if (prompt is MultipleChoiceCascading)
          _currentPromptControl = new MultipleChoiceCascadingControl(prompt as MultipleChoiceCascading);
        else if (prompt is ContainerOneByOne)
          _currentPromptControl = new ContainerOneByOneControl(prompt as ContainerOneByOne);

       return  _currentPromptControl;
    }

    /**
    * Private members/properties
    */
    protected var _prompt:Prompt;
    protected var _states:Array = new Array();
    protected var _currentState:StateTypes;
    protected var _isCorrect:Boolean = true;
    protected var _isStartState:Boolean = true;
    protected var _img:Image;
    protected var _decorator:Decorator;
    protected var _control:UIComponent = new UIComponent();
    protected var can:Canvas;
   
    protected var _fontName:String;
    protected var _fontSize:int;
    protected var _fontColor:int;
    
    private var _fontNameChanged:Boolean = false;
    private var _fontSizeChanged:Boolean = false;
    private var _fontColorChanged:Boolean = false;
   
    protected var _isLoadResults:Boolean = false;
    protected var _isDefault:Boolean = true;
    protected var _isYouCanRemoveControl:Boolean = true;
   // protected var _baseButtonContainer:Canvas; 
    protected var _isCreationComplete:Boolean = false;
    protected var _buttonManager:ButtonManager;
 
    private var _baseVboxContainer:VBox;
    private var _isRebuildPromptControlStructure:Boolean = false;
    private var _baseContainer:Canvas = new Canvas();
    private var _scoreContainer:ScoreContainer;
    
    
    //Картинка которая показываеться в заголовке контролов при просмотре отчета
    protected var _imageReport:ImageReport = new ImageReport();


    /**
    * Private methods
    */
    
    // просто переключатель ТОЛЬКО между двумя стартовыми состояниями
    protected function getStateBy(needCheckAnswer:Boolean):StateTypes
    {
      if(needCheckAnswer)
        return StateTypes.CHECK_ANSWER;
      return StateTypes.SHOW_ANSWER;
    }
    
    
    protected function AddNewAnswerState(state:StateTypes):void
    {
      // исключаем ситуацию добавления двух одинаковых состояний.
      // сравниваем с последним состоянием
      if (!_states.length || (_states[_states.length - 1] as StateTypes).operationName != state.operationName)
      {
        _states.push(state);

        // оповещаем о добавлении нового события
        // сейчас используется ActivityDirectionControl  30-October-2009
        this.dispatchEvent(new StateEvent(StateEvent.NEW_STATE, state));
      }
    }

    private function BuildDecorator():void
    {
      if (this._prompt.backgroundImage != null)
      {
         RebuildPromptControlStructure();
        _decorator = new BackgroundImageDecorator(this, this._prompt.backgroundImage);
       
      }
      else if (this._prompt.activityGraphic != null)
      {
         RebuildPromptControlStructure();
        _decorator = new ActivityGraphicDecorator(this, this._prompt.activityGraphic);
      }

      if (_decorator)
        _decorator.Build();
    }
    
    private function RebuildPromptControlStructure():void
    {
      if (_isRebuildPromptControlStructure) 
          return;
      this._baseVboxContainer  = new VBox();
      this._baseVboxContainer.verticalScrollPolicy = ScrollPolicy.OFF;
      this._baseVboxContainer.horizontalScrollPolicy = ScrollPolicy.OFF;
      this._baseVboxContainer.percentWidth = 100;
      this._baseContainer.verticalScrollPolicy = ScrollPolicy.OFF; 
      this._baseContainer.horizontalScrollPolicy = ScrollPolicy.OFF; 
      this._baseContainer.percentWidth = 100;
      
      _baseContainer.removeAllChildren();
     
      for each (var item:DisplayObject in this.getChildren())
               _baseContainer.addChild(item);
      
      this.addChild(_baseContainer);
      this._isRebuildPromptControlStructure = true;
    }

    protected function Update():void
    {
      fontName =_fontName;
      fontSize = _fontSize;
      fontColor = _fontColor;
    }
    
    /**
    * Events handler
    */
    
    private function CreationComplete(event:FlexEvent):void
    {
      Init(_prompt);
    }


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function PromptControl(prompt:Prompt) 
    {
      super();
      //ширена мень с учетом скрола
      this.percentWidth = 98;
     
      this._prompt = prompt;
      this.verticalScrollPolicy = ScrollPolicy.OFF;
      this.horizontalScrollPolicy = ScrollPolicy.OFF;   
      this.verticalLineScrollSize = 0;
    
      this.BuildDecorator();
      
      _states.push(StateTypes.CONTINUE);
  
      if (ActivityControl.isCheckAnswer)
        _states.push(StateTypes.CHECK_ANSWER);
      else
        _states.push(StateTypes.SHOW_ANSWER);
        
     //Присваиваем стартовое состояние контролу так как это надо делать из вне
      if (_states.length != 0)
          _currentState = _states.pop();   
    }


    /**
    * Virtuals methods
    */
    protected override function commitProperties():void
    {
      if (_fontNameChanged)
      {
          FontName();
          if (_scoreContainer != null)
              _scoreContainer.fontName =_fontName;  
      }
      if (_fontSizeChanged)
      {
          FontSize();
          if (_scoreContainer != null)
              _scoreContainer.fontSize =_fontSize;  
      }
      if (_fontColorChanged)
      {
          FontColor();
          if (_scoreContainer != null)
              _scoreContainer.fontColor =_fontColor;  
      }
         
      _fontNameChanged = false;
      _fontSizeChanged = false;  
      _fontColorChanged = false;
   
      super.commitProperties(); 
    }
    
    protected virtual function AddScoreForReport():void
    {
       if (ActivityControl.userType != EMUserTypes.EM_Student
          && ActivityControl.userType != EMUserTypes.EM_Teacher) 
      {
        if (_scoreContainer == null)
        { 
          // if (!_isRebuildPromptControlStructure)
          //      RebuildPromptControlStructure(); 
           _scoreContainer  = new ScoreContainer(); 
           LoadScore();
           Update();
        }
        else 
            _scoreContainer.DeleteYourself();
            
        super.addChild(_scoreContainer); 
      }  
    }
    
    protected virtual function AddButtonForReport():void 
    {
     if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport ||
         ActivityControl.userType == EMUserTypes.EM_Student_ShowReport_Extended) 
     {
         if (_buttonManager == null)
         {
            _buttonManager = new ButtonManager();
            _buttonManager.Init(this);
         }
         else 
            _buttonManager.DeleteYourself();
         super.addChild(_buttonManager);
      }
    }
    
    protected virtual function AddAnswerForReport():String 
    {
      return "";
    }
    
    protected override function createChildren():void
    {
      super.createChildren();
      Init(_prompt);
    }


    public function CheckAnswer():void
    {
        _isStartState = false;
        NextState();
    }

    public function ShowAnswer():void
    {
       _isStartState = false;
        NextState();
    }

    public virtual function Continue():void
    {
        _isStartState = false;
        NextState();
    }
    //Ментод переопределяеться в долчерних контролах и должен отвечать за отображение неправельного и правельного ответов если пользовательн ввел 
    //неправельный ответ или же только правельного если пользователь ввел правельный ответ
    public virtual function ShowResult():void 
    {
      
    }
    
    public virtual function IsComplete():Boolean
    {
      return true;
    }
    
    //Метод меняет шрифт у контролов
    public virtual function FontName():void
    {
      if (_isDefault)
      {
        if (_control is BaseUIControl)
           (_control as BaseUIControl).DefaultFont();
        DefaultFont();     
      }
      else
      {
        if (_control is BaseUIControl)
             (_control as BaseUIControl).fontName = _fontName
        else 
              _control.setStyle("fontName", _fontName);
       }
    }
    
     //Метод меняет размер у контролов
    public virtual function FontSize():void
    {
      if (_control is BaseUIControl) 
           (_control as BaseUIControl).fontSize = _fontSize;
      else         
  	        _control.setStyle("fontSize", _fontSize);
  		if(_isDefault)
			  	DefaultFont();        
	   }
    
    //Метод меняет цвет у контролов
    public virtual function FontColor():void
    {
         if (_control is BaseUIControl)
               (_control as BaseUIControl).fontColor = _fontColor;
         else       
			          _control.setStyle("fontColor", _fontColor);
			if (_isDefault)
			    DefaultFont();  
	  }

    public virtual function Bold():void
    {
      if (_control != null)
        _control.setStyle("fontWeight", "bold");
    }

    public virtual function Init(prompt:Prompt):void
    {
    }

    public virtual function GetText():String
    {
      return "";
    }

    public virtual function DefaultFont():void
    {
    }
    
    //Сохраняет балы которые ввел учитель
    public virtual function SaveScore():void
    {
      if (_scoreContainer == null) 
          return 
      this.prompt.scoreLeft = _scoreContainer.txtValueLeft;
      this.prompt.scoreRight = _scoreContainer.txtValueRight; 
      this.prompt.comment = _scoreContainer.comment;                        
    }
    
    //Загружает балы которые ввел учитель в контрол или вводит стандартыне 
    public virtual function LoadScore():void
    {
      // Количество правельных ответов
       if (this.prompt.scoreLeft)
            _scoreContainer.txtValueLeft = this.prompt.scoreLeft;
       else 
            _scoreContainer.txtValueLeft =  String(countOfCompletePrompts);  
       // Общее количество контролов
       if (this.prompt.scoreRight)     
            _scoreContainer.txtValueRight = this.prompt.scoreRight; 
       else 
            _scoreContainer.txtValueRight =  String(countTotalPromptControls);
        //Коментарии
       if (this.prompt.comment)     
            _scoreContainer.comment = this.prompt.comment;       
    }
    
    //Количество законченых промтов
    public virtual function get countOfCompletePrompts():int
    {
      if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport) 
         if (this.prompt.scoreLeft)
             return int(this.prompt.scoreLeft);
      
      if (_isCorrect)
          return 1;
      else 
          return 0; 
    }
    
    //Количество заполненых промтов
    public virtual function get countOfFilledPrompts():int
    {
      if (isControlComplete)
          return 1
      else 
          return 0    
    }
    
    //Общее количество промтов
    public virtual function get countTotalPromptControls():int
    {
      if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport) 
         if (this.prompt.scoreRight)
             return int(this.prompt.scoreRight);
      
      return 1;
    }    
    
    public virtual function get isControlComplete():Boolean
    {
      if (IsComplete()) 
          return true
      return false;     
    } 
    
    // возвращает признак того что это финальное состояние
    public virtual function IsFinalState():Boolean
    {
      return _states.length ? false : true;
    }

    public virtual function Disable():void
    {
      this.enabled = false;
    }

    public virtual function Enable():void 
    {
      this.enabled = true;
    }

    public virtual function IsSimple():Boolean
    {
       if (_states.length == 0)
          return true
      if (_states.length == 0 && (_states[0] as StateTypes).operationName == StateTypes.CONTINUE.operationName)
          return true;
      return false;
    }

    public virtual function getContent():Array
    {
 //     if (_isRebuildPromptControlStructure)
 //         return [_baseContainer]
      return new Array
    }

    [Bindable]
    public virtual function get paddingTop():Number
    {
      return 0;
    }

    public virtual function set paddingTop(value:Number):void
    {
    }

    public virtual function set isDefault(value:Boolean):void
    {
      _isDefault = value;
    }
    
    //Метод необходим что бы сохранять результаты которые ввел пользователь
    public virtual function SaveResults():void
    {
    }
    
    //Метод необходим что бы загрузить результаты которые ввел пользователь
    public virtual function LoadResults(needCheckAnswer:Boolean = false):void
    {
    }
    
    public virtual  function get isCorrect():Boolean
    {
      return _isCorrect;
    }
    
    public virtual function Click_btnContinue(event:MouseEvent):void
    {
    }
    
    public virtual function Click_btnBack(event:MouseEvent):void
    {
      
    }
    public virtual function Click_btnDone(event:MouseEvent):void  
    {
      
    }
    public virtual function get currentStateControl():StateTypes
    {
      return _currentState;
    }
    
    public virtual function DeleteCurrentTask():void
    {
     
    }
    
     //Метод позволяет менять текущее состояние контрола для некоторых контролов надо переопределить 
    public virtual function SetCurrentState(state:StateTypes):void
    {
      _currentState = state;
      _states = new Array();
      _states.push(StateTypes.CONTINUE);
  
      ActivityControl.instance.btnContinue.label = _currentState.operationName;
    }
      
    
    
    public override function addChild(child:DisplayObject):DisplayObject
    {
      if (_isRebuildPromptControlStructure)
      {
         this._baseContainer.addChild(child);
         return child;
      } 
       else 
          return super.addChild(child);    
    }
    
    public override function removeChild(child:DisplayObject):DisplayObject
    {
      if (_isRebuildPromptControlStructure && child.parent == _baseContainer) 
      {
          this._baseContainer.removeChild(child);
          return child;
      }
       else 
          return super.removeChild(child);   
    }
    /**
    * Public members/properties
    */
    //Если равна true то показываем картинку _imageReport в контролах при просмотре отчета 
    //Изменяеться в ActivityDerection
    public var isShowImageReport:Boolean = true;  
    
    public function get prompt():Prompt
    {
      return _prompt;
    }

    public virtual function get state():StateTypes
    {
      return _currentState;
    }

    public function get isStartState():Boolean
    {
      return _isStartState;
    }
    public function set isStartState(value:Boolean):void
    {
      _isStartState = value;
    }

    public function get stateArray():Array
    {
      return _states;
    }

    public function set image(image:Image):void
    {
      this._img = image;
    }
    public function get image():Image
    {
      return this._img;
    }

  // public function get baseButtonContainer():Canvas
  // {
    // return _baseButtonContainer;
  // } 
   
   public function get isYouCanRemoveControl():Boolean
   {
     return _isYouCanRemoveControl; 
   }
   //Метод устанавливает состояние для контрола при клике на чекбокс CheckAnswer
    public function setStateForCheckAnswer(needCheckAnswer:Boolean):Boolean
    {
      var stateChanged:Boolean = false; 
      if(_isStartState)
      {
        stateChanged = _currentState == getStateBy(!needCheckAnswer);
        if(stateChanged)
          SetCurrentState(getStateBy(needCheckAnswer));
      }
      return stateChanged;
    }
    
    public function get isRebuildPromptControlStructure():Boolean
    {
      return _isRebuildPromptControlStructure;
    }
    
    public function set fontName(name:String):void
    {
      if (name == "Default")
          _isDefault = true;
      else 
          _isDefault = false;    
          
      this._fontName = name;
      this._fontNameChanged = true;
      invalidateProperties();
    }

    public function set fontSize(size:int):void
    {
      this._fontSize = size;
      this._fontSizeChanged = true;
      invalidateProperties();
    }
    
    public function set fontColor(color:int):void 
    {
      this._fontColor = color;
      this._fontColorChanged = true;
      invalidateProperties();
    }
    
    
    /**
    * Public methods
    */
    public function NextState():StateTypes
    {
      if (_states.length != 0)
        _currentState = _states.pop();
      return _currentState;
    }
  
    public function DeleteYourself():void
    {
      if (this.parent != null)
          this.parent.removeChild(this);
    }
    
    
    

  }
}