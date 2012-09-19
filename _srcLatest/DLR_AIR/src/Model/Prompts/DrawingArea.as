package Model.Prompts
{
  import Controls.Enviroment.StringBytes;
  
  import Model.Activity;
  
  import flash.utils.ByteArray;
  import flash.utils.CompressionAlgorithm;

  public class DrawingArea extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\DrawingArea.as
    *
    *  Abstract:
    *     This is class for Drawing Area prompt type
    *     
    *  Author:
    *     Evgenij Welikij   04-January-2010
    *
    *  Revision History:
    *
    ***************************************************************/
        
        
    /**
    * Static
    */
     private const COMPRESS:String = CompressionAlgorithm.ZLIB;
    
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
    public function DrawingArea(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, cascading:int,
        text:String, relatedPromptID:int=0, activity:Activity=null)
    {
      super(Prompt.DRAWING_AREA, ID, page, num, showNum, relatedActivityID, cascading, text, relatedPromptID, activity);
    }
    
    
    /**
    * Virtuals methods
    */
     public override function AddBackgroungImage(prompt:BackgroundImage):int
    {
      this._backgroundImage = prompt;
      return 0;
    }    
    
   	public override function serialize():XML
    {
      var xml:XML = super.serialize();
      if (_result is ByteArray)
      {
        var ba:ByteArray = _result as ByteArray; 
        ba.compress(COMPRESS);
        xml.@result = StringBytes.toString(ba);
        return xml;
      }
      return xml;
    }
    
    public override function deserialize(componentNode:XML):void
    {
      super.deserialize(componentNode);
     
      var string:String = componentNode.@result;
      var ba:ByteArray = StringBytes.toByteArray(string);
      //Декомпресируем строку
      if (ba)
      {
         ba.uncompress(COMPRESS);
         this._result = ba;
      }
    }  
        
    /**
    * Public members/properties
    */
    
    
    /**
    * Public methods
    */
    
    
  }
}