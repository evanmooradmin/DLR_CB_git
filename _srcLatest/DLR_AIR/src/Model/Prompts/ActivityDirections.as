package Model.Prompts
{
  import Model.Activity;
  import Model.Answers.Answer;
  
  public class ActivityDirections extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\ActivityDirections.as
    *
    *  Abstract:
    *     This is class for activity directions
    *     
    *  Author:
    *     Evgenij Welikij   16-October-2009
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
    protected var _prompts:Array = new Array();
    
    
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
    public function ActivityDirections(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, cascading:int,
      text:String, relatedPromptID:int=0, activity:Activity = null)
    {
      super(Prompt.ACTIVITY_DIRECTIONS, ID, page, num, showNum, relatedActivityID, cascading, text, relatedPromptID, activity);
    }
    
    
    /**
    * Virtuals methods
    */
    public override function ChildPrompts():Array
    {
      return _prompts;
    }
    
    public override function AddPrompt(prompt:Prompt):int
    {
      _prompts.push(prompt);
      
      return _prompts.length;
    }
    
    public override function getChildren():Array
    {
      return this._prompts;
    }   
    
    
    public override function AddBackgroungImage(prompt:BackgroundImage):int
    {
      this._backgroundImage = prompt;
      return 0;
    } 
    
    public override function AddActivityGraphic(prompt:ActivityGraphic):void
    {
      this._activityGraphic = prompt;
    } 
    
    public override function AddAnswer(answer:Answer):int
    {
      var prompt:Prompt = GetPromptByID(answer.relatedPromptID);
      
      if (prompt != null)
      {
        prompt.AddAnswer(answer);
        return prompt.ChildAnswers().length;
      }
      
      return 0;
    }
    
    public override function get countChildPrompts():int
    {
      var count:int = 0;
      
      for each (var item:Prompt in _prompts)
        count += item.countChildPrompts;
      
      return count;
    }
        
        
    /**
    * Public members/properties
    */
    
    
    /**
    * Public methods
    */
    public function GetPromptByID(ID:int):Prompt
    {
      for each (var prompt:Prompt in _prompts)
        if (prompt.ID == ID)
          return prompt;
      return null;
    }

    
  }
}