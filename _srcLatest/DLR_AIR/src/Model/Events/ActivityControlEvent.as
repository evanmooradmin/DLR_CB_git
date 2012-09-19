package Model.Events
{
  import Model.Activity;

  import flash.events.Event;

  public class ActivityControlEvent extends Event
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Events\ActivityControlEvent.as
    *
    *  Abstract:
    *     This is class for ActivityControl events
    *
    *  Author:
    *     Evgenij Welikij   4-March-2010
    *
    *  Revision History:
    *
    ***************************************************************/


    /**
    * Static
    */
    public static const CONTINUE:String = "continue";
    public static const ACTION:String = "action";


    /**
    * Private members/properties
    */


    /**
    * Private methods
    */
    private var _activity:Activity;


    /**
    * Events handler
    */


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function ActivityControlEvent(type:String, activity:Activity, bubbles:Boolean=false, cancelable:Boolean=false)
    {
      super(type, bubbles, cancelable);
      this._activity = activity;
    }


    /**
    * Virtuals methods
    */


    /**
    * Public members/properties
    */
    public function get activity():Activity
    {
      return _activity;
    }


    /**
    * Public methods
    */


  }
}