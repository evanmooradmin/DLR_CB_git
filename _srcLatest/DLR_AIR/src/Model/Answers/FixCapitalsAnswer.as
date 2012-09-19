package Model.Answers
{
  import Model.Activity;

  public class FixCapitalsAnswer extends Answer
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Answers\FixCapitalsAnswer.as
    *
    *  Abstract:
    *     This is class for fix capitals prompt type
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
    protected var _answer:String = "";
    
    
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
    public function FixCapitalsAnswer(ID:int, relatedPromptID:int, isCorrect:Boolean, num:int, text:String, answer:String, relatedAnswerID:int = 0, activity:Activity=null)
    {
      super(FIX_CAPITALS, ID, relatedPromptID, isCorrect, num, text, relatedAnswerID, activity);
      _answer = answer.replace(new RegExp("[‘’`]", "g"), "\'");
      //Меняем ковычки на обычные так как некоторые шрифты их не отображают
      _answer = answer.replace(new RegExp("[“”]", "g"), "\"");
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
    public function get answer():String
    {
      if (_answer != "")
        return _answer;
      return _text;
    }
    
    
    /**
    * Public methods
    */
   
    
  }
}