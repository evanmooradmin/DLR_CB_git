package Model.Prompts
{
  import Model.Activity;
  import Model.Answers.Answer;
  import Model.EnumRegExp;
  import Model.FactoryRegExp;

  public class CloseSentence extends Prompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\CloseSentence.as
    *
    *  Abstract:
    *     This is class for close sentence propt type
    *     
    *  Author:
    *     Evgenij Welikij   05-March-2010
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
        
    // предложение разбитое на части
    protected var _sentenceParts:Array = [];
    // пропущенные части предложения
    protected var _answers:Array = [];
    
    
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
    public function CloseSentence(ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, cascading:int, 
        text:String, answer:String, relatedPromptID:int=0, activity:Activity=null)
    {
      super(Prompt.CLOSE_SENTENCE, ID, page, num, showNum, relatedActivityID, cascading, text, relatedPromptID, activity);
      
      if (_ID == 1963)
        var i:int = 0;
        
      _answer = answer;
      // нормализируем сепаратор <![CDATA[<WOL>]]
      _sentenceParts = _text.split(new RegExp(separatorPatternString, "i"));
      
      if (_answer != "")
        _answers = _answer.split(" ");
      
      //_text = _text.replace(new RegExp("\\s*" + separatorPatternString + "\\s*", "g"), " " + separator + " ");
      // ищим теги <br/> и заменяем их на нормальные 
      _text = _text.replace(FactoryRegExp.instance.BR(EnumRegExp.G),' <br/> ');
      _text = FactoryRegExp.NormalazeString(_text);
    }
    
    
    /**
    * Virtuals methods
    */
    public override function AddAnswer(answer:Answer):int
    {
      if (_answer != "")
      {
        _answer = "";
        _answers = [];
      }
      
      if (answer.relatedPromptID == _ID)
        _answers.push(answer.text);
      
      return _answers.length;
    }
    //НЕУВЕРЕН ЧТО ЧТОНИТЬ НЕ ОТВАЛИТЬСЯ ТАК ЧТО ЕСЛИ ЧТО ТУТ НАДО ВЕРНУТЬ ОТВЕТЫ НО МЕТОД НЕОБХОДИМО БУДЕТ ПЕРЕИМЕНОВАТЬ 
   // public override function getChildren():Array
   // {
   //   return this._answers;
   // }       
     
    public override function deserialize(componentNode:XML):void
    {
       super.deserialize(componentNode);
       var userAnswer:String = "";
       userAnswer = componentNode.@result; 
       this._result = userAnswer;    
    }
    
    /**
    * Public members/properties
    */
    public function get answer():String
    {
      var temp:String = text;
      var separatorPattern:RegExp = new RegExp(separatorPatternString, "i");
      
      for (var i:int = 0; i < _answers.length; i++)
        temp = temp.replace(separatorPattern, _answers[i]);
        
      return temp;
    }
    
    public function get sentenceParts():Array
    {
      return _sentenceParts;
    }
    
    public function get answers():Array
    {
      return _answers;
    }
    
    
    /**
    * Public methods
    */
    
    
  }
}