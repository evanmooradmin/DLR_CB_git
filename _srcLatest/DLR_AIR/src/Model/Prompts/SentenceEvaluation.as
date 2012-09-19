package Model.Prompts
{
  import Model.Activity;
  import Model.Answers.Answer;
  import Model.Answers.SentenceEvaluationAnswer;
  import Model.EnumRegExp;
  import Model.FactoryRegExp;

  public class SentenceEvaluation extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\SentenceEvaluation.as
    *
    *  Abstract:
    *     This is class for Sentence Evaluation prompt type
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
    protected var _answers:Array = new Array();
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
    public function SentenceEvaluation(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, cascading:int,
        text:String, answer:String, relatedPromptID:int=0, activity:Activity=null)
    {

      super(Prompt.SENTENCE_EVALUATION, ID, page, num, showNum, relatedActivityID, cascading, text, relatedPromptID, activity);

      // вырезаем все теги из строки
      answer = answer.replace(FactoryRegExp.instance.AllTegs(EnumRegExp.G),'');
      answer = FactoryRegExp.NormalazeString(answer);

      if (answer != "")
      {
        var words:Array = answer.split(" ");
        var oneAnswer:SentenceEvaluationAnswer;

        for each (var word:String in words)
        {
          oneAnswer = new SentenceEvaluationAnswer(0, ID, true, num, word);
          this.AddAnswer(oneAnswer);
        }
      }

    }


    /**
    * Virtuals methods
    */
    public override function AddAnswer(answer:Answer):int
    {
      if (answer.relatedPromptID == _ID)
      {
        _answers.push(answer);
        _answer += answer.text + " ";
      }

      return _answers.length;
    }

    public override function ChildAnswers():Array
    {
      return _answers;
    }

    public override function AddBackgroungImage(prompt:BackgroundImage):int
    {
      this._backgroundImage = prompt;
      return 0;
    }

    public override function getChildren():Array
    {
      return this._answers;
    }  

    public override function deserialize(componentNode:XML):void
    {
       var userAnswer:String = "";
        super.deserialize(componentNode); 
       userAnswer = componentNode.@result;
       this._result = userAnswer;    
    }
    
    
    /**
    * Public members/properties
    */
    public function get answer():String
    {
      return FactoryRegExp.NormalazeString(_answer);
    }


    /**
    * Public methods
    */


  }
}