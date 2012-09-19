package Model.Prompts
{
  import Model.Activity;
  import Model.Answers.Answer;
  import Model.Answers.VariantORAnswer;
  import Model.Answers.VariantORAnswerConteiner;
  import Model.FactoryRegExp;
  
  public class Open_endedWritingPrompt extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\Open_endedWritingPrompt.as
    *
    *  Abstract:
    *     This is Open-ended writing prompt
    *     
    *  Author:
    *     Evgenij Welikij   16-Ocotober-2009
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
    protected var answersWillVary:String;
    protected var _answers:Array = new Array();
    protected var _variantOrAnswerContainer:VariantORAnswerConteiner;
   //Пернадлежит ли переменная к ActivityID или нет
    protected var _isParentActivityID:Boolean = false;
    
        
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
    public function Open_endedWritingPrompt(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, cascading:int, 
      text:String, AnswersWillVary:String, relatedPromptID:int=0,  actitivity:Activity = null)
    {
      super(Prompt.OPENENDED_WRITING_PROMPT, ID, page, num, showNum, relatedActivityID, cascading, text, relatedPromptID, actitivity);
     
      //Нормализируем ковычки 
      answersWillVary = AnswersWillVary.replace(new RegExp('[“”]','g'),'\"');
      answersWillVary = answersWillVary.replace(new RegExp('[’`]','g'),'\'');
      answersWillVary = FactoryRegExp.NormalazeString(answersWillVary);
      
      if (relatedActivityID != 0)
          this._isParentActivityID = true;
          
      if (answersWillVary != "" && answersWillVary != null)
      {
        var oneAnswer:Answer = new VariantORAnswer(0, ID, true, 0, answersWillVary, 0);
        this.AddAnswer(oneAnswer);
      }
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
      super.deserialize(componentNode);
      var str:String = componentNode.@result;
      this._result = str;
    }
    
       
    /**
    * Public members/properties
    */
    
    public function set AnswersWillVary(string:String):void
    {
      this.answersWillVary = string;
    }
    public function get AnswersWillVary():String
    {
      return this.answersWillVary;
    }
   
    public function get variantOrAnswerContainer():VariantORAnswerConteiner
    {
      return _variantOrAnswerContainer;
    }
    public function get isParentActivityID():Boolean
    {
      return this._isParentActivityID;
    }
    
    /**
    * Public methods
    */
    
    
    
  }
}