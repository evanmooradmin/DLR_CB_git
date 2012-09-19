package Controls.PromptControls
{
  import Controls.Enviroment.TextExended;
  
  import Model.Prompts.ReadingAssignment;
  import Model.StateTypes;

  public class ReadingAssignmentControl extends PromptControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\Promptcontrols\ReadingAssignmentControl.as
    *
    *  Abstract:
    *     This is control for Reading Assignment prompt
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
    public function ReadingAssignmentControl(prompt:ReadingAssignment)
    {
      super(prompt);
      _control = new TextExended();

      _states = new Array();
      _states.push(StateTypes.CONTINUE);
      
      NextState();
      (_control as TextExended).htmlText = prompt.text;
      (_control as TextExended).selectable = false;
      this.addChild(_control);
    }


    /**
    * Virtuals methods
    */


    public override function DefaultFont():void
    {
       _control.setStyle("fontFamily", "Futura");
    }
    
    /**
    * Public members/properties
    */
    public override function get countOfFilledPrompts():int
    {
     return 0    
    }
    
    public override function get countTotalPromptControls():int
    {
      return 0;
    }    
    
    //Количество законченых промтов
    public override function get countOfCompletePrompts():int
    {
      return 0; 
    }
  
    
    
    /**
    * Public methods
    */


  }
}