package Model.Prompts
{
  import Model.Activity;
  import Model.Answers.Answer;
  import Model.Answers.SortingImage;
  import Model.FactoryRegExp;

  public class SortingGraphics extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\SortingGraphics.as
    *
    *  Abstract:
    *     This is class for SortingGraphics prompt type
    *     
    *  Author:
    *     Evgenij Welikij   1-March-2010
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
    protected var _answers:Array = [];
    //Есть ли текст в ответе который будет выводиться в описании к кортинке, необходимо для определения какой вид контрола использовать
    protected var _isIssetTextDescription:Boolean = false;
    
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
    public function SortingGraphics(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, cascading:int,
        text:String, relatedPromptID:int=0, activity:Activity=null)
    {
      super(Prompt.SORTING_GRAPHICS, ID, page, num, showNum, relatedActivityID, cascading, text, relatedPromptID, activity);
    }
    
    
    /**
    * Virtuals methods
    */
    public override function AddAnswer(answer:Answer):int
    {
      if (answer.relatedPromptID == _ID)
      {
        _answers.push(answer);
        if (this._isIssetTextDescription == false && FactoryRegExp.NormalazeString(answer.text) != '')
            this._isIssetTextDescription = true;
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
        
    /**
    * Public members/properties
    */
    public function get isIssetTextDescription():Boolean
    {
      return this._isIssetTextDescription;
    }
    
    /**
    * Public methods
    */
    public function Sort():void
    {
      var temp:SortingImage;
      var first:SortingImage;
      var second:SortingImage;
      
      for (var i:int = 0; i < _answers.length; i++)
       for (var j:int = 0; j < _answers.length - 1; j++)
       {
          if (_answers[j] is SortingImage && _answers[j + 1] is SortingImage)
          {
            first = _answers[j];
            second = _answers[j + 1];
          }          
          else
            return;
          
          if (first.answer > second.answer)
          {
            temp = _answers[j];
            _answers[j] = _answers[j + 1];
            _answers[j + 1] = temp;
          }
       }
    }
    public function SortByAnswerID():void
    {
      var temp:SortingImage;
      var first:SortingImage;
      var second:SortingImage;
      
      for (var i:int = 0; i < _answers.length; i++)
       for (var j:int = 0; j < _answers.length - 1; j++)
       {
          if (_answers[j] is SortingImage && _answers[j + 1] is SortingImage)
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