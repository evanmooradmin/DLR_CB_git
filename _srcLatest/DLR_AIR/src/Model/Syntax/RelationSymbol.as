package Model.Syntax
{
  public class RelationSymbol extends Relation
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Syntax\RelationSymbol.as
    *
    *  Abstract:
    *     This is class for relation symbols
    *     
    *  Author:
    *     Evgenij Welikij   28-December-2009
    *
    *  Revision History:
    *
    ***************************************************************/
        
        
    /**
    * Static
    */
    public static function Compare(st1:String, st2:String):Boolean
    {
      if (st1.toUpperCase() == st2.toUpperCase())
        return true;
      return false;
    }
    
    
    /**
    * Private members/properties
    */
    
    
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
    public function RelationSymbol(wrongString:String, rightString:String)
    {
      super(wrongString, rightString);
    }
    
    
    /**
    * Virtuals methods
    */
    public override function Compare():void
    {
      // если строки не равны, то добавляем цвет и bold-стиль 
      if (_wrongString != _rightString)
        _compareHTMLString = "<font color='#C35F'><b>" + _rightString + "</b></font>";
      else
        _compareHTMLString = _rightString;
    }
        
        
    /**
    * Public members/properties
    */
    
    
    /**
    * Public methods
    */
    
    
  }
}