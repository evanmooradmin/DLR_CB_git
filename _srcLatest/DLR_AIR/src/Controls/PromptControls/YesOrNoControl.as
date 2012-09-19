package Controls.PromptControls
{
  import Controls.ActivityControl;
  import Controls.AnswerControls.AnswerControl;
  import Controls.AnswerControls.YesOrNoAnswerControl;
  
  import Model.Answers.Answer;
  import Model.Answers.YesOrNoAnswer;
  import Model.Preferences;
  import Model.Prompts.Prompt;
  import Model.Prompts.YesOrNo;
  import Model.StateTypes;
  
  import interfaces.em.EMUserTypes;
  
  import mx.containers.Canvas;
  import mx.containers.HBox;
  import mx.containers.VBox;
  import mx.controls.RadioButtonGroup;
  import mx.controls.Text;
  import mx.core.ScrollPolicy;

  public class YesOrNoControl extends PromptControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\PromptControls\YesOrNoControl.as
    *
    *  Abstract:
    *     This is control for "yes or no" prompt
    *
    *  Author:
    *     Evgenij Welikij   02-November-2009
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
    public function YesOrNoControl(prompt:YesOrNo)
    {
      super(prompt);
      _control = new Text();
      (_control as Text).selectable = false;

      var answerControl:AnswerControl;

      for each (var item:Answer in prompt.ChildAnswers())
      {
        if (item is YesOrNoAnswer)
            answerControl = new YesOrNoAnswerControl(item as YesOrNoAnswer); 
        
        answerControl.percentWidth = 100; 
        (answerControl as YesOrNoAnswerControl).group = rbGroup; 

        _answerControls.push(answerControl); 
        vBoxAnswers.addChild(answerControl);
      }
      vBoxAnswers.percentWidth = 100;
      canvas.width = 20;
      
      hBox.percentWidth = 100;
      hBox.addChild(canvas);
      hBox.addChild(vBoxAnswers);
      
      vBox.percentWidth = 100;
      vBox.addChild(_control);
      vBox.addChild(hBox);

      this.addChild(vBox);
      vBox.verticalScrollPolicy = ScrollPolicy.OFF;
      vBox.horizontalScrollPolicy = ScrollPolicy.OFF;
      this.verticalScrollPolicy = ScrollPolicy.OFF;
      this.horizontalScrollPolicy = ScrollPolicy.OFF; 
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

      for each (var item:AnswerControl in _answerControls)
        item.fontSize = _fontSize;
    }

    public override function FontColor():void
    {
   //   super.FontColor(color);
      (_control as Text).setStyle("color", _fontColor);

      for each (var item:AnswerControl in _answerControls)
        item.fontColor =_fontColor;
    }

    public override function CheckAnswer():void
    {
      if (IsComplete() == false)
        throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");

      _isCorrect = true;
      _isStartState = false;
      for each (var answerControl:AnswerControl in _answerControls)
      {
        answerControl.CheckAnswer();
        if (answerControl.isCorrect == false)
          _isCorrect = false;
      }

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
      for each (var answerControl:AnswerControl in _answerControls)
              answerControl.ShowResult();
    }
    
    public override function SaveResults():void
    {
      for each (var answerControl:AnswerControl in _answerControls)
              answerControl.SaveResults();
    }
    
    public override function LoadResults(needCheckAnswer:Boolean = false):void
    {
      for each (var answerControl:AnswerControl in _answerControls)
              answerControl.LoadResults(needCheckAnswer);
      if (needCheckAnswer) 
      {       
          CheckAnswer();
          AddScoreForReport();
      }        
    }
    
    public override function IsComplete():Boolean
    {
      for each (var answerControl:AnswerControl in _answerControls)
        if (answerControl.IsComplete())
          return true;
      return false;
    }

    public override function Init(prompt:Prompt):void
    {
      (_control as Text).htmlText = prompt.text;
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
  
    
  

    /**
    * Public methods
    */


  }
}