package Model.Prompts
{
  import Model.Activity;

  public class ContainerOneByOne extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\ContainerOneByOne.as
    *
    *  Abstract:
    *     This is class for container one-by-one prompt type
    *     
    *  Author:
    *     Evgenij Welikij   28-March-2010
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
    protected var _prompts:Array = [];
        
        
    /**
    * Events handler
    */
        
        
    /** 
    * Initialization
    */
        
        
    /**
    * Constructor 
    */
    public function ContainerOneByOne(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, 
        cascading:int, text:String, relatedPromptID:int=0, activity:Activity=null)
    {
      super(Prompt.CONTAINER_ONE_BY_ONE, ID, page, num, showNum, relatedActivityID, cascading, text, relatedPromptID, 
          activity);
    }
    
    
    /**
    * Virtuals methods
    */
    public override function AddPrompt(prompt:Prompt):int
    {
      if (prompt.relatedPromptID == _ID)
        _prompts.push(prompt);
      
      return _prompts.length;
    }
    
    public override function ChildPrompts():Array
    {
      return _prompts;
    }
        
    public override function getChildren():Array
    {
      return this._prompts;
    }       
    /**
    * Public members/properties
    */
    
    
    /**
    * Public methods
    */
    
    
    
  }
}