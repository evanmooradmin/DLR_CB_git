package Controls.PromptControls
{
  import Model.Prompts.Corrected;
  import Model.StateTypes;
  
  import mx.controls.Text;

  public class CorrectedControl extends PromptControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\Promptcontrols\CorrectedControl.as
    *
    *  Abstract:
    *     This is control for corrected prompt
    *     
    *  Author:
    *     Evgenij Welikij   13-March-2010
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
    public function CorrectedControl(prompt:Corrected)
    {
      super(prompt);
      
      _control = new Text();
      (_control as Text).selectable = false;
      (_control as Text).htmlText = prompt.text;
      
      _states = [];
      _currentState = StateTypes.CONTINUE;      
      
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
    
    
    /**
    * Public methods
    */
    
    
    
  }
}