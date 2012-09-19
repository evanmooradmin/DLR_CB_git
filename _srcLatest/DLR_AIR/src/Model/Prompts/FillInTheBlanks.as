package Model.Prompts
{
  import Model.Activity;
  import Model.Answers.Answer;
  import Model.Answers.VariantORAnswer;
  import Model.Answers.VariantORAnswerConteiner;

  public class FillInTheBlanks extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\FillInTheBlanks.as
    *
    *  Abstract:
    *     This is class for Fill-In-The-Blanks prompt
    *
    *  Author:
    *     Evgenij Welikij   03-November-2009
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
    protected var _answers:Array = new Array();
    protected var _variantOrAnswerContainer:VariantORAnswerConteiner;

    protected var _isHorizontal:Boolean = false;


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
    public function FillInTheBlanks(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, cascading:int,
        text:String, answer:String, isHorizontal:Boolean, relatedPromptID:int=0, activity:Activity=null)
    {
      if (ID == 49244)
        var i:int = 0;
        
      super(Prompt.FILL_IN_THE_BLANKS, ID, page, num, showNum, relatedActivityID, cascading, text, relatedPromptID, activity);
      
      //вырезаем все теги
      var pattern:RegExp = new RegExp("(<\\s*?/{0,1}\\s*?[a-z]{1,2}\\s*?/{0,1}\\s*?>)",'g');
      this._answer = answer.replace(pattern,' ');
      _isHorizontal = isHorizontal;

       //Заменяем все опострофы на ' потому что возникает проблема со шрифтами, не все шрифты умеют коректно отображать 
      // остальные апострофы
      _answer = _answer.replace(new RegExp('[‘’`]','g'),'\'');
    }


    /**
    * Virtuals methods
    */
    public override function AddAnswer(answer:Answer):int
    {
      if (answer.relatedPromptID == this._ID)
      {
        if (answer is VariantORAnswer)
        {
          if (!_variantOrAnswerContainer)
            _variantOrAnswerContainer = new VariantORAnswerConteiner();
          _variantOrAnswerContainer.AddAnswer(answer);
        }
        else
          _answers.push(answer);
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

    public override function AddActivityGraphic(prompt:ActivityGraphic):void
    {
      this._activityGraphic = prompt;
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
      return _answer;
    }

    public function get variantOrAnswerContainer():VariantORAnswerConteiner
    {
      return _variantOrAnswerContainer;
    }

    public function get isHorizontal():Boolean
    {
      return _isHorizontal;
    }


    /**
    * Public methods
    */


  }
}