package Model
{
  import flash.text.Font;
  
  import mx.collections.ArrayCollection;

  public class Preferences
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Preferences.as
    *
    *  Abstract:
    *     This is class for preferences
    *
    *  Author:
    *     Evgenij Welikij   20-October-2009
    *
    *  Revision History:
    *
    ***************************************************************/


    /**
    * Static
    */
    private static var fontSizeShift:int = 10;
    private static var _parentPromptFontSizeShift:int = -2;

    public static function get FontSizeShift():int
    {
      return fontSizeShift;
    }
    public static function set FontSizeShift(value:int):void
    {
      fontSizeShift = value;
    }

    public static function get parentPromptFontSizeShift():int
    {
      return _parentPromptFontSizeShift;
    }
    public static function set parentPromptFontSizeShift(value:int):void
    {
      _parentPromptFontSizeShift = value;
    }

    public static const Path:String = "data/Preferences/Preferences.xml";


    /**
    * Private members/properties
    */
    protected var _fontName:String = "";
    protected var _fontSize:int;
    protected var _fontColor:int;
    protected var _quickLaunch:Boolean;
    protected var _lastActivityID:String;
    protected var _isFirstTimeAccessed:Boolean = true;
    protected var _isFullScreen:Boolean = false;
    protected var _isCheckAnswer:Boolean = true;

    protected var _arrFontSize:Array = new Array();
    protected var _arrFontName:Array = new Array();
    protected var _arrFontColor:ArrayCollection = new ArrayCollection([
            {Color:0, Text:'Black'},
            {Color:8487814, Text:'Gray'},
            {Color:6826372, Text:'Purple'},
            {Color:1912197, Text:'Blue'},
            {Color:1938749, Text:'Green'},
            {Color:16498992, Text:'Yellow'},
            {Color:14961446, Text:'Orange'},
            {Color:14549029, Text:'Red'}
          ]);

    protected var xml:XML = <PreferencesSection>
                              <FontSize>10</FontSize>
                              <FontName>Default</FontName>
                              <FontColor>0</FontColor>
                              <QuickLaunch>1</QuickLaunch>
                              <FirstTimeAccessed>1</FirstTimeAccessed>
                              <LastActivityID>0</LastActivityID>
                              <IsFirstTimeAccessed>1</IsFirstTimeAccessed>
                              <IsFullScreen>0</IsFullScreen>
                              <IsCheckAnswer>1</IsCheckAnswer>
                            </PreferencesSection>


    /**
    * Private methods
    */
    public function Load(xml:XML):void
    {
      if (xml.hasOwnProperty("FontName"))
        _fontName = xml.FontName;             // get name font
      if (xml.hasOwnProperty("FontSize"))
        _fontSize = int(xml.FontSize);       // get size font
      if (xml.hasOwnProperty("FontColor"))
        _fontColor = int(xml.FontColor);
      if (xml.hasOwnProperty("LastActivityID"))
        _lastActivityID = String(xml.LastActivityID);

      if (xml.hasOwnProperty("QuickLaunch"))
      {
        if (int(xml.QuickLaunch) == 0)
          _quickLaunch = false;
        else
          _quickLaunch = true;
      }

      if (xml.hasOwnProperty("IsFirstTimeAccessed"))
      {
        if (int(xml.IsFirstTimeAccessed) == 0)
          _isFirstTimeAccessed = false;
        else
          _isFirstTimeAccessed = true;
      }

      if (xml.hasOwnProperty("IsFullScreen"))
      {
        if (int(xml.IsFullScreen) == 0)
          _isFullScreen = false;
        else
          _isFullScreen = true;
      }

      if (xml.hasOwnProperty("IsCheckAnswer"))
      {
        if (int(xml.IsCheckAnswer) == 0)
          _isCheckAnswer = false;
        else
          _isCheckAnswer = true;
      }
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
    public function Preferences(_isLicenceActive:Boolean = true)
    {
      for (var i:int = 1;i<16;i++)
        _arrFontSize.push(i);
      
      
      _arrFontName = Font.enumerateFonts(true);
     //раскоментить чтоб грузить с хранилища
   //  if (_isLicenceActive == true)
   //  {
    //  var preferences:XML = LocalStore.inctance.LoadPreferences();  // пытаемся загрузить настройки с хранилища
     // if (preferences)
     //     xml = preferences;
   //  }
      //Загружаем настройки 
      Load(xml);
    }


    /**
    * Virtuals methods
    */


    /**
    * Public members/properties
    */
    public function get fontName():String
    {
      return _fontName;
    }
    public function set fontName(name:String):void
    {
      _fontName = name;
    }

    public function get fontSize():int
    {
      return _fontSize;
    }
    public function set fontSize(size:int):void
    {
      _fontSize = size;
    }

    public function get fontColor():int
    {
      return _fontColor;
    }
    public function set fontColor(color:int):void
    {
      _fontColor = color;
    }

    public function get quickLaunch():Boolean
    {
      return _quickLaunch;
    }
    public function set quickLaunch(value:Boolean):void
    {
      _quickLaunch = value;
    }

    public function get lastActivityID():String
    {
      return _lastActivityID;
    }
    public function set lastActivityID(ID:String):void
    {
      _lastActivityID = ID;
    }

    public function get arrFontName():Array
    {
      return _arrFontName;
    }

    public function get arrFontSize():Array
    {
      return _arrFontSize;
    }

    public function get arrFontColor():ArrayCollection
    {
      return _arrFontColor;
    }

    public function get isFirstTimeAccessed():Boolean
    {
      return _isFirstTimeAccessed;
    }
    public function set isFirstTimeAccessed(value:Boolean):void
    {
      _isFirstTimeAccessed = value;
    }

    public function get isFullScreen():Boolean
    {
      return _isFullScreen;
    }
    public function set isFullScreen(value:Boolean):void
    {
      _isFullScreen = value;
    }

    public function get isCheckAnswer():Boolean
    {
      return _isCheckAnswer;
    }
    public function set isCheckAnswer(value:Boolean):void
    {
      _isCheckAnswer = value;
    }

    public function get screenSize():ScreenSize
    {
      return _isFullScreen ? ScreenSize.Fullscreen : ScreenSize.Default;
    }


    /**
    * Public methods
    */
    public function AsXML():XML
    {
      var preferences:XML = <PreferencesSection></PreferencesSection>
      if(preferences.hasOwnProperty("FontSize") == false)
        preferences.appendChild(<FontSize></FontSize>);
      preferences.FontSize = _fontSize.toString();

      if(preferences.hasOwnProperty("FontName") == false)
        preferences.appendChild(<FontName></FontName>);
      preferences.FontName = _fontName;

      if(preferences.hasOwnProperty("FontColor") == false)
        preferences.appendChild(<FontColor></FontColor>);
      preferences.FontColor = _fontColor;

      if(preferences.hasOwnProperty("QuickLaunch") == false)
        preferences.appendChild(<QuickLaunch></QuickLaunch>);
      if (_quickLaunch)
        preferences.QuickLaunch = 1;
      else
        preferences.QuickLaunch = 0;
      
      if (preferences.hasOwnProperty("LastActivityID") == false)
         preferences.appendChild(<LastActivityID>0</LastActivityID>);
         preferences.LastActivityID = this._lastActivityID;
         
      if(preferences.hasOwnProperty("IsFirstTimeAccessed") == false)
        preferences.appendChild(<IsFirstTimeAccessed></IsFirstTimeAccessed>);
      if (_isFirstTimeAccessed)
        preferences.IsFirstTimeAccessed = 1;
      else
        preferences.IsFirstTimeAccessed = 0;

      if(preferences.hasOwnProperty("IsFullScreen") == false)
        preferences.appendChild(<IsFullScreen></IsFullScreen>);
      if (_isFullScreen)
        preferences.IsFullScreen = 1;
      else
        preferences.IsFullScreen = 0;

      if(preferences.hasOwnProperty("IsFullScreen") == false)
        preferences.appendChild(<IsFullScreen></IsFullScreen>);
      if (_isFullScreen)
        preferences.IsFullScreen = 1;
      else
        preferences.IsFullScreen = 0;

      if(preferences.hasOwnProperty("IsCheckAnswer") == false)
        preferences.appendChild(<IsCheckAnswer></IsCheckAnswer>);
      if (_isCheckAnswer)
         preferences.IsCheckAnswer = 1;
      else
         preferences.IsCheckAnswer = 0;

      return preferences;
    }

    public function Save():XML
    {
       return AsXML(); 
    //  LocalStore.inctance.SavePreferences(AsXML());
    }

    public function SetDefault():void
    {
      _fontName = "Default";
      _fontSize = 10;
      _fontColor = 0;
      _quickLaunch = true;
      _isFullScreen = false;
      //_isCheckAnswer = true;
    }

    public function Clone():Preferences
    {
      var preferences:Preferences = new Preferences();

      preferences.fontName = _fontName;
      preferences.fontSize = _fontSize;
      preferences.fontColor = _fontColor;
      preferences.lastActivityID = _lastActivityID;
      preferences.quickLaunch = _quickLaunch;
      preferences.isFirstTimeAccessed = _isFirstTimeAccessed;
      preferences.isCheckAnswer = _isCheckAnswer;

      return preferences;
    }


  }
}