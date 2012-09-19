package Controls.PromptControls
{
  import Controls.SimplePromptControls.DrawingAreaViewControl;
  
  import Model.Prompts.DrawingArea;
  import Model.Prompts.Prompt;
  import Model.StateTypes;
  
  import interfaces.IControlView;
  import interfaces.IFontStyle;
  import interfaces.IResult;
  
  import mx.core.ScrollPolicy;

  public class DrawingAreaControl extends PromptControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\PromptControls\DrawingAreaControl.as
    *
    *  Abstract:
    *     This is control for drawing area prompt
    *
    *  Author:
    *     Evgenij Welikij   04-January-2010
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
    public function DrawingAreaControl(prompt:DrawingArea)
    {
      super(prompt);

      _control = new DrawingAreaViewControl();

      _states = new Array();
      _currentState = StateTypes.CONTINUE;

      this.verticalScrollPolicy = ScrollPolicy.OFF;
      this.horizontalScrollPolicy = ScrollPolicy.OFF;
      this.addChild(_control);
    }


    /**
    * Virtuals methods
    */
    public override function FontName():void 
    {
      super.FontName();
      if (!_isDefault)
        IFontStyle(_control).fontName = _fontName;
      else
        (_control as IFontStyle).DefaultFont();
    }

    public override function FontSize():void
    {
      super.FontSize();
      IFontStyle(_control).fontSize = _fontSize;
    }

    public override function FontColor():void
    {
      super.FontColor();
      IFontStyle(_control).fontColor = _fontColor;
    }

    public override function Init(prompt:Prompt):void
    {
      IControlView(_control).Init(prompt);
    }

    public override function Continue():void
    {
      _isStartState = false;
      IResult(_control).Continue();
      NextState();
    }
    
    public override function SaveResults():void
    {
     IResult(_control).SaveResults();
    }
    
    public override function LoadResults(needCheckAnswer:Boolean = false):void
    {
      if (_control is PromptControl)
          (_control as PromptControl).isShowImageReport = isShowImageReport;
      IResult(_control).LoadResults(needCheckAnswer);
      AddScoreForReport();
    }
    
    /**
    * Public members/properties
    */
   //Количество законченых промтов
    public override function get countOfCompletePrompts():int
    {
      return 0; 
    }
    
    //Количество заполненых промтов
    public override function get countOfFilledPrompts():int
    {
      return 0    
    }
    
    //Общее количество промтов
    public override function get countTotalPromptControls():int
    {
      return 0;
    }    
 
    /**
    * Public methods
    */


  }
}