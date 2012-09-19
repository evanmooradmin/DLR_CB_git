package Model.Events
{
  import Model.Activity;

  import flash.events.Event;

  public class QuizEvent extends Event
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Events\QuizEvent.as
    *
    *  Abstract:
    *     This is class for realize QuizControl events
    *
    *  Author:
    *     Evgenij Welikij   12-January-2010
    *
    *  Revision History:
    *
    ***************************************************************/


    /**
    * Static
    */
    public static const COMPLETE_ACTIVITY:String = "COMPLETE_ACTIVITY";


    /**
    * Private members/properties
    */
    private var _activity:Activity;


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
    public function QuizEvent(type:String, activity:Activity, bubbles:Boolean=false, cancelable:Boolean=false)
    {
      super(type, bubbles, cancelable);
      _activity = activity;
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