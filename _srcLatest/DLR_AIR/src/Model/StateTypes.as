package Model
{
  import flash.sampler.StackFrame;

  public class StateTypes
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\StateTypes.as
    *
    *  Abstract:
    *     This is class for state types
    *
    *  Author:
    *     Evgenij Welikij   19-October-2009
    *
    *  Revision History:
    *
    ***************************************************************/


    /**
    * Static
    */
    public static const CONTINUE:StateTypes = new StateTypes("CONTINUE");
    public static const CHECK_ANSWER:StateTypes = new StateTypes("CHECK ANSWER");
    public static const SHOW_ANSWER:StateTypes = new StateTypes("SHOW ANSWER");
    public static const NEXT:StateTypes = new StateTypes("NEXT");


    /**
    * Private members/properties
    */
    private var _operationName:String = "";


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
    public function StateTypes(name:String)
    {
      this._operationName = name;
    }


    /**
    * Virtuals methods
    */


    /**
    * Public members/properties
    */
    public function get operationName():String
    {
      return _operationName;
    }


    /**
    * Public methods
    */



  }
}