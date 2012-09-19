package Controls.PromptControls
{
  import Controls.ActivityControl;
  import Controls.AnswerControls.AnswerControl;
  import Controls.AnswerControls.MultipleAnswersControl;
  import Controls.AnswerControls.SingleAnswerControl;
  import Controls.ButtonManager;
  import Controls.Enviroment.TextExended;
  import Controls.QuizControl;
  import Controls.Windows.AlertWindow;
  
  import Model.Answers.Answer;
  import Model.Answers.MultipleAnswer;
  import Model.Answers.SingleAnswer;
  import Model.Answers.VariantCascadingAnswer;
  import Model.EnumRegExp;
  import Model.FactoryRegExp;
  import Model.Preferences;
  import Model.Prompts.MultipleChoiceCascading;
  import Model.Prompts.Prompt;
  import Model.StateTypes;
  
  import flash.events.MouseEvent;
  import flash.geom.Point;
  
  import interfaces.IButtonManager;
  import interfaces.em.EMUserTypes;
  
  import mx.containers.Canvas;
  import mx.containers.HBox;
  import mx.containers.VBox;
  import mx.controls.RadioButtonGroup;
  import mx.controls.Text;
  import mx.events.FlexEvent;

  public class MultipleChoiceCascadingControl extends PromptControl implements IButtonManager
  {
    /***************************************************************
    *
    *  Module Name:
    *     Control\PromptControls\MultipleChoiceControl.as
    *
    *  Abstract:
    *
    *
    *  Author:
    *     Ruban Sergey
    *
    *  Revision History:
    *
    ***************************************************************/


    /**
    * Static
    */
    public static var instance:MultipleChoiceControl;

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
          <vBoxAnswers/>
        </hBox>
      </vBox>
    */
    private var vBox:VBox = new VBox();
    private var hBox:HBox = new HBox();
    private var canvas:Canvas = new Canvas();
    private var vBoxAnswers:VBox = new VBox();
    private var _currentIndex:int = 0;
    
    //Переводим в true если зашли с под профиля студента. И это значит что проверки и отображения ответа не будет
    private var _isStudentTypeUser:Boolean = false;
    //Маиссив содержит в себе _control 
    private var _controlsArray:Array = new Array(); 

    private var _isShowReportTeacher:Boolean = false;
    private var _allAnswerControls:Array = new Array();
    
  
    /**
    * Private methods
    */
    private function BuildNexControlByIndex(index:int):Array
    {
      var resultArray:Array = new Array();
      var varianCascading:VariantCascadingAnswer = _prompt.ChildAnswers()[index];
      var answerControl:AnswerControl;
      _answerControls = [];
      vBoxAnswers.removeAllChildren();

      for each (var item:Answer in varianCascading.ChildAnswers())
      {
        if (item is SingleAnswer)
        {
          answerControl = new SingleAnswerControl(item as SingleAnswer);
          (answerControl as SingleAnswerControl).group = rbGroup;
        }
        else if (item is MultipleAnswer) 
          answerControl = new MultipleAnswersControl(item as MultipleAnswer);

        answerControl.isDefault = _isDefault;
        answerControl.percentWidth = 100;
        _answerControls.push(answerControl);
        resultArray.push(answerControl);
        // добовляем новые чекбоксы или радиобатоны в контрол
        // vBoxAnswers.addChild(answerControl);
      }

      //применяем для них стили шрифта и размера
      this.fontName = _fontName;
      this.fontSize = _fontSize;
      this.fontColor = _fontColor;
      
      return resultArray; 
    }
    
    
    //Метод отвечает за построение предоложений с правельным ответом или нет или с подсеркнутым словом в зависимости от текущего активного предложнеия
    private function BuildStringByIndex(answer:Boolean = false):String
    {
      var resultString:String = "";
      var counter:int = 0;  
      for each (var item:VariantCascadingAnswer in prompt.ChildAnswers())
      {
        //Если номер предложения меньше чем текущий нормер предложения то отображаем его уже подсвеченным (тоесть в правельнеом виде)
        if (counter < this._currentIndex)
        {
            //Если студент то отображаем все строки в неправлеьном виде так как в правельном ему не показываем
            if (_isStudentTypeUser)
            {
              //Если это первое предложение то оно не имеет previewString поэтому преходиться использовать answer
                if (counter == 0)
                    resultString += item.text.replace(new RegExp(FactoryRegExp.instance.U(EnumRegExp.G)),"");
                else 
                    resultString += item.previewString;
            }
            else 
              resultString += item.answer;
        }
        //Если номер совпадает с текущим предложением 
        else if (counter == this._currentIndex) 
        {
          if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport || 
              ActivityControl.userType == EMUserTypes.EM_Student_ShowReport_Extended)
               resultString += item.answer;
          //Если ответили на вопрос правельно то отображаем слово с подсвеченными символами 
          else      
              if (answer == true && _isStudentTypeUser == false)
                   resultString += item.answer;
              else
                  resultString += item.text;
        }
        //Если номер предложения больше чем текущий то отображаем их с ошибками 
        else if (counter > this._currentIndex)
             resultString += item.previewString;
        //Ставим пробел
        resultString += " ";
        counter++;
       }
       return resultString;  
      }
      
      //Метод строит все предложения и у их детей вызывает состояние CheckAnswer. При построении предложения не удаляються 
      //а строяться один под одним 
      private function BuildAllControlsAndCallStateCheckAnswer():void
      {
      	vBox.removeAllChildren();
        vBoxAnswers.removeAllChildren();
        _controlsArray = new Array();
        _currentIndex = 0;
        for (var i:int = 0; i < _prompt.ChildAnswers().length; i++)
        {    
             var headerText:TextExended = new TextExended();
             headerText.selectable = false;
             headerText.width = this.width;
             this._controlsArray.push(headerText);
             vBox.addChild(headerText);
            //Строим иерархию контейнеров  
             vBox.addChild(BuildHBoxContainer(BuildNexControlByIndex(i)));
             _isCorrect = true;
             for each (var answerControl:AnswerControl in _answerControls) 
             {
                      answerControl.LoadResults(); 
                      answerControl.CheckAnswer();
                      _allAnswerControls.push(answerControl);
                      if (answerControl.isCorrect == false)
                          _isCorrect = false;
             }
             //Сроим строку с предложением
             headerText.htmlText = BuildStringByIndex(_isCorrect);
             
         _currentIndex++;
        }
        //применяем для них стили шрифта и размера
        this.fontName = _fontName;
        this.fontSize= _fontSize;
        this.fontColor = _fontColor;
      }
      
    //Метод строит HBox и возвращает следующую струтуру
    // <hBox>
    //      <canvas/>
    //      <vBoxAnswers/>
    // </hBox>
    private function BuildHBoxContainer(answerControl:Array):HBox
    {
      var hBox:HBox = new HBox();   
      var canvas:Canvas = new Canvas();
      var vBoxAnswers:VBox = new VBox(); 
      hBox.percentWidth = 100;
      vBoxAnswers.percentWidth = 100;
        //отступ слева
      canvas.width = 20;
       
      for each (var item:AnswerControl in answerControl)
              vBoxAnswers.addChild(item);   
     
      hBox.addChild(canvas);
      hBox.addChild(vBoxAnswers);

     return hBox;   
    } 
     
    /**
    * Events handler
    */
		

    /**
    * Initialization
    */
    private function CreationCompleteHandler(event:FlexEvent):void
    {
      // устанавливаем длинну данного контрола
      var point:Point = new Point();
      point = localToGlobal(point);
      point = QuizControl.instance.globalToLocal(point);
      this.width = ActivityControl.MAX_WIDTH - point.x - 20; 
      _control.width = this.width;
    }
 
    /**
    * Constructor
    */
    public function MultipleChoiceCascadingControl(prompt:MultipleChoiceCascading)
    {
      super(prompt);
      hBox.percentWidth = 100;
      vBox.percentWidth = 100;
      vBoxAnswers.percentWidth = 100;
      
      if (ActivityControl.userType == EMUserTypes.EM_Student)
      {
          this._isStudentTypeUser = true;
         _currentState = StateTypes.CONTINUE;
      }
      //Если показываем отчет учителю
      if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport ||
          ActivityControl.userType == EMUserTypes.EM_Student_ShowReport_Extended)   
      {
        	this._isStudentTypeUser = true;
          _currentState = StateTypes.SHOW_ANSWER;
       	  _isShowReportTeacher = true;
      }
      
      _control = new TextExended();
      this._controlsArray.push(_control);
			(_control as TextExended).selectable = false;
      
      //Добовляем чекбоксы или радиобатоны в контрол 
      for each (var item:AnswerControl in BuildNexControlByIndex(_currentIndex))
                vBoxAnswers.addChild(item);
      (_control as TextExended).htmlText = BuildStringByIndex();
     
      //отступ слева
      canvas.width = 20;

      hBox.addChild(canvas);
      hBox.addChild(vBoxAnswers);

      vBox.addChild(_control);
      vBox.addChild(hBox);
      if (this._isStudentTypeUser)
      {
     	  _buttonManager = new ButtonManager();
        _buttonManager.Init(this);
        vBox.addChild(_buttonManager); 
      }
      this.addChild(vBox);
   	
  	 this.addEventListener(FlexEvent.CREATION_COMPLETE, CreationCompleteHandler) 	    
    }
		

    
    /**
    * Virtuals methods
    */
    
    public override function FontName():void
    {
    
      if (!_isDefault)
      {
        for each (var control:Text in this._controlsArray)
              control.setStyle("fontFamily", _fontName);
      }
      else
        DefaultFont();

      for each (var item:AnswerControl in _answerControls)
        item.fontName = _fontName;
    }

    public override function FontSize():void
    {
      super.FontSize();

      if (_isDefault && _prompt.relatedPromptID == 0)
      {
         for each (var control:Text in this._controlsArray)
              control.setStyle("fontSize", _fontSize + Preferences.parentPromptFontSizeShift);
        
      } 
      else
         for each (control in this._controlsArray)
              control.setStyle("fontSize", _fontSize + 1);
       // _control.setStyle("fontSize", size + 1);

      for each (var item:AnswerControl in _answerControls)
        item.fontSize = _fontSize;

    }

    public override function FontColor():void
    {
     // super.FontColor();
      (_control as TextExended).setStyle("color", _fontColor);

      for each (var item:AnswerControl in _answerControls)
        item.fontColor=_fontColor;
    }

    public override function CheckAnswer():void
    {
      if (IsComplete() == false)
        throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");
        //Если нажали на кнопку Done то строим все контролы и вызываем у них состояние ChekAnswer
	  if (QuizControl.instance.isDone == true)
	  {
	     BuildAllControlsAndCallStateCheckAnswer();
	  	 return ;
	  }		
	  		
      _isCorrect = false;
      _isStartState = false;
      //Проверяем правельно ли пользователь ответил
      for each (var answerControl:AnswerControl in _answerControls)
      {
        answerControl.CheckAnswer();
        if (answerControl.isCorrect && answerControl.isSelected)
            _isCorrect = true;
      }

      // add state "Show Answer"
      if (_isCorrect == false)
      {
        //так как перед ShowAnswer происходит  NextState в ActivityDirectionsControl -- ESafonov
        AddNewAnswerState(StateTypes.CONTINUE); 
        AddNewAnswerState(StateTypes.SHOW_ANSWER);
      }
      else
      {
        //Перестраиваем строку с учетом правельного или непрпвельного ответа пользователя
        (_control as TextExended).htmlText =  BuildStringByIndex(true);
        if (this._currentIndex < _prompt.ChildAnswers().length - 1)
          AddNewAnswerState(getStateBy(ActivityControl.isCheckAnswer));
        AddNewAnswerState(StateTypes.CONTINUE);
        this._currentIndex ++;
      }
      NextState();
    }


    public override function ShowAnswer():void
    {
       _isStartState = false;
      // Проверяем если этот вопрос последний то не вызываем новое состояние
      
      
      //так как перед ShowAnswer происходит  NextState в ActivityDirectionsControl -- ESafonov
      // поэтому финальное состояние кладем первым ...
      AddNewAnswerState(StateTypes.CONTINUE);
      
      if (this._currentIndex < _prompt.ChildAnswers().length)
      {
        if (this._currentIndex < _prompt.ChildAnswers().length - 1)
          AddNewAnswerState(getStateBy(ActivityControl.isCheckAnswer));

        (_control as TextExended).htmlText = BuildStringByIndex(true);
        this._currentIndex++;
      }	

      for each (var answerControl:AnswerControl in _answerControls)
        answerControl.ShowAnswer();

//      NextState();
    }

    public override function Continue():void
    {
        _isStartState = false;
      // При нажатии на кнопку ShowAll вызываеться этот метод
      if (this._currentIndex > _prompt.ChildAnswers().length-1)
      {
        _answerControls = [];
        vBoxAnswers.removeAllChildren();
      }
      else
      {
        if (!this._isStudentTypeUser)
            for each (var answerControl:AnswerControl in _answerControls)
                      answerControl.Continue();

        if (this._currentIndex < _prompt.ChildAnswers().length)
           {
            //Добовляем чекбоксы или радиобатоны в контрол 
            for each (var item:AnswerControl in BuildNexControlByIndex(_currentIndex))
                vBoxAnswers.addChild(item);
            (_control as TextExended).htmlText =  BuildStringByIndex();
            //Если необходимо загрузить даные из моджели делаем это
            if (_isLoadResults)
            	LoadResults();	
           }
      }
      NextState();
    }

    public override function IsComplete():Boolean
    {
      if (_answerControls.length == 0)
          return true;
      if(this._currentIndex < _prompt.ChildAnswers().length && QuizControl.instance.isDone)
      	 return false;
   	  for each (var answerControl:AnswerControl in _answerControls)
        if ( answerControl.IsComplete())
          return true;
      if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport)
   	      return true;	     
      return false;
    }

    public override function Init(prompt:Prompt):void
    {
      /*if (prompt is MultipleChoiceCascading)
         (_control as Text).htmlText = this.BuildControlByIndex(prompt as MultipleChoiceCascading);*/
     // (_control as Text).htmlText = prompt.text;
    }

    public override function DefaultFont():void
    {
      for each (var control:Text in this._controlsArray)
             control.setStyle("fontFamily", "Futura");
      //_control.setStyle("fontFamily", "Futura");
    }

    public override function set isDefault(value:Boolean):void
    {
      super.isDefault = value;

      for each (var item:AnswerControl in _answerControls)
        item.isDefault = value;
    }
    
    public override function SaveResults():void
    {
      for each (var item:AnswerControl in _answerControls)
           item.SaveResults();
    }
    
    public override function LoadResults(needCheckAnswer:Boolean = false):void
    {
       _isStudentTypeUser = false;
       if (needCheckAnswer)
       {
        BuildAllControlsAndCallStateCheckAnswer();
        AddScoreForReport();
       	if (_isShowReportTeacher)
       	{
       	    if (_isCorrect == true && _buttonManager != null)
           	    this._buttonManager.DeleteYourself();
           	else
           	 AddButtonForReport();  
        }
        else 
         if (this._buttonManager != null) 
         	       this._buttonManager.DeleteYourself();    	
       }
       else 
       {
       	 _isLoadResults = true;
         for each (var answerControl:AnswerControl in _answerControls)
                   answerControl.LoadResults(); 
       }
       
    }
    
    // возвращает признак того что это финальное состояние
    public override function IsFinalState():Boolean
    {
    	if (_currentState == StateTypes.CHECK_ANSWER)
    		return false;
        return _states.length ? false : true;
    }
    
    /**
    * Public members/properties
    */
    public function get answerControls():Array
    {
      return _answerControls;
    }

    public function Delete():void
    {
      if (this.parent != null)
          this.parent.removeChild(this);
    }
    
    public override function get currentStateControl():StateTypes
    {
      return this._currentState; 
    }

    /**
    * Public methods
    */
    
    //Данный метод вызываеться когода пользователь находиться под профелем студента
    //И обрабатывае кнопку Continue которая пренадлежит этому контролу
    public override function Click_btnContinue(event:MouseEvent):void
    {
      try
      {
        // Проверяем заполнил ли пользователь поля
        if (IsComplete() == false)
            throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");
        //Если показываем отчет учителю 
        if (_isShowReportTeacher)
        {
        	 for each (var answerControl:AnswerControl in _allAnswerControls)
                     answerControl.ShowAnswer();
             _buttonManager.DeleteYourself();    
        }     
        else 
        {
	        // Сохраняем результаты которые ввел пользователь 
	        this.SaveResults();    
	        //Переводим счетчик на следующий вопрос
	        this._currentIndex ++;
	        this.Continue();
	        this._buttonManager.SetStateBackButton(); 
	        this._buttonManager.btnContinue.enabled = true;  
	        //Если предложения закончились то на даннывй момет чекбоксы уже удалены и тут удаляеться подчеркивания и предложения
	        if (this._currentIndex > _prompt.ChildAnswers().length-1)
	        {
	           (_control as TextExended).htmlText = (_control as TextExended).htmlText.replace(new RegExp(FactoryRegExp.instance.U(EnumRegExp.G)),"");
	           this._buttonManager.btnContinue.enabled = false;
	        }
        }
      }
      catch(error:Error)
      {
        AlertWindow.Show(this, "OOPS!", error.message);
      }
    }
    
    public override function Click_btnBack(event:MouseEvent):void
    {
      //Уменьшаем индекс
      _currentIndex--;
      //Удаляем поледний ансвер контрол что бы потом его построить заново
      _answerControls.pop();
      this.Continue();
      if (_currentIndex == 0)
          this._buttonManager.SetStateMain();
      this._buttonManager.btnContinue.enabled = true;
    }
  
   }
}