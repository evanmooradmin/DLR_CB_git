package Model.Answers
{
  import Model.Activity;

  public class YesOrNoAnswer extends Answer
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
    public function YesOrNoAnswer(ID:int, relatedPromptID:int, isCorrect:Boolean, num:int, text:String,
        relatedAnswerID:int = 0, activity:Activity=null)
    {
      if (ID == 0)
      {
          var i:int;
          i=0;
      }          
      super(Answer.YES_OR_NO, ID, relatedPromptID, isCorrect, num, text, relatedAnswerID, activity);
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


    /**
    * Public methods
    */


  }
}