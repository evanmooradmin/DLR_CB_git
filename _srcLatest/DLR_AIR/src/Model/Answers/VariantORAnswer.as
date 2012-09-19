package Model.Answers
{
  import Model.Activity;

  public class VariantORAnswer extends Answer
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Answers\FillInTheBlanksAnswer.as
    *
    *  Abstract:
    *     This is class for fill in the blanks answer
    *     
    *  Author:
    *     Evgenij Welikij   05-November-2009
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
    private var _groupID:int;
    
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
    public function VariantORAnswer(ID:int, relatedPromptID:int, isCorrect:Boolean, num:int, text:String, groupID:int, 
        relatedAnswerID:int = 0, activity:Activity=null )
    {
      if (text != null)
      {
        text = text.replace(new RegExp("\r", "g"), " ");
           // заменяем на корректный вид апостофа
        text = text.replace(new RegExp("’", "g"), "'");
        text = text.replace(new RegExp("\n", "g"), " ");
        super(Answer.VARIANT_OR, ID, relatedPromptID, isCorrect, num, text, relatedAnswerID, activity);
        _groupID = groupID;
      }
    }
    
    
    /**
    * Virtuals methods
    */
    public override function deserialize(componentNode:XML):void
    {
       var userAnswer:String = "";
       userAnswer = componentNode.@result;
       this._result = userAnswer;    
    }   
        
    /**
    * Public members/properties
    */
    public function get GroupID():int
    {
     return _groupID; 
    }
    
    /**
    * Public methods
    */
    
    
  }
}