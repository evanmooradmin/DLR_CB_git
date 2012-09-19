package Model.Answers
{
  import Model.Activity;
  import Model.FactoryRegExp;

  public class MultipleAnswer extends Answer
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Answers\MultipleAnswer.as
    *
    *  Abstract:
    *     This is class for multiple answer prompt
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
    protected var visibleAnswer:String;
    
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
    public function MultipleAnswer(ID:int, relatedPromptID:int, isCorrect:Boolean, num:int, text:String, visibleAnswer:String, relatedAnswerID:int = 0,
      activity:Activity=null)
    {
      text = text.replace(new RegExp("<\\s*?u\\s*?/\\s*?>",'g'), FactoryRegExp.U_FINISH);
      super(Answer.MULTIPLE_ANSWERS, ID, relatedPromptID, isCorrect, num, text, relatedAnswerID, activity);
    
      this.visibleAnswer = visibleAnswer;
    }
    
    
    /**
    * Virtuals methods
    */
     public override function deserialize(componentNode:XML):void
     {
        var userAnswer:Boolean = false;
        if (componentNode.@result == "true")
            userAnswer = true;
        this._result = userAnswer;
     }
       
    /**
    * Public members/properties
    */
    public function get VisibleAnswer():String
    {
      return this.visibleAnswer;
    }
    public function set VisibleAnswer(string:String):void
    {
      this.visibleAnswer = string;
    }
    
    /**
    * Public methods
    */
    
    
  }
}