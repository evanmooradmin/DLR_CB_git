package Model
{
  [Bindable]
  public class EmbededData
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\EmbededData.as
    *
    *  Abstract:
    *     This is singleton class for all embeded data
    *
    *  Author:
    *     Evgenij Welikij   29-December-2009
    *
    *  Revision History:
    *
    ***************************************************************/


    /**
    * Static
    */
    public static var img:String = 'img';

    private static var _instance:EmbededData;

    public static function get inctance():EmbededData
    {
      if (!_instance)
        _instance = new EmbededData();
      return _instance;
    }


    /**
    * Private members/properties
    */
    [Embed(source="data/books/dlr1.xml", mimeType="application/octet-stream")] 
    protected var _emcXML1:Class;

    [Embed(source="data/books/dlr2.xml", mimeType="application/octet-stream")]
    protected var _emcXML2:Class;

    [Embed(source="data/books/dlr3.xml", mimeType="application/octet-stream")]
    protected var _emcXML3:Class;

    [Embed(source="data/books/dlr4.xml", mimeType="application/octet-stream")]
    protected var _emcXML4:Class;
    
    [Embed(source="data/books/dlr5.xml", mimeType="application/octet-stream")]
    protected var _emcXML5:Class; 
    
    [Embed(source="data/books/dlr6.xml", mimeType="application/octet-stream")]
    protected var _emcXML6:Class; 
    
    [Embed(source="data/books/dlr7.xml", mimeType="application/octet-stream")]
    protected var _emcXML7:Class; 
    
    [Embed(source="data/books/dlr8.xml", mimeType="application/octet-stream")]
    protected var _emcXML8:Class; 
    
    
    [Embed(source="style/images/icon/1/128.png")]
    protected var _imgIcon1:Class;
    
    [Embed(source="style/images/icon/2/128.png")]
    protected var _imgIcon2:Class;
    
    [Embed(source="style/images/icon/3/128.png")]
    protected var _imgIcon3:Class;
    
    [Embed(source="style/images/icon/4/128.png")]
    protected var _imgIcon4:Class;
    
    [Embed(source="style/images/icon/5/128.png")]
    protected var _imgIcon5:Class;
    
    [Embed(source="style/images/icon/6/128.png")]
    protected var _imgIcon6:Class;
    
    [Embed(source="style/images/icon/7/128.png")]
    protected var _imgIcon7:Class;
   
    [Embed(source="style/images/icon/8/128.png")]
    protected var _imgIcon8:Class;
    
    
    
    [Embed(source="style/Box.swf")]
    protected var _waitWindowSwf:Class;
    
    [Embed(source="style/images/QuizControls/incorrect.png")]
    protected var _iconIncorrect:Class;

    [Embed(source="style/images/QuizControls/correct.png")]
    protected var _iconCorrect:Class;
    
    [Embed(source="style/images/QuizControls/question.png")]
    protected var _iconQuestion:Class;
    
    [Embed(source="style/images/cursors/Hand.png")]
    protected var _handIcon:Class;

    [Embed(source="style/images/cursors/Finger.png")]
    protected var _fingerIcon:Class;

    [Embed(source="style/images/cursors/pencil.png")]
    protected var _pencilIcon:Class;
    
    [Embed(source="style/images/cursors/lastic.png")]
    protected var _lasticIcon:Class;

    [Embed(source="style/images/icon/logo.png")]
    protected var _logo:Class

    [Embed(source="data/images/64a.png")]
    protected var _img64a:Class;

    [Embed(source="data/images/64b.png")]
    protected var _img64b:Class;

    [Embed(source="data/images/64c.png")]
    protected var _img64c:Class;

    [Embed(source="data/images/70a.png")]
    protected var _img70a:Class;

    [Embed(source="data/images/70b.png")]
    protected var _img70b:Class;

    [Embed(source="data/images/70C.png")]
    protected var _img70C:Class;

    [Embed(source="data/images/wk11Fri.png")]
    protected var _imgwk11Fri:Class;

    [Embed(source="data/images/wk18Fri.png")]
    protected var _imgwk18Fri:Class;

    [Embed(source="data/images/wk19Fri.png")]
    protected var _imgwk19Fri:Class;

    [Embed(source="data/images/wk20Fri(1).png")]
    protected var _imgwk20Fri1:Class;

    [Embed(source="data/images/wk20Fri(2).png")]
    protected var _imgwk20Fri2:Class;

    [Embed(source="data/images/wk20Fri(3).png")]
    protected var _imgwk20Fri3:Class;

    [Embed(source="data/images/wk21Fri.png")]
    protected var _imgwk21Fri:Class;

    [Embed(source="data/images/wk22Fri(1).png")]
    protected var _imgwk22Fri1:Class;

    [Embed(source="data/images/wk22Fri(2).png")]
    protected var _imgwk22Fri2:Class;

    [Embed(source="data/images/wk22Fri(3).png")]
    protected var _imgwk22Fri3:Class;

    [Embed(source="data/images/wk23Fri.png")]
    protected var _imgwk23Fri:Class;

    [Embed(source="data/images/wk23Wed.png")]
    protected var _imgwk23Wed:Class;

    [Embed(source="data/images/wk25Fri.png")]
    protected var _imgwk25Fri:Class;

    [Embed(source="data/images/wk26Fri.png")]
    protected var _imgwk26Fri:Class;

    [Embed(source="data/images/wk27Fri.png")]
    protected var _imgwk27Fri:Class;

    [Embed(source="data/images/wk28Fri.png")]
    protected var _imgwk28Fri:Class;

    [Embed(source="data/images/wk2Fri.png")]
    protected var _imgwk2Fri:Class;

    [Embed(source="data/images/wk32Fri(1).png")]
    protected var _imgwk32Fri1:Class;

    [Embed(source="data/images/wk32Fri(2).png")]
    protected var _imgwk32Fri2:Class;

    [Embed(source="data/images/wk32Fri(3).png")]
    protected var _imgwk32Fri3:Class;

    [Embed(source="data/images/wk35Fri.png")]
    protected var _imgwk35Fri:Class;

    [Embed(source="data/images/wk3Tues.png")]
    protected var _imgwk3Tues:Class;

    [Embed(source="data/images/wk4Fri(1).png")]
    protected var _imgwk4Fri1:Class;

    [Embed(source="data/images/wk4Fri(2).png")]
    protected var _imgwk4Fri2:Class;

    [Embed(source="data/images/wk4Fri(3).png")]
    protected var _imgwk4Fri3:Class;

    [Embed(source="data/images/wk6Fri1.png")]
    protected var _imgwk6Fri1:Class;

    [Embed(source="data/images/wk6Fri2.png")]
    protected var _imgwk6Fri2:Class;

    [Embed(source="data/images/wk6Fri3.png")]
    protected var _imgwk6Fri3:Class;

    [Embed(source="data/images/gr2Wk5Thur.png")]
    protected var _imggr2Wk5Thur:Class;

    // FUTURA fonts
    [Embed(source='style/Fonts/Futura/FuturaStd-Bold.otf',
        fontName='Futura',
        fontWeight='bold',
        mimeType='application/x-font')]
    protected var _futuraBold:Class;

    [Embed(source='style/Fonts/Futura/FuturaStd-BoldOblique.otf',
        fontName='Futura',
        fontWeight='bold',
        fontStyle='oblique',
        mimeType='application/x-font')]
    protected var _futuraBoldOblique:Class;

    [Embed(source='style/Fonts/Futura/FuturaStd-Book.otf',
        fontName='Futura',
        mimeType='application/x-font')]
    protected var _futuraBook:Class;
    
    [Embed(source='style/Fonts/Futura/FuturaStd-BookOblique.otf',
        fontName='Futura',
        fontStyle='oblique',
        mimeType='application/x-font')]
    protected var _futuraBookOblique:Class;

    // EMComic fonts
    [Embed(source='style/Fonts/Qarmic/Qarmic sans.otf',
        fontName='EMComic',
        mimeType='application/x-font')]
    protected var _EMComic:Class;

    [Embed(source='style/Fonts/Qarmic/Qarmic sans Bold.otf',
        fontName='EMComic',
        fontWeight='bold',
        mimeType='application/x-font')]
    protected var _EMComicBold:Class;

    [Embed(source='style/Fonts/Qarmic/Qarmic sans Bold Italic.otf',
        fontName='EMComic',
        fontWeight='bold',
        fontStyle='italic',
        mimeType='application/x-font')]
    protected var _EMComicBoldItalic:Class;

    [Embed(source='style/Fonts/Qarmic/Qarmic sans Italic.otf',
        fontName='EMComic',
        fontStyle='italic',
        mimeType='application/x-font')]
    protected var _EMComicItalic:Class;


    protected var _iconCorrectColorHex:String = 'c35f';
    protected var _iconIncorrectColorHex:String = "e14e49";
    protected var _iconCorrectColor:int = 0xc35f;
    protected var _iconIncorrectColor:int = 0xe14e49;


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
    public function EmbededData()
    {
    }


    /**
    * Virtuals methods
    */


    /**
    * Public members/properties
    */
    public function get waitWindowSwf():Class
    {
      return _waitWindowSwf;
    }
    
    public function get iconIncorrect():Class
    {
      return _iconIncorrect;
    }

    public function get iconCorrect():Class
    {
      return _iconCorrect;
    }
    public function get iconQuestion():Class
    {
      return _iconQuestion;
    }
    
    
    public function get iconCorrectColor():int
    {
      return _iconCorrectColor;
    }

    public function get iconIncorrectColor():int
    {
      return _iconIncorrectColor;
    }

    public function get iconCorrectColorHex():String
    {
      return _iconCorrectColorHex;
    }

    public function get iconIncorrectColorHex():String
    {
      return _iconIncorrectColorHex;
    }

    public function get handIcon():Class
    {
      return _handIcon;
    }

    public function get fingerIcon():Class
    {
      return _fingerIcon;
    }

    public function get pencilIcon():Class
    {
      return _pencilIcon;
    }
    
    public function get lasticIcon():Class
    {
      return _lasticIcon;
    }
    
    public function get logo():Class
    {
      return _logo;
    }

    public function get img64a():Class
    {
      return _img64a;
    }

    public function get img64b():Class
    {
      return _img64b;
    }

    public function get img64c():Class
    {
      return _img64c;
    }

     public function get img70b():Class
    {
      return _img70b;
    }

    public function get img70a():Class
    {
      return _img70a;
    }

     public function get img70C():Class
    {
      return _img70C;
    }

    public function get imgwk11Fri():Class
    {
      return _imgwk11Fri;
    }

     public function get imgwk18Fri():Class
    {
      return _imgwk18Fri;
    }

     public function get imgwk19Fri():Class
    {
      return _imgwk19Fri;
    }

     public function get imgwk20Fri1():Class
    {
      return _imgwk20Fri1;
    }

     public function get imgwk20Fri2():Class
    {
      return _imgwk20Fri2;
    }

     public function get imgwk20Fri3():Class
    {
      return _imgwk20Fri3;
    }

     public function get imgwk21Fri():Class
    {
      return _imgwk21Fri;
    }

     public function get imgwk22Fri1():Class
    {
      return _imgwk22Fri1;
    }

     public function get imgwk22Fri2():Class
    {
      return _imgwk22Fri2;
    }

     public function get imgwk22Fri3():Class
    {
      return _imgwk22Fri3;
    }

     public function get imgwk23Fri():Class
    {
      return _imgwk23Fri;
    }

    public function get imgwk23Wed():Class
    {
      return _imgwk23Wed;
    }

     public function get imgwk25Fri():Class
    {
      return _imgwk25Fri;
    }

     public function get imgwk26Fri():Class
    {
      return _imgwk26Fri;
    }

     public function get imgwk27Fri():Class
    {
      return _imgwk27Fri;
    }

     public function get imgwk28Fri():Class
    {
      return _imgwk28Fri;
    }

     public function get imgwk2Fri():Class
    {
      return _imgwk2Fri;
    }

     public function get imgwk32Fri1():Class
    {
      return _imgwk32Fri1;
    }

     public function get imgwk32Fri2():Class
    {
      return _imgwk32Fri2;
    }

    public function get imgwk32Fri3():Class
    {
      return _imgwk32Fri3;
    }

    public function get imgwk35Fri():Class
    {
      return _imgwk35Fri;
    }

    public function get imgwk3Tues():Class
    {
      return _imgwk3Tues;
    }

    public function get imgwk4Fri1():Class
    {
      return _imgwk4Fri1;
    }

    public function get imgwk4Fri2():Class
    {
      return _imgwk4Fri2;
    }

    public function get imgwk4Fri3():Class
    {
      return _imgwk4Fri3;
    }

    public function get imgwk6Fri1():Class
    {
      return _imgwk6Fri1;
    }

    public function get imgwk6Fri2():Class
    {
      return _imgwk6Fri2;
    }

    public function get imgwk6Fri3():Class
    {
      return _imgwk6Fri3;
    }

    public function get imggr2Wk5Thur():Class
    {
      return _imggr2Wk5Thur;
    }
    

    /**
    * Public methods
    */
    
    public function getXML(level:int):XML
	{
			switch(level)
			{
			  case 1: return XML(new _emcXML1());
				case 2: return XML(new _emcXML2());
				case 3: return XML(new _emcXML3());
				case 4: return XML(new _emcXML4());
				case 5: return XML(new _emcXML5());
				case 6: return XML(new _emcXML6());
				case 7: return XML(new _emcXML7());
				case 8: return XML(new _emcXML8());
			}
			return new XML();
	}
    public function EmbededIcon(value:int):Class
	{
	   switch(value)
	   {
		 case 1: return _imgIcon1;
		 case 2: return _imgIcon2;
		 case 3: return _imgIcon3;
		 case 4: return _imgIcon4;
		 case 5: return _imgIcon5;
		 case 6: return _imgIcon6;
		 case 7: return _imgIcon7;
		 case 8: return _imgIcon8;
	   }
	    
	    return null;
	}	
					
  }
}