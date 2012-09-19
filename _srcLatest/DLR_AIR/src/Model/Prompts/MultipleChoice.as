package Model.Prompts
{
  import Model.Activity;
  import Model.Answers.Answer;
  import Model.FactoryRegExp;
  
  public class MultipleChoice extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\MultipleCoice.as
    *
    *  Abstract:
    *     This is class for Multiple-Choice
    *     
    *  Author:
    *     Evgenij Welikij   14-October-2009
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
    //Количество правельных ответов. Нужно для сохранения данных
    private var _countCorrectAnswers:int = 0;
   
    
    
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
    public function MultipleChoice(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, cascading:int, 
      text:String, relatedPromptID:int = 0, activity:Activity = null)
    {
      text = text.replace(new RegExp("<\\s*?u\\s*?/\\s*?>",'g'), FactoryRegExp.U_FINISH);
      text = text.replace(new RegExp("\r", "g"), " ");
      super(Prompt.MULTIPLE_CHOICE, ID, page, num, showNum, relatedActivityID, cascading, text, relatedPromptID, activity);
    }
    
    
    /**
    * Virtuals methods
    */
    public override function AddAnswer(answer:Answer):int
    {
      if (answer.relatedPromptID == this._ID)
        _answers.push(answer);
      if (answer.isCorrect)
          _countCorrectAnswers ++; 
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
      var userAnswer:Boolean = false;
       super.deserialize(componentNode); 
      if (componentNode.@result == "true")
          userAnswer = true;
      this._result = userAnswer;
    }
    
    /**
    * Public members/properties
    */
    
    public function get countCorrectAnswers():int
    {
      return _countCorrectAnswers;
    }
    
    /**
    * Public methods
    */
    
    
    
  }
}