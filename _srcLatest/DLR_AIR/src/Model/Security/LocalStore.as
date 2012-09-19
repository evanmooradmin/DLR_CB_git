package Model.Security
{
  import flash.data.EncryptedLocalStore;
  import flash.utils.ByteArray;

  public class LocalStore
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Security\LocalStore.as
    *
    *  Abstract:
    *     This is wrapper for class EncryptedLocalStore
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
    protected static var _inctance:LocalStore;

    public static function get inctance():LocalStore
    {
      if (!_inctance)
        _inctance = new LocalStore();
      return _inctance;
    }


    /**
    * Private members/properties
    */
    private var _data:ByteArray = new ByteArray();
    //Использовать ли хранилище
    private var _isLicenceActive:Boolean = true;

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
    public function LocalStore()
    {
    }


    /**
    * Virtuals methods
    */


    /**
    * Public members/properties
    */
    public function set isLicenceActive(value:Boolean):void
    {
      this._isLicenceActive == value;
    }

    /**
    * Public methods
    */
    // save result to local store
    public function SaveResults(xml:XML):void
    {
      if (xml)
      {
        _data = new ByteArray();
        _data.writeUTFBytes(xml.toString());
        if (this._isLicenceActive == true)
         EncryptedLocalStore.setItem(EmcMapAndVersion.currentMap.appID + Keys.instance.results, _data);
      }
    }

    // load results from local store
    public function LoadResults():XML
    {
      _data = new ByteArray();
      if (this._isLicenceActive == true)
        _data = EncryptedLocalStore.getItem(EmcMapAndVersion.currentMap.appID + Keys.instance.results);

      if (_data)
        return XML(_data.readUTFBytes(_data.length));
      return null;
    }

    // remore results from local store
    public function RemoveResults():void
    {
      if (this._isLicenceActive == true)
          EncryptedLocalStore.removeItem(EmcMapAndVersion.currentMap.appID + Keys.instance.results);
    }

    // save preferences to local store
    public function SavePreferences(preferences:XML):void
    {
      if (preferences)
      {
        _data = new ByteArray();
        _data.writeUTFBytes(preferences.toString());
        if (this._isLicenceActive == true)
            EncryptedLocalStore.setItem(EmcMapAndVersion.currentMap.appID + Keys.instance.preferences, _data);
      }
    }

    public function Reset():void
    {
     EncryptedLocalStore.reset();
    }

    // load preferences from local store
    public function LoadPreferences():XML
    {
      _data = new ByteArray();
      if (this._isLicenceActive == true)
         _data = EncryptedLocalStore.getItem(EmcMapAndVersion.currentMap.appID + Keys.instance.preferences);

      if (_data)
        return XML(_data.readUTFBytes(_data.length));
      return null;
    }

    public function LoadLicence(majorVersion:int, minorVersion:int):String
    {
      _data = new ByteArray();

      if (this._isLicenceActive == true)
        _data = EncryptedLocalStore.getItem(EmcMapAndVersion.currentMap.appID + "_" + majorVersion.toString() + "_" +
            minorVersion.toString() + "_" + Keys.instance.licence);

      if (_data)
        return _data.readUTFBytes(_data.length);
      return "";
    }

    public function SaveLicence(key:String, majorVersion:int, minorVersion:int):void
    {
      _data = new ByteArray();
      _data.writeUTFBytes(key);

      if (this._isLicenceActive == true)
         EncryptedLocalStore.setItem(EmcMapAndVersion.currentMap.appID + "_" + majorVersion.toString() + "_" +
            minorVersion.toString() + "_" + Keys.instance.licence, _data);
    }

    public function LoadBook():XML
    {
      _data = new ByteArray();
      if (this._isLicenceActive == true)
         _data = EncryptedLocalStore.getItem(EmcMapAndVersion.currentMap.appID + Keys.instance.book);

      if (_data)
        return XML(_data.readUTFBytes(_data.length));
      return null;
    }

    public function SaveBook(book:XML):void
    {
      _data = new ByteArray();
      _data.writeUTFBytes(book.toString());
     if (this._isLicenceActive == true)
        EncryptedLocalStore.setItem(EmcMapAndVersion.currentMap.appID + Keys.instance.book, _data);
    }


  }
}