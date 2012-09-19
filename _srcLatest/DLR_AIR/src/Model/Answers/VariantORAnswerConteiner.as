package Model.Answers
{
  import Model.Activity;

  public class VariantORAnswerConteiner extends Answer
  {
       /***************************************************************
    *
    *  Module Name:
    *     Model\Answer\YesOrNoAnswer.as
    *
    *  Abstract:
    *     This is class for yes or no answer
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
    private var _answers:Array = [];
    
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
    
    public function VariantORAnswerConteiner()
    {
      super(Answer.VARIANT_OR_CONTAINER, 0, 0, true, 0, "");
    }
      
    /**
    * Virtuals methods
    */
    public override function AddAnswer(answer:Answer):int
    {
      
      this._answers.push(answer);
      return _answers.length;
    }
    
    public override function ChildAnswers():Array
    {
      return this._answers;
      
    }
    
    public override function getChildren():Array
    {
      return _answers;
    }
        
    /**
    * Public members/properties
    */
   
    
    /**
    * Public methods
    */
       
   
    
  }
}