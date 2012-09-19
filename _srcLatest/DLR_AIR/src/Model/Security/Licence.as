package Model.Security
{
  import flash.data.EncryptedLocalStore;

  public class Licence
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Security\Licence.as
    *
    *  Abstract:
    *     This is class for licence control
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


    /**
    * Private members/properties
    */
    private var _emcID:int;
    private var _minorVersion:int;
    private var _majorVersion:int;
    private var _pcID:String = "";

    private var _isActivate:Boolean = false;

    private var _url:String = "";

    private var _licence:String = "";

    private var _callBackCreateLicence:Function;



    /**
    * Private methods
    */
    private function IntToHex(item:int):String
    {
      var hex:String = Number(item).toString(16);
      return ("0" + hex.toUpperCase()).substr(-2);
    }


    /**
    * Events handler
    */


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function Licence(emcID:int, majorVersion:int, minorVersion:int, callBack:Function)
    {
      _callBackCreateLicence = callBack;

      _licence = LocalStore.inctance.LoadLicence(majorVersion, minorVersion);

      _majorVersion = majorVersion;
      _minorVersion = minorVersion;

      // generate pc ID
      for (var i:int = 0; i < 6; i++)
        _pcID += IntToHex(Math.random() * 100 % 255) + "-";
      _pcID = _pcID.slice(0, _pcID.length - 1);

      _url = "http://license.evan-moor.com/qlm/qlmservice.asmx/ActivateKey?is_productid=" + EmcMapAndVersion.GetByEmcID(emcID).productID.toString() +
        "&is_majorversion=" + majorVersion.toString() + "&is_minorversion=" + minorVersion.toString() +
        "&is_pcid=" + _pcID + "&is_avkey=";

      if (_licence == "" && EmcMapAndVersion.isTrial == false)
      {
        _callBackCreateLicence(_url);
      }
      else
        _isActivate = true;
    }


    /**
    * Virtuals methods
    */


    /**
    * Public members/properties
    */
    public function get isActivate():Boolean
    {
      return _isActivate;
    }

    public function get licenceKey():String
    {
      return _licence;
    }


    /**
    * Public methods
    */
    public function Activate(key:String):void
    {
     _isActivate = true;
     _licence = key;
     LocalStore.inctance.SaveLicence(key, _majorVersion, _minorVersion);
    }

    public function Clear():void
    {
      EncryptedLocalStore.reset();
    }


  }
}