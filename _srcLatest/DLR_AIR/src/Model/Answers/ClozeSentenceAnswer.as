package Model.Answers
{
  import Model.Activity;
  import Model.FactoryRegExp;

  public class ClozeSentenceAnswer extends Answer
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Answers\ClozeSentenceAnswer.as
    *
    *  Abstract:
    *     This is class for cloze sentence answer prompt type
    *     
    *  Author:
    *     Evgenij Welikij   26-Marhc-2010
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
    public function ClozeSentenceAnswer(ID:int, relatedPromptID:int, isCorrect:Boolean, num:int, text:String, 
        relatedAnswerID:int=0, activity:Activity=null)
    {
        // меняем теги <u/> на </u>  
      text = text.replace(new RegExp("<\\s*?u\\s*?/\\s*?>",'g'), FactoryRegExp.U_FINISH);
      super(Answer.CLOZE_SENTENCE, ID, relatedPromptID, isCorrect, num, text, relatedAnswerID, activity);
    }
    
    
    /**
    * Virtuals methods
    */
    
        
        
    /**
    * Public members/properties
    */
    
    
    /**
    * Public methods
    */
        
    
  }
}