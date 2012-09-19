package Model.Prompts
{
  import Model.Activity;
  import Model.Answers.Answer;
  
  import mx.states.SetStyle;

  public class Matching extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\Matching.as
    *
    *  Abstract:
    *     This is class for matching prompt
    *     
    *  Author:
    *     Evgenij Welikij   21-October-2009
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
    public function Matching(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, cascading:int, 
      text:String, relatedPromptID:int=0, activity:Activity=null)
    {
      super(Prompt.MATCHING, ID, page, num, showNum, relatedActivityID, cascading, text, relatedPromptID, activity);
    }
    
    
    /**
    * Virtuals methods
    */
    public override function AddAnswer(answer:Answer):int
    {
      if (answer.relatedPromptID == _ID)
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
          
    /**
    * Public members/properties
    */
    
    
    /**
    * Public methods
    */
    public function SortByNumAttribute():void
    {
      var temp:Answer;
      
      for (var i:int = 0; i < _answers.length; i++)
        for (var j:int = 0; j < _answers.length - 1; j++)
          if ((_answers[j] as Answer).num > (_answers[j + 1] as Answer).num)
          {
            temp = _answers[j];
            _answers[j] = _answers[j + 1];
            _answers[j + 1] = temp;
          }
    }
    
    public function Sort():void
    {
      var temp:Answer;
      
      for (var i:int = 0; i < _answers.length; i++)
        for (var j:int = 0; j < _answers.length - 1; j++)
          if ((_answers[j] as Answer).num > (_answers[j + 1] as Answer).num)
          {
            temp = _answers[j];
            _answers[j] = _answers[j + 1];
            _answers[j + 1] = temp;
          }
    }    
    
    
  }
}