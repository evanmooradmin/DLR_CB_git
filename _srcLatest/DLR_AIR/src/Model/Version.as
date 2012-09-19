package Model
{
  public class Version
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Version.as
    *
    *  Abstract:
    *     This is class for version verification.
    *
    *  Author:
    *     Evgenij Welikij   25-September-2009
    *
    *  Revision History:
    *
    ***************************************************************/


    /**
    * Static
    */
    public static function VersionCMP(version1:String, version2:String):int
    {
      var ver1:Version = new Version(version1);
      var ver2:Version = new Version(version2);

      if (ver1.major > ver2.major)
        return 1;
      else if (ver1.major < ver2.major)
        return -1;
      else
      {
        if (ver1.minor > ver2.minor)
          return 1;
        else if (ver1.minor < ver2.minor)
          return -1;
        else
          return 0;
      }
    }


    /**
    * Private members/properties
    */
    protected var _versionStr:String = "";
    protected var _major:int;
    protected var _minor:int;


    /**
    * Private methods
    */


    /**
    * Constructor
    */
    public function Version(version:String)
    {
      this._versionStr = version;
      
      //Если версия XML  передана коряво без . то приводим ее к нормальному виду
      if(this._versionStr.search(new RegExp("[.]","")) == -1)
         this._versionStr = this._versionStr + ".0";  
        
      var arrStr:Array = _versionStr.split('.');

      if (arrStr.length != 2)
        throw new Error("Vrong version format");
      _major = int(arrStr[0]);
      _minor = int(arrStr[1]);
    }


    /**
    * Virtuals methods
    */


    /**
    * Public members/properties
    */
    public function get major():int
    {
      return _major;
    }

    public function get minor():int
    {
      return _minor;
    }


    /**
    * Public methods
    */


  }
}