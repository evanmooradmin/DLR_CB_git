package Model.Prompts
{
  import Model.Activity;

  public class ActivityMatching extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\ActivityMatching.as
    *
    *  Abstract:
    *     This is control for activity matching prompt type
    *     
    *  Author:
    *     Evgenij Welikij   04-March-2010
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
    private var _prompts:Array = new Array();
    
    
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
    public function ActivityMatching(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int,  cascading:int,
        text:String, relatedPromptID:int=0, activity:Activity=null)
    {
      super(Prompt.ACTIVITY_MATCHING, ID, page, num, showNum, relatedActivityID, cascading, text, relatedPromptID, activity);
    }
    
    
    /**
    * Virtuals methods
    */
    public override function AddPrompt(prompt:Prompt):int
    {
      if (prompt.relatedPromptID == this._ID)
        _prompts.push(prompt);
        
      return _prompts.length;
    }
    
    public override function ChildPrompts():Array
    {
      return _prompts;
    }
    
    // этот метод должен ВСЕГДА возвращать 1. См. реализацию соответствующего контролла
    public override function get countChildPrompts():int
    {
      return 1;
    }
        
    public override function getChildren():Array
    {
      return this._prompts;
    } 
    
    public override function deserialize(componentNode:XML):void
    {
       super.deserialize(componentNode);
       var userAnswer:String = "";
       userAnswer = componentNode.@result;
       this._result = userAnswer;    
    }
          
    /**
    * Public members/properties
    */
    
    
    /**
    * Public methods
    */
    
    
    
  }
}