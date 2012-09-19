package Controls.PromptControls
{
  import Controls.ActivityControl;
  import Controls.AnswerControls.AnswerControl;
  import Controls.AnswerControls.Containers.SortingImageContainer;
  import Controls.AnswerControls.DragAnswers.DragAnswerControl;
  import Controls.AnswerControls.SortingImageAnswerControl;
  import Controls.ButtonManager;
  import Controls.Enviroment.HeaderControl;
  
  import Model.Answers.Answer;
  import Model.Answers.SortingImage;
  import Model.DragAndDropManager;
  import Model.Preferences;
  import Model.Prompts.Prompt;
  import Model.Prompts.SortingGraphics;
  import Model.StateTypes;
  
  import flash.events.MouseEvent;
  
  import interfaces.em.EMUserTypes;
  
  import mx.containers.Canvas;
  import mx.containers.HBox;
  import mx.containers.VBox;
  import mx.controls.Text;
  import mx.core.ScrollPolicy;
  import mx.core.UIComponent;
  import mx.events.FlexEvent;

  public class SortingGraphicsControl extends PromptControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\PromptControls\SortingControl.as
    *
    *  Abstract:
    *     This is control for SortingGraphis prompt
    *
    *  Author:
    *     Sergey Ruban   01-Match-2010
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
    private var canvasDragAnswers:SortingImageContainer;
    private var answerControl:SortingImageContainer;
    private var answersContainer:UIComponent;
    private var _headerControl:HeaderControl;
  

    /**
    * Private methods
    */
    private function BuildVerticalControl(prompt:SortingGraphics):void
    {
     // создаем контейнер с изоброжениями которые нужно перетаскивать
      canvasDragAnswers = new SortingImageContainer(prompt, new VBox());
      canvasDragAnswers.imageWidth = 125;
      canvasDragAnswers.imageHeight = 125;
      // Создаем контейнер в котором будут храниться все изобржаения и заголовок, этот контейнер будут опеределять
      // будут ли размещаться картинки которые надо перетаскивать с права или внизу
      var container:HBox = new HBox();
      container.setStyle("verticalAlign", "middle");
      container.setStyle('horizontalGap','0');
      container.width = this.width;
      container.verticalScrollPolicy = ScrollPolicy.OFF;
      container.horizontalScrollPolicy = ScrollPolicy.OFF;
      
      // сортируем записи что б были в том порядке как указано в Answer
      prompt.Sort();
      
      var containerFromDropObjects:VBox = new VBox()
      //Задаем ширену контейнеру в котором храняться заголовок и места куда надо перетаскивать
      containerFromDropObjects.width = container.width - canvasDragAnswers.imageWidth - canvasDragAnswers.imageWidth/11;
      containerFromDropObjects.verticalScrollPolicy = ScrollPolicy.OFF;
      containerFromDropObjects.horizontalScrollPolicy = ScrollPolicy.OFF;
      this.CreateDropConteiners(prompt, containerFromDropObjects);

      //добовляем изоброжения которые нужно перетаскивать
      hBox.percentWidth = 100;
      hBox.setStyle("horizontalAlign","center");
      //добовляем контейнеры куда нужно перетаскивать
      hBox.addChild(containerFromDropObjects);
      // добовляем контейнеры откуда надо перетаскивать
      hBox.addChild(canvasDragAnswers);
      _control.width = container.width;
      // добовляем текст над кортинками
      vBox.addChild(_headerControl);
      vBox.addChild(hBox);
      container.addChild(vBox);
      this.addChild(container);
    }


    private function BuildHorisontalControl(prompt:SortingGraphics):void
    {
       prompt.SortByAnswerID();
       //Масив для объектов куда нужно перетаскивать 
       var arrayFromDropObjects:Array = new Array();
        
      // создаем контейнер с изоброжениями которые нужно перетаскивать
       canvasDragAnswers = new SortingImageContainer(prompt, new HBox());
       canvasDragAnswers.imageWidth = 200;
       canvasDragAnswers.imageHeight = 200;

       vBox.width = this.width;

      // сортируем записи что б были в том порядке как указано в Answer
      prompt.Sort();

      var containerFromDropObjects:HBox = new HBox()
      //Задаем ширену контейнеру в котором храняться заголовок и места куда надо перетаскивать
      containerFromDropObjects.width = this.width;
      containerFromDropObjects.verticalScrollPolicy = ScrollPolicy.OFF;
      containerFromDropObjects.horizontalScrollPolicy = ScrollPolicy.OFF;
      this.CreateDropConteiners(prompt, containerFromDropObjects);
  
      //добовляем текст над картинками
      vBox.addChild(_headerControl);
      var containerFromDragAndDropObjects:VBox = new VBox();
      containerFromDragAndDropObjects.width = containerFromDropObjects.width;
      containerFromDragAndDropObjects.verticalScrollPolicy = ScrollPolicy.OFF;
      containerFromDragAndDropObjects.horizontalScrollPolicy = ScrollPolicy.OFF;
      containerFromDropObjects.setStyle("horizontalAlign", "center");
      canvasDragAnswers.setStyle("horizontalAlign", "center");
      //добовляем контейнеры куда нужно перетаскивать
      containerFromDragAndDropObjects.addChild(containerFromDropObjects);
      //добовляем картинки которые надо перетаскивать
      containerFromDragAndDropObjects.addChild(canvasDragAnswers);
      vBox.addChild(containerFromDragAndDropObjects);
      containerFromDragAndDropObjects.setStyle("horizontalAlign","center");
     
    //  hBox.addChild();

   //   vBox.addChild(hBox);
  
      
      this.addChild(vBox);
    }

   // Метод создает контейнеры в которые нужно перетаскивать
   //Принемает на вход промт и контейнер в котром будут содержаться места для перетаскивания ответов
   // может быть либо HVox либо VBox
    private function CreateDropConteiners(prompt:SortingGraphics, container:UIComponent):UIComponent
    {
      if(container is HBox || container is VBox)
      {
          // Создаем контейнер который содержит места куда надо перетаскивать
          var answerControl:AnswerControl;
          for each (var item:Answer in prompt.ChildAnswers())
          {
            if (item is SortingImage)
                answerControl = new SortingImageAnswerControl(item as SortingImage, container.width);
            _answerControls.push(answerControl);
            container.addChild(answerControl);
          }
          return container;
      }
      return null
    }

//    private function getImageByNumber(number:int):Image
//    {
//      var img:Image = new Image();
//      for each (var answer:SortingImage in prompt.getChildren())
//      {
//         if (number ==  int(answer.result))
//         {
//              img.source = EmbededData.inctance[EmbededData.img + answer.source];
//           return img;l   
//         } 
//      }
//      return null;
//    }

    // Метод принимает SortingImageAnswerControl куда надо дропать и номер картинки которую надо туда дропнуть и дропает ее туды
    private function DropObjectsByNumber(answerControl:SortingImageAnswerControl):void
    {
      for each (var item:DragAnswerControl in canvasDragAnswers.dragObjects)
       {
         if (answerControl.answer.result == int((item.answer as SortingImage).answer))
         {
             answerControl.dropControl.DropObject(item);
             break;
         }
       }
    }
    
    /**
    * Events handler
    */
    private function CreationComplete(event:FlexEvent):void
    {
      var dropArr:Array = new Array();
      // пробегаем по всем дочерним контролам ип подписываем их на drag and drop
      for each (var item:SortingImageAnswerControl in _answerControls)
        dropArr.push(item.dropControl);

      //init drag and drop
      dragAndDrop = new DragAndDropManager(canvasDragAnswers.dragObjects, dropArr);
    }
    
    
    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function SortingGraphicsControl(prompt:SortingGraphics)
    {
      super(prompt);

      this.width = ActivityControl.MAX_WIDTH - 50;
      this.verticalScrollPolicy = ScrollPolicy.OFF;
      this.horizontalScrollPolicy = ScrollPolicy.OFF;
      vBox.verticalScrollPolicy = ScrollPolicy.OFF;
      vBox.horizontalScrollPolicy = ScrollPolicy.OFF;
      
       _control = new Text();
      _headerControl = new HeaderControl(_control);
       // Текст который храниться в prompt
      (_control as Text).htmlText = prompt.text;
      (_control as Text).selectable = false;

      // Сортируем по ID записи что б были в том порядке как в xml
       prompt.SortByAnswerID();

      if (prompt.isIssetTextDescription == true)
          this.BuildVerticalControl(prompt);
      else
          this.BuildHorisontalControl(prompt);

      // Подписываем на событие CreationComplete для того что б подписать элементы на drag and drop
      this.addEventListener(FlexEvent.CREATION_COMPLETE, CreationComplete);
    }


    /**
    * Virtuals methods
    */

    public override function FontName():void
    {
      //super.FontName(name);

      if (!_isDefault)
        (_control as Text).setStyle("fontFamily", _fontName);
      else
        DefaultFont();

      canvasDragAnswers.fontName = _fontName;

      for each (var item:SortingImageAnswerControl in _answerControls)
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
      for each (var item:SortingImageAnswerControl in _answerControls)
             item.fontSize = _fontSize;
    }

    public override function FontColor():void
    {
    // super.FontColor(color);
      (_control as Text).setStyle("color", _fontColor);
      canvasDragAnswers.fontColor = _fontColor;
      for each (var item:SortingImageAnswerControl in _answerControls)
              item.fontColor = _fontColor;
    }


    public override function CheckAnswer():void
    {
      if (_complete == false)
      {
        AddNewAnswerState(StateTypes.CONTINUE);
        // проверяем если урок еще не пройден выводим сообщение
        if (IsComplete() == false)
          throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");
        //Удаляем контейнер в котором находились изображения которые надо перетаскивать  
        if (canvasDragAnswers.parent != null)
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
        {
          this.AddNewAnswerState(StateTypes.SHOW_ANSWER); 
        }
        
        NextState();

        _complete = true;
      }
    }

    public override function ShowAnswer():void
    {
      _isStartState = false;
      if (canvasDragAnswers.parent != null)
          canvasDragAnswers.parent.removeChild(canvasDragAnswers); 

      for each (var item:AnswerControl in _answerControls)
        item.ShowAnswer();
      NextState();   
    }

    // метод отвечает за возврат значения о том пройден ли урок или нет
    public override function IsComplete():Boolean
    {
      var isComplete:Boolean = true;

      for each (var answerControl:AnswerControl in _answerControls)
        if (answerControl.IsComplete() == false)
          isComplete = false;
      return isComplete;
    }

    public override function Continue():void
    {
        _isStartState = false;
      canvasDragAnswers.Continue();
    }
    
    public override function SaveResults():void
    {
      for each (var item:AnswerControl in _answerControls)
         item.SaveResults(); 
    }
    
    public override function LoadResults(needCheckAnswer:Boolean = false):void
    {
      for each (var item:AnswerControl in _answerControls)
      {
        DropObjectsByNumber(item as SortingImageAnswerControl);  
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
             _buttonManager = new ButtonManager();
             _buttonManager.Init(this);
             vBox.addChild(_buttonManager);  
         } 
      }
    }
    
    public override function Click_btnContinue(event:MouseEvent):void
    {
      this.ShowAnswer();
      if (_buttonManager.parent != null)
          _buttonManager.parent.removeChild(_buttonManager);
    }
    
    public override function Init(prompt:Prompt):void
    {
      var width:int = canvasDragAnswers.imageWidth;
      var height:int = canvasDragAnswers.imageHeight;
      //Задаем размер контейнера в который надо дропать
      for each (var item:SortingImageAnswerControl in _answerControls)
      {
        item.contentWidth = width + 20;
        item.contentHeight = height + 20;
      }
    }

    public override function set isDefault(value:Boolean):void
    {
      super.isDefault = value;

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