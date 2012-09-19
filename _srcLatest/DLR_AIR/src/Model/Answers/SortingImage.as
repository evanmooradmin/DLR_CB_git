package Model.Answers
{
  import Model.Activity;

  public class SortingImage extends Answer
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Answers\SortingImage.as
    *
    *  Abstract:
    *     This is class for SortingImage prompt type
    *     
    *  Author:
    *     Evgenij Welikij   1-March-2010
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
    protected var _source:String = "";
    protected var _answer:int;
    
    
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
    public function SortingImage(ID:int, relatedPromptID:int, isCorrect:Boolean, num:int, text:String, source:String, answer:int, relatedAnswerID:int = 0,
      activity:Activity=null)
    {
      super(Answer.SORTING_IMAGE, ID, relatedPromptID, isCorrect, num, text, relatedAnswerID, activity);
      
      _source = source.replace(new RegExp('\\..*?$','g'),'');
      _answer = answer;
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
    public function get source():String
    {
      return _source;
    }
    
    public function get answer():int
    {
      return _answer;
    }
    
    
    /**
    * Public methods
    */
    
    
    
  }
}