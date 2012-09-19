package Model.Security
{
  import mx.events.ItemClickEvent;

  public class EmcMapAndVersion
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\EmcMapAndVersion.as
    *
    *  Abstract:
    *     This is map for emc id end version
    *
    *  Author:
    *     Evgenij Welikij   04-December-2009
    *
    *  Revision History:
    *
    ***************************************************************/


    /**
    * Static
    */
    private static var instance:Array;
    private static var _currentMap:EmcMapAndVersion;
    private static var _isTrial:Boolean = false;

    public static function get currentMap():EmcMapAndVersion
    {
      return _currentMap;
    }

    public static function get isTrial():Boolean
    {
      return _isTrial;
    }
    public static function set isTrial(value:Boolean):void
    {
      _isTrial = value;
    }

    public static function Instance():Array
    {
      if (instance == null)
      {
        instance = new Array();

        // AWAD

        // DPE

        // DPR
        instance.push(new EmcMapAndVersion(5641, 579, 13, 1));
        instance.push(new EmcMapAndVersion(5642, 580, 14, 2));
        instance.push(new EmcMapAndVersion(5643, 581, 15, 3));
        instance.push(new EmcMapAndVersion(5644, 582, 16, 4));
        instance.push(new EmcMapAndVersion(5645, 583, 17, 5));
        instance.push(new EmcMapAndVersion(5646, 576, 18, 6));
        instance.push(new EmcMapAndVersion(5647, 2797, 19, 7));
        instance.push(new EmcMapAndVersion(5648, 2798, 20, 8));
      }

      return instance;
    }

    public static function GetByEmcID(id:int):EmcMapAndVersion
    {
      for each (var item:EmcMapAndVersion in EmcMapAndVersion.Instance())
        if (item.emcID == id)
        {
          _currentMap = item;
          return item;
        }
      return null;
    }

    public static function SetCurrentMap(num:int):EmcMapAndVersion
    {
      for each (var item:EmcMapAndVersion in EmcMapAndVersion.Instance())
        if (item.sn == num)
        {
          _currentMap = item;
          return item;
        }
      return null;
    }


    /**
    * Private members/properties
    */
    private var _appID:int;
    private var _emcID:int;
    private var _productID:int;
    private var _sn:int;          // порядковый номер книги (отображается в иконке)


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
    public function EmcMapAndVersion(appID:int, emcID:int, productID:int, sn:int)
    {
      _appID = appID;
      _emcID = emcID;
      _productID = productID;
      _sn = sn;
    }


    /**
    * Virtuals methods
    */


    /**
    * Public members/properties
    */
    public function get appID():int
    {
      return _appID;
    }

    public function get emcID():int
    {
      return _emcID;
    }

    public function get productID():int
    {
      return _productID;
    }

    public function get sn():int
    {
      return _sn;
    }


    /**
    * Public methods
    */


  }
}