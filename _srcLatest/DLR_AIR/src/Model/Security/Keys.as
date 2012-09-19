package Model.Security
{
  import mx.core.Application;

  public class Keys
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Security\Keys.as
    *
    *  Abstract:
    *     This is class for security keys
    *
    *  Author:
    *     Evgenij Welikij   06-January-2010
    *
    *  Revision History:
    *
    ***************************************************************/


    /**
    * Static
    */
    private static var _instance:Keys;

    public static function get instance():Keys
    {
      if (!_instance)
        _instance = new Keys();
      return _instance;
    }


    /**
    * Private members/properties
    */
    private var _licence:String = "Licence";
    private var _book:String = "Book";
    private var _results:String = "Results";
    private var _preferences:String = "Preferences";


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
    public function Keys()
    {
    }


    /**
    * Virtuals methods
    */


    /**
    * Public members/properties
    */
    public function get results():String
    {
      return _results;
    }

    public function get preferences():String
    {
      return _preferences;
    }

    public function get licence():String
    {
      return _licence;
    }

    public function get book():String
    {
      return _book;
    }


    /**
    * Public methods
    */



  }
}