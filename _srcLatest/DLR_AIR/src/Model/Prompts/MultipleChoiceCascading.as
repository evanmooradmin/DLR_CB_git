package Model.Prompts
{
  import Model.Activity;
  import Model.Answers.Answer;
  import Model.FactoryRegExp;

  public class MultipleChoiceCascading extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     
    *
    *  Abstract:
    *     
    *     
    *  Author:
    *     Ruban Sergey   
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
      public function MultipleChoiceCascading(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, cascading:int, text:String, relatedPromptID:int=0, activity:Activity=null)
      {
         text = text.replace(new RegExp("<\\s*?u\\s*?/\\s*?>",'g'), FactoryRegExp.U_FINISH);
         super(Prompt.MULTIPLE_CHOICE_CASCADING, ID, page, num, showNum, relatedActivityID, cascading, text,  relatedPromptID, activity);
         
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
      return this._answers;
      
    }   
    
    public override function AddBackgroungImage(prompt:BackgroundImage):int
    {
      this._backgroundImage = prompt;
      return 0;
    }
    
    public override function getChildren():Array
    {
      return this._answers;
    }  
        
    /**
    * Public members/properties
    */

    
    /**
    * Public methods
    */
   
    
  }
}