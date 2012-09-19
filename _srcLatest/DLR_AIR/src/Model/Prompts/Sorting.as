package Model.Prompts
{
  import Model.Activity;
  import Model.Answers.Answer;
  import Model.Answers.SortingAnswer;

  public class Sorting extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\Sorting.as
    *
    *  Abstract:
    *     This is class for sorting type prompt
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
    public function Sorting(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, cascading:int, text:String,
      relatedPromptID:int=0, activity:Activity=null)
    {
      super(Prompt.SORTING, ID, page, num, showNum, relatedActivityID, cascading, text, relatedPromptID, activity);
    }


    /**
    * Virtuals methods
    */
    public override function AddAnswer(answer:Answer):int
    {
      if (answer.relatedPromptID == this._ID)
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
    // сортировка ответов
    public function Sort():void
    {
      var temp:SortingAnswer;
      var first:SortingAnswer;
      var second:SortingAnswer;

      for (var i:int = 0; i < _answers.length; i++)
       for (var j:int = 0; j < _answers.length - 1; j++)
       {
          if (_answers[j] is SortingAnswer && _answers[j + 1] is SortingAnswer)
          {
            first = _answers[j];
            second = _answers[j + 1];
          }
          else
            return;

          if (first.text > second.text)
          {
            temp = _answers[j];
            _answers[j] = _answers[j + 1];
            _answers[j + 1] = temp;
          }
       }
    }

    public function SortByAnswerAttribute():void
    {
      var temp:Answer;

      for (var i:int = 0; i < _answers.length; i++)
        for (var j:int = 0; j < _answers.length - 1; j++)
          if ((_answers[j] as SortingAnswer).answer > (_answers[j + 1] as SortingAnswer).answer)
          {
            temp = _answers[j];
            _answers[j] = _answers[j + 1];
            _answers[j + 1] = temp;
          }
    }

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

     // сортировка ответов
    public function SortByAnswerID():void
    {
      var temp:SortingAnswer;
      var first:SortingAnswer;
      var second:SortingAnswer;

      for (var i:int = 0; i < _answers.length; i++)
       for (var j:int = 0; j < _answers.length - 1; j++)
       {
          if (_answers[j] is SortingAnswer && _answers[j + 1] is SortingAnswer)
          {
            first = _answers[j];
            second = _answers[j + 1];
          }
          else
            return;

          if (first.ID > second.ID)
          {
            temp = _answers[j];
            _answers[j] = _answers[j + 1];
            _answers[j + 1] = temp;
          }
       }
    }

  }
}