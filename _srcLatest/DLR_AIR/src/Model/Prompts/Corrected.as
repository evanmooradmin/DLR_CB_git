package Model.Prompts
{
  import Model.Activity;

  public class Corrected extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\Corrected.as
    *
    *  Abstract:
    *     This is class for corrected prompt type
    *     
    *  Author:
    *     Evgenij Welikij   13-Marhc-2010
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
    public function Corrected(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, 
        cascading:int, text:String, relatedPromptID:int=0, activity:Activity=null)
    {
      super(Prompt.CORRECTED, ID, page, num, showNum, relatedActivityID, cascading, text, relatedPromptID, activity);
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
    
    
  }
}