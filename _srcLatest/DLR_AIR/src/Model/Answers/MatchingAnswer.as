package Model.Answers
{
  import Model.Activity;
  import Model.Prompts.Matching;

  public class MatchingAnswer extends Answer
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
    *     Evgenij Welikij   
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
    protected var _source:String = "";
    
    protected var _parentPrompt:Matching;
    
    
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
    public function MatchingAnswer(ID:int, relatedPromptID:int, isCorrect:Boolean, num:int, source:String, text:String, answer:String, relatedAnswerID:int = 0,
      activity:Activity=null)
    {
      super(Answer.MATCHING, ID, relatedPromptID, isCorrect, num, text, relatedAnswerID, activity);
      this._answer = answer;
      
      _source = _source = source.replace(new RegExp('\\..*?$','g'),'');
      
      _parentPrompt = activity.GetPromptByID(relatedPromptID) as Matching;
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
      return _answer;
    }
    public function set answer(value:String):void
    {
      _answer = value;
    }
    
    public function get parentPrompt():Matching
    {
      return _parentPrompt;
    }
    
    public function get source():String
    {
      return _source;
    }
    
    
    /**
    * Public methods
    */
    
    
    
  }
}