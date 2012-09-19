package Model.Prompts
{
  import Model.Activity;
  import Model.Answers.Answer;

  public class YesOrNo extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\YesOrNo.as
    *
    *  Abstract:
    *     This is class for Yes or No prompt type
    *     
    *  Author:
    *     Evgenij Welikij   02-November-2009
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
    protected var _answers:Array = new Array();
    
    
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
    public function YesOrNo(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, cascading:int,
        text:String, relatedPromptID:int=0, activity:Activity=null)
    {
      super(Prompt.YES_OR_NO, ID, page, num, showNum, relatedActivityID, cascading, text, relatedPromptID, activity);
    }
    
    
    /**
    * Virtuals methods
    */
     public override function AddAnswer(answer:Answer):int
    {
      if (answer.relatedPromptID == this._ID)
        _answers.push(answer);
      return _answers.length;
    }
    
    public override function ChildAnswers():Array
    {
      return _answers;
    }
        
    public override function getChildren():Array
    {
      return this._answers;
    }  
    
    public override function deserialize(componentNode:XML):void
    {
      var userAnswer:Boolean = false; 
       super.deserialize(componentNode); 
      if (componentNode.@result == "true")
          userAnswer = true;
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