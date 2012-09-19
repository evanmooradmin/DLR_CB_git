package Model.Answers
{
  import Model.Activity;
  import Model.FactoryRegExp;
  
  public class SingleAnswer extends Answer
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Answers\SingleAnswer.as
    *
    *  Abstract:
    *     This is class for single answer;
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
    public function SingleAnswer(ID:int, relatedPromptID:int, isCorrect:Boolean, num:int, text:String, visibleAnswer:String, relatedAnswerID:int = 0, activity:Activity = null)
    {
      if (ID == 0)
      {
        var i:int;
        i=0;
      }
        // меняем теги <u/> на </u>  
      text = text.replace(new RegExp("<\\s*?u\\s*?/\\s*?>",'g'), FactoryRegExp.U_FINISH);
      super(Answer.SINGLE_ANSWER, ID, relatedPromptID, isCorrect, num, text, relatedAnswerID, activity);
      
      this.visibleAnswer = visibleAnswer;
    }
    
    
    /**
    * Virtuals methods
    */
   
    public override function serialize():XML
    {
      var serializationObject:XML = super.serialize();
      serializationObject.@result = this._result;
      
      return serializationObject;
    }    
    
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