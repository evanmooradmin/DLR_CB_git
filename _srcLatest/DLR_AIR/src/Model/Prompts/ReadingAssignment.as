package Model.Prompts
{
  import Model.Activity;

  public class ReadingAssignment extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\ReadingAssignment.as
    *
    *  Abstract:
    *     This is class for reading assignment prompt type
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
    public function ReadingAssignment(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, cascading:int, 
      text:String, relatedPromptID:int=0, activity:Activity=null)
    {
      var patternPoint:RegExp = new RegExp("\\.", "g");
      
      text = text.replace(new RegExp("\r", "g"), " ");
    //  text = text.replace(patternPoint, ".\n");
      super(Prompt.READING_ASSIGNMENT, ID, page, num, showNum, relatedActivityID, cascading, text, relatedPromptID, activity);
    }
    
    
    /**
    * Virtuals methods
    */
    public override function AddBackgroungImage(prompt:BackgroundImage):int
    {
      this._backgroundImage = prompt;
      return 0;
    } 
    
    public override function AddActivityGraphic(prompt:ActivityGraphic):void
    {
      this._activityGraphic = prompt;
    }    
        
    /**
    * Public members/properties
    */
    
    
    /**
    * Public methods
    */
    
    
  }
}