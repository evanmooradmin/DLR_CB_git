package Controls.PromptControls
{
  import Controls.ActivityControl;
  import Controls.AnswerControls.AnswerControl;
  import Controls.AnswerControls.FixCapitalsAnswerControl;
  import Controls.ButtonManager;
  import Controls.Enviroment.HeaderControl;
  
  import Model.Answers.Answer;
  import Model.Answers.FixCapitalsAnswer;
  import Model.Preferences;
  import Model.Prompts.FixCapitals;
  import Model.StateTypes;
  
  import flash.events.MouseEvent;
  
  import interfaces.IDirection;
  import interfaces.IFontStyle;
  import interfaces.em.EMUserTypes;
  
  import mx.containers.Canvas;
  import mx.containers.HBox;
  import mx.containers.VBox;
  import mx.controls.Text;

  public class FixCapitalsWithAnswersControl extends PromptControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\PromptControls\FixCapitalsWithAnswersControl.as
    *
    *  Abstract:
    *     This is control for fix capitals with contains answer prompt
    *
    *  Author:
    *     Evgenij Welikij   28-December-2009
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
    private var _headerControl:HeaderControl;
    


    /**
    * Private methods
    */


    /**
    * Events handler
    */


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function FixCapitalsWithAnswersControl(prompt:FixCapitals)
    {
      super(prompt);
      _control = new Text();
      (_control as Text).selectable = false;
      (_control as Text).htmlText = prompt.text;
      
      _headerControl =  new HeaderControl(_control);
      _headerControl.percentWidth = 100;
      var answerControl:FixCapitalsAnswerControl;

      for each (var item:Answer in prompt.ChildAnswers())
      {
        answerControl = new FixCapitalsAnswerControl(item as FixCapitalsAnswer);
        _answerControls.push(answerControl);

        vBoxAnswers.addChild(answerControl);
      }

      canvas.width = 20;
      hBox.percentWidth = 100;
      hBox.addChild(canvas);
      hBox.addChild(vBoxAnswers);
      
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
      for each (var item:IFontStyle in _answerControls)
        item.fontName = _fontName;
    }

    public override function FontSize():void
    {
      super.FontSize();

      if (_isDefault && _prompt.relatedPromptID == 0)
        (_control as Text).setStyle("fontSize", _fontSize + Preferences.parentPromptFontSizeShift);
      else
        _control.setStyle("fontSize", _fontSize + 1);

      for each (var item:IFontStyle in _answerControls)
        item.fontSize = _fontSize;
    }

    public override function FontColor():void
    {
      for each (var item:IFontStyle in _answerControls)
        item.fontColor = _fontColor;
    }

    public override function CheckAnswer():void
    {
      _isStartState = false;
      _isCorrect = true;
      for each (var item:IDirection in _answerControls)
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
      for each (var item:IDirection in _answerControls)
        item.ShowAnswer();
      NextState();   
    }
    
    public override function ShowResult():void
    {
//       for each (var item:AnswerControl in _answerControls)
//        item.ShowResult();
      
    }     
    
    public override function SaveResults():void
    {
      for each (var item:AnswerControl in _answerControls)
        item.SaveResults();
    }
    
    public override function LoadResults(needCheckAnswer:Boolean = false):void
    {
      for each (var item:AnswerControl in _answerControls)
                 item.LoadResults(needCheckAnswer);
//      if (needCheckAnswer)
//      {  
//          CheckAnswer();
//          if (isShowImageReport)
//              _headerControl.imageReport.ChoiceState(_isCorrect);
//         //Если показываем отчет учителю
//         if (_isCorrect == false)
//         {
//             // _currentState = StateTypes.SHOW_ANSWER;
//             // AddButtonForReport();
//         } 
//      }
    }
    
    public override function Click_btnContinue(event:MouseEvent):void
    {
      this.ShowAnswer();
      if (_buttonManager.parent != null)
          _buttonManager.parent.removeChild(_buttonManager);
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

    public override function getContent():Array
    {
      return  [vBox];
    }

    /**
    * Public members/properties
    */


    /**
    * Public methods
    */


  }
}