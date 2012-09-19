package Model.Answers
{
  import Model.Activity;
  import Model.FactoryRegExp;

  public class FillInTheBlanksAnswer extends Answer
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Answers\FillInTheBlanksAnswer.as
    *
    *  Abstract:
    *     This is class for fill in the blanks answer
    *     
    *  Author:
    *     Evgenij Welikij   05-November-2009
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
    private var _answer:String = "";
    
    
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
    public function FillInTheBlanksAnswer(ID:int, relatedPromptID:int, isCorrect:Boolean, num:int, answer:String, text:String, relatedAnswerID:int = 0,
      activity:Activity = null )
    {
          // меняем теги <u/> на </u>  
      text = text.replace(new RegExp("<\\s*?u\\s*?/\\s*?>",'g'), FactoryRegExp.U_FINISH);
      super(Answer.FILL_IN_THE_BLANKS, ID, relatedPromptID, isCorrect, num, text, relatedAnswerID, activity);
      
      if (ID == 4143)
        var i:int = 0;
      
      if (answer == "")
        _answer = text;
      else
        _answer = answer;
        //Заменяем все опострофы на ' потому что возникает проблема со шрифтами, не все шрифты умеют коректно отображать 
        // остальные апострофы
       _answer = _answer.replace(new RegExp('[’`]','g'),'\'');
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
    public function set answer(value:String):void
    {
      _answer = value;
    }
    public function get answer():String 
    {
      return _answer;
    }
    
    
    /**
    * Public methods
    */
    
    
  }
}