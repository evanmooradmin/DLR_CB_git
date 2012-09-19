package Model.Answers
{
  import Model.Activity;
  import Model.FactoryRegExp;

  public class SentenceEvaluationAnswer extends Answer
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Answers\SentenceEvaluationAnswer.as
    *
    *  Abstract:
    *     This is class for Sentence Evaluation Answer prompt type
    *
    *  Author:
    *     Evgenij Welikij   30-December-2009
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
    public function SentenceEvaluationAnswer(ID:int, relatedPromptID:int, isCorrect:Boolean, num:int, text:String,
        relatedAnswerID:int = 0, activity:Activity=null)
    {
      // меняем теги <u/> на </u>
      text = text.replace(new RegExp("<\\s*?u\\s*?/\\s*?>",'g'), FactoryRegExp.U_FINISH);
      super(Answer.SENTENCE_EVALUATION, ID, relatedPromptID, isCorrect, num, text, relatedAnswerID, activity);
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


    /**
    * Public methods
    */


  }
}