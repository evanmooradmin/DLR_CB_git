package Model.Answers
{
  import Model.Activity;
  import Model.EnumRegExp;
  import Model.FactoryRegExp;

  public class SortingAnswer extends Answer
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Answers\SortingAnswer.as
    *
    *  Abstract:
    *     This is class for sorting answer type
    *
    *  Author:
    *     Evgenij Welikij   09-November-2009
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
    public function SortingAnswer(ID:int, relatedPromptID:int, isCorrect:Boolean, num:int, text:String, answer:int,
        relatedAnswerID:int = 0, activity:Activity=null)
    {
      // удаление всех BR и оставляем по 1 пробелу
      text = text.replace(FactoryRegExp.instance.BR(EnumRegExp.G), " ");
      text = text.replace(FactoryRegExp.instance.DeleteSpaces(EnumRegExp.G), " ");

        // меняем теги <u/> на </u>
      text = text.replace(new RegExp("<\\s*?u\\s*?/\\s*?>",'g'), FactoryRegExp.U_FINISH);

      super(Answer.SORTING, ID, relatedPromptID, isCorrect, num, text, relatedAnswerID, activity);
      this._answer = answer;
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
    public function get answer():int
    {
      return _answer;
    }


    /**
    * Public methods
    */


  }
}