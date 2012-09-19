package Model.Prompts
{
  import Model.Activity;
  import Model.Answers.Answer;
  import Model.EnumRegExp;
  import Model.FactoryRegExp;

  public class FixCapitals extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\FixCapitals.as
    *
    *  Abstract:
    *     This is class for fix capitals prompt type
    *     
    *  Author:
    *     Evgenij Welikij   28-December-2009
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
    public function FixCapitals(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, cascading:int, 
        text:String, answer:String, relatedPromptID:int=0, activity:Activity=null)
    {
      text = text.replace(new RegExp("<\\s*?u\\s*?/\\s*?>",'g'),'</u>');
      _answer = answer.replace(new RegExp("<\\s*?u\\s*?/\\s*?>",'g'),'</u>');
     
      //Заменяем все опострофы на ' потому что возникает проблема со шрифтами, не все шрифты умеют коректно отображать 
      // остальные апострофы
      _answer = _answer.replace(new RegExp('[’`]','g'),'\'');
       
      _answer = _answer.replace(FactoryRegExp.instance.EM_start(EnumRegExp.G), FactoryRegExp.I_START);
      _answer = _answer.replace(FactoryRegExp.instance.EM_finish(EnumRegExp.G), FactoryRegExp.I_FINISH);
      
      super(Prompt.FIX_CAPITALS, ID, page, num, showNum, relatedActivityID, cascading, text, relatedPromptID, activity);
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
      var str:String = componentNode.@result;
      super.deserialize(componentNode);
      this._result = str;
    }
   
   /**
    * Public members/properties
    */
    public function get answer():String
    {
      if (_answer == "")
        return text;
      return _answer;
    }
    
    
    /**
    * Public methods
    */
    
    
    
  }
}