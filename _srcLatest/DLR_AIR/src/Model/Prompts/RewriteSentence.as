package Model.Prompts
{
  import Model.Activity;
  import Model.Answers.Answer;
  import Model.Answers.VariantORAnswer;
  import Model.Answers.VariantORAnswerConteiner;
  import Model.EnumRegExp;
  import Model.FactoryRegExp;

  public class RewriteSentence extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\RewriteSentence.as
    *
    *  Abstract:
    *     This is class for rewrite sentence prompt
    *     
    *  Author:
    *     Evgenij Welikij   29-Ocotber-2009
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
    public function RewriteSentence(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, cascading:int, 
        text:String, answer:String, relatedPromptID:int=0, activity:Activity=null)
    {
      text = text.replace(new RegExp("\r", "g"), " ");
      answer = answer.replace(new RegExp("\r", "g"), " "); 
         // заменяем на корректный вид апостофа
      answer = answer.replace(new RegExp("[’`]", "g"), "'");
      text = text.replace(new RegExp("[’`]", "g"), "'");
      
     // answer = answer.replace(new RegExp("[“”]", "g"), "\"");
     // text = text.replace(new RegExp("[“”]", "g"), "\"");
     
      answer = answer.replace(new RegExp("\n", "g"), " ");
      //вырезаем <br>
      answer = answer.replace(FactoryRegExp.instance.BR(EnumRegExp.G), " ");
      // меняем теги <u/> на </u>  
      answer = answer.replace(new RegExp("<\\s*?u\\s*?/\\s*?>",'g'), FactoryRegExp.U_FINISH);
      text = text.replace(new RegExp("<\\s*?u\\s*?/\\s*?>",'g'), FactoryRegExp.U_FINISH);
      
      super(Prompt.REWRITE_SENTENCE, ID, page, num, showNum, relatedActivityID, cascading, text, relatedPromptID, activity);
      this._answer = answer;
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
          {
            _variantOrAnswerContainer = new VariantORAnswerConteiner();
            //Записываем в качестве ответа первый ответ 
            this._answer = answer.text;
          }
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
    public function set answer(answer:String):void
    {
      this._answer = answer;
    }
    
    /**
    * Public methods
    */
    public function get variantOrAnswerContainer():VariantORAnswerConteiner
    {
      return _variantOrAnswerContainer;
    }
    
    
  }
}