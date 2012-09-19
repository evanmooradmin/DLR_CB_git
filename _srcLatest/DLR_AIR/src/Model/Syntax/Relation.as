package Model.Syntax
{
  public class Relation
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Syntax\Relation.as
    *
    *  Abstract:
    *     This is base class for all relation type
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
    
    
    /**
    * Private members/properties
    */
    protected var _wrongString:String = "";
    protected var _rightString:String = "";
    protected var _compareHTMLString:String = "";
    
    
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
    public function Relation(wrongString:String, rightString:String)
    {
      _wrongString = wrongString;
      _rightString = rightString;
    }
    
    
    /**
    * Virtuals methods
    */
    // сравнивает строки
    public virtual function Compare():void
    {
    }
        
        
    /**
    * Public members/properties
    */
    public function get wrongString():String
    {
      return _wrongString;
    }
    
    public function get rightString():String
    {
      return _rightString;
    }
    
    public function get compareHTMLString():String
    {
      return _compareHTMLString;
    }
    
    
    /**
    * Public methods
    */
    

  }
}