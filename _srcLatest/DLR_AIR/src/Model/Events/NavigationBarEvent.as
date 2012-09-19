package Model.Events
{
  import Model.Activity;
  import Model.Preferences;
  
  import flash.events.Event;

  public class NavigationBarEvent extends Event
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Events\NavigationBarEvent.as
    *
    *  Abstract:
    *     This is class for navigation bar events
    *     
    *  Author:
    *     Evgenij Welikij   20-Ocotber-2009
    *
    *  Revision History:
    *
    ***************************************************************/
        
        
    /**
    * Static
    */
    public static const CHANGE_FONT_NAME:String = "change font name";
    public static const CHANGE_FONT_SIZE:String = "change font size";
    public static const CHANGE_ACTIVITY:String  = "cnage activity"
    
    
    /**
    * Private members/properties
    */
    protected var _preferences:Preferences;
    protected var _activity:Activity;
    
    
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
    public function NavigationBarEvent(type:String, preferences:Preferences, activity:Activity, 
      bubbles:Boolean=false, cancelable:Boolean=false)
    {
      super(type, bubbles, cancelable);
      
      this._preferences = preferences;
      this._activity = activity;
    }
    
    
    /**
    * Virtuals methods
    */
        
        
    /**
    * Public members/properties
    */
    public function get preferences():Preferences
    {
      return _preferences;
    }
    
    public function get activity():Activity
    {
      return _activity;
    }
    
    
    /**
    * Public methods
    */
    
    
  }
}