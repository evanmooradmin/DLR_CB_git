package Model.Events
{
  import Controls.PromptControls.PromptControl;
  
  import flash.events.Event;

  public class ActivityDirectionsEvent extends Event
  {
    /***************************************************************
    *
    *  Module Name:
    *     
    *
    *  Abstract:
    *     
    *     
    *  Author:
    *     Evgenij Welikij   
    *
    *  Revision History:
    *
    ***************************************************************/
        
        
    /**
    * Static
    */
    public static const CREATE_PROMPT:String = "CREATE_PROMPT";
    
    
    /**
    * Private members/properties
    */
    protected var _promptControl:PromptControl;
    
    
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
    public function ActivityDirectionsEvent(type:String, promptControl:PromptControl, bubbles:Boolean=false, cancelable:Boolean=false)
    {
      super(type, bubbles, cancelable);
      
      _promptControl = promptControl;
    }
    
    
    /**
    * Virtuals methods
    */
        
        
    /**
    * Public members/properties
    */
    public function get promptControl():PromptControl
    {
      return _promptControl;
    }
    
    
    /**
    * Public methods
    */
    
    
  }
}