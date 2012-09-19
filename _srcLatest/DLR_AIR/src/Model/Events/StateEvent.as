package Model.Events
{
  import Model.StateTypes;
  
  import flash.events.Event;

  public class StateEvent extends Event
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model]\Events\StateEvent.as
    *
    *  Abstract:
    *     This is class for state event
    *     
    *  Author:
    *     Evgenij Welikij   30-October-2009
    *
    *  Revision History:
    *
    ***************************************************************/
        
        
    /**
    * Static
    */
    public static const NEW_STATE:String = "new state";
    
    
    /**
    * Private members/properties
    */
    protected var _state:StateTypes;
    
    
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
    public function StateEvent(type:String, state:StateTypes, bubbles:Boolean=true, cancelable:Boolean=false)
    {
      super(type, bubbles, cancelable);
      this._state = state;
    }
    
    
    /**
    * Virtuals methods
    */
        
        
    /**
    * Public members/properties
    */
    public function get state():StateTypes
    {
      return _state;
    }
    
    
    /**
    * Public methods
    */
    
    
  }
}