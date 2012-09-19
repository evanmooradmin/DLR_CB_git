package Controls.PromptControls
{
  import Controls.ActivityControl;
  import Controls.SimplePromptControls.Open_endedWritingPrompt.Open_endedWritingPromptAdvanced;
  import Controls.SimplePromptControls.Open_endedWritingPrompt.Open_endedWritingPromptSimple;
  
  import Model.Events.StateEvent;
  import Model.Prompts.Open_endedWritingPrompt;
  import Model.Prompts.Prompt;
  import Model.StateTypes;
  
  import interfaces.IControlView;
  import interfaces.IFontStyle;
  import interfaces.IResult;
  import interfaces.em.EMUserTypes;
  
  import mx.core.ScrollPolicy;
  import mx.events.FlexEvent;

  public class Open_endedWritingPromptControl extends PromptControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\PromptControls\Open_endedWritingPromptControl.as
    *
    *  Abstract:
    *     This is control for open-ended writing prompt
    *
    *  Author:
    *     Evgenij Welikij   22-October-2009
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

   
     private var _isNeedCheckAnswer:Boolean = false;
      

    /**
    * Private methods
    */
    private function LoadResultsAfterCreationComplete():void
    { 
      IResult(_control).LoadResults(false); 
      if (_isNeedCheckAnswer)
      {
         Continue();
          //Добовляем Score 
          AddScoreForReport(); 
      }
    }
    

    /**
    * Events handler
    */


    /**
    * Initialization
    */
    protected override function createChildren():void
    {
      this.addChild(_control);
      super.createChildren();
    }
    
    private function CreationCompleteHandler(event:FlexEvent):void
    {
      _isCreationComplete = true;
      if (_isLoadResults)
          LoadResultsAfterCreationComplete();
    }
    
    /**
    * Constructor
    */
    public function Open_endedWritingPromptControl(prompt:Open_endedWritingPrompt)
    {
      super(prompt);
      this.verticalScrollPolicy = ScrollPolicy.OFF;
      this.horizontalScrollPolicy = ScrollPolicy.OFF;
      this.percentWidth = 100;
      
      if (prompt.existInsertPlace) 
           _control = new Open_endedWritingPromptAdvanced(); 
      else
      {
          _control = new Open_endedWritingPromptSimple();
          (_control as Open_endedWritingPromptSimple).parentControl = this;
      }
        
      //_control.maxWidth = ActivityControl.MAX_WIDTH; 
      _states = new Array();

      var state:StateTypes = StateTypes.CONTINUE;
      _states.push(state);
      dispatchEvent(new StateEvent(StateEvent.NEW_STATE, state));

      //если есть несколько вариантов ответов добовляем еще одно сотояние continue
      if (prompt.variantOrAnswerContainer != null)
      {
        _states.push(state);
        dispatchEvent(new StateEvent(StateEvent.NEW_STATE, state));
      }
      _currentState = StateTypes.CONTINUE;
      this.addEventListener(FlexEvent.CREATION_COMPLETE, CreationCompleteHandler); 
    }


    /**
    * Virtuals methods
    */
    public override function DeleteCurrentTask():void
    {
      _isYouCanRemoveControl = true;
    }
    
    public override function FontName():void
    {
     // super.FontName(name);
      if (!_isDefault)
        IFontStyle(_control).fontName = _fontName;
      else
        (_control as IFontStyle).DefaultFont();
    }

    public override function FontSize():void
    {
     // super.FontSize(size);
      IFontStyle(_control).fontSize = _fontSize
    }

    public override function FontColor():void
    {
      //super.FontColor(color);
      IFontStyle(_control as IFontStyle).fontColor = _fontColor;
    }

    public override function Init(prompt:Prompt):void
    {
      IControlView(_control).Init(prompt);
    }
    
    public override function ShowResult():void
    {
      this.Continue();
    }
    
    public override function Continue():void
    {
      if (_control is IControlView)
      {
        if (ActivityControl.userType == EMUserTypes.EM_Teacher || ActivityControl.userType == EMUserTypes.EM_Student ) 
            if (IResult(_control).IsComplete() == false)  // There aren't answers in text boxes
                throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");
        _isStartState = false;  
        IResult(_control).Continue();
        NextState();
        if (!IsFinalState())
             _isYouCanRemoveControl = false;
        else 
             _isYouCanRemoveControl =  true;  
      }
    }

    public override function IsSimple():Boolean
    {
      return _states.length == 0;
    }

    public override function IsComplete():Boolean
    {
      return IResult(_control).IsComplete();
    }

    public override function Enable():void
    {
      super.Enable();
    
//      for each (var item:State in _control.states)
//      {
//        if (item.name == "state_answers_will_vary")
//        {
//          _control.currentState = "state_answers_will_vary";
//         }
//      }
    }
    
    public override function SaveResults():void
    {
      IResult(_control).SaveResults(); 
    }
    
    public override function LoadResults(needCheckAnswer:Boolean = false):void
    {
       _isNeedCheckAnswer = needCheckAnswer
       _isLoadResults = true;
      
      if (!_isCreationComplete)
          return 
      else 
          LoadResultsAfterCreationComplete(); 
    }
    
    public override function get countOfCompletePrompts():int
    {
     if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport) 
         if (this.prompt.scoreLeft)
            return int(this.prompt.scoreLeft);
     return 0; 
    }
    
    public override function get countOfFilledPrompts():int
    {
      if (isControlComplete)
          return 1
      else 
          return 0    
    }
    
    public override function get countTotalPromptControls():int 
    {
     if (ActivityControl.userType == EMUserTypes.EM_Teacher_ShowReport) 
         if (this.prompt.scoreRight)
             return int(this.prompt.scoreRight);
      return 0;
    }    
    
    /**
    * Public members/properties
    */


    /**
    * Public methods
    */



  }
}