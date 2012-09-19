package Model
{
  public class HighlightText
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\HighlightText.as
    *
    *  Abstract:
    *     This is class for highlight text
    *     
    *  Author:
    *     Evgenij Welikij   30-October-2009
    *
    *  Revision History:
    *
    ***************************************************************/
        
        
    /**
    * Static
    */
    public static const COLOR_GREEN:String = "00C35F";
    
    public static function Highlight(rightString:String, wrongString:String, color:String = HighlightText.COLOR_GREEN):String
    {
      var highlight:HighlightText = new HighlightText(rightString, wrongString, color);
      
      return highlight.Highlight();
    }
    
    
    /**
    * Private members/properties
    */
    protected var _rightString:String = "";
    protected var _wrongString:String = "";
    protected var _color:String;
    
    
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
    public function HighlightText(rightString:String, wrongString:String, color:String = HighlightText.COLOR_GREEN)
    {
      this._rightString = rightString;
      this._wrongString = wrongString;
      this._color = color;
    }
    
    
    /**
    * Virtuals methods
    */
        
        
    /**
    * Public members/properties
    */
    
    
    /**
    * Public methods
    */
    public function Highlight():String
    {
      var highlightText:String = "";
      
      for (var i:int = 0; i < _rightString.length; i++)
      {
        var correctSymbol:String = _rightString.substr(i, 1);
        var IncorrectSymbol:String = _wrongString.substr(i, 1);
        
        if (i < _wrongString.length && correctSymbol == IncorrectSymbol)
          highlightText += correctSymbol;
        else
          highlightText += ("<font color='#" + _color + "'><b>" + correctSymbol + "</b></font>");
      }
      
      return highlightText;
    }
    

  }
}