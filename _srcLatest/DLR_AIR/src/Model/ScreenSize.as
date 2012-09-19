package Model
{
  import flash.system.Capabilities;
  
  import mx.core.Application;
  
  public class ScreenSize
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\ScreenSize.as
    *
    *  Abstract:
    *     This is class for size of size Application
    *     
    *  Author:
    *     Evgenij Welikij  28-January-2010   
    *
    *  Revision History:
    *
    ***************************************************************/
        
        
    /**
    * Static
    */
    public static const Fullscreen:ScreenSize = new ScreenSize(Capabilities.screenResolutionX, Capabilities.screenResolutionY - 50);
    public static const Default:ScreenSize = new ScreenSize(Application.application.width, Application.application.height);
    
    
    /**
    * Private members/properties
    */
    private var _width:Number;
    private var _height:Number;
    
    
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
    public function ScreenSize(width:Number, height:Number)
    {
      _width = width;
      _height = height;
    }
    
    
    /**
    * Virtuals methods
    */
        
        
    /**
    * Public members/properties
    */
    public function get width():Number
    {
      return _width;
    }
    
    public function get height():Number
    {
      return _height;
    }
    
    
    /**
    * Public methods
    */
    
    

  }
}