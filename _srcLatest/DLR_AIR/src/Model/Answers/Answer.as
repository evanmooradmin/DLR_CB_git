package Model.Answers
{
  import Model.Activity;
  
  import interfaces.IBasePrompt;
  
  public class Answer implements IBasePrompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Answers\Answer.as
    *
    *  Abstract:
    *     This is base class for all answers
    *     Класс реализует интерфейс IBasePrompt. Спомощью данного интерфейса в данном проекте объеденены Prompt и  Answer
    *     это нужно при сохранении данных пользователя 
    *     
    *  Author:
    *     Evgenij Welikij   16-October-2009
    *
    *  Revision History:
    *
    ***************************************************************/
        
        
    /**
    * Static
    */
    public static const SINGLE_ANSWER:String        = "Single Answer";
    public static const MATCHING:String             = "Matching";
    public static const YES_OR_NO:String            = "yes or no";
    public static const MULTIPLE_ANSWERS:String     = "Multiple Answers";
    public static const FILL_IN_THE_BLANKS:String   = "Fill-in-the-blanks";
    public static const SORTING:String              = "Sorting";
    public static const FIX_CAPITALS:String         = "Fix Capitals";
    public static const SENTENCE_EVALUATION:String  = "Sentence Evaluation";
    public static const SORTING_IMAGE:String        = "Sorting Image";
    public static const VARIANT_OR:String           = "VariantOR";
    public static const VARIANT_OR_CONTAINER:String = "VariantORContainer";
    public static const VARIANT_CASCADING:String    = "Variant-Cascading";
    public static const CLOZE_SENTENCE:String       = "Cloze Sentence";
    
    
    /**
    * Private members/properties
    */
    protected var _ID:int;
    protected var _relatedPromptID:int;
    protected var _relatedAnswerID:int;
    protected var _type:String = "";
    protected var _num:int;
    protected var _isCorrect:Boolean;
    protected var _text:String = "";
    
    protected var _existInsertPlace:Boolean;
    // text to insert place
    protected var _textTo:String = "";
    // text after insert place
    protected var _textAfter:String = "";
    
    protected var _parentActivity:Activity;
    // ответ указанный пользователем. этот ответ будет серриализоваться
    protected var _result:Object;
    
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
    public function Answer(type:String, ID:int, relatedPromptID:int, isCorrect:Boolean, num:int, text:String, relatedAnswerID:int = 0,
      activity:Activity = null)
    {
      this._type = type;
      this._ID = ID;
      this._relatedPromptID = relatedPromptID;
      this._isCorrect = isCorrect;
      //заменяем апострофы на коректные 
      this._text = text.replace(new RegExp('[’`]','g'),'\'');
      this._parentActivity = activity;
      this._relatedAnswerID = relatedAnswerID;
      this._num = num;
      
      if (text.indexOf("<![CDATA[<WOL>]]") != -1)
      {
        _existInsertPlace = true;
        _textTo = text.substring(0, text.indexOf("<![CDATA[<WOL>]]"));
        _textAfter = text.substr(text.indexOf("<![CDATA[<WOL>]]") + 16);
      }
    }
    
    
    /**
    * Virtuals methods
    */
    public virtual function Init(basePromt:IBasePrompt):void{}
    
    public virtual function AddAnswer(answer:Answer):int
    {
      return 0;
    }
    
    public virtual function ChildAnswers():Array
    {
      return null;
    }
    
    // возвращает коллекцию Component ВСЕХ дочерних елентов 
    public virtual function getChildren():Array
    {
      return [];
    }
   
    // возвращает коллекцию Component ВСЕХ дочерних елентов и себя в начале колекции
    public virtual function getAllLeafComponents():Array
    {
      var collection:Array = [];
     
      collection.push(this);
      
      for each (var item:IBasePrompt in ChildAnswers())
      {
        collection = collection.concat(item.getAllLeafComponents());
      }
      
      return collection;
    }
    
    
    // методы серриализации
    // в дочернем класе перегрузить для серриализации _result
    public virtual function serialize():XML
    {
      var serializationObject:XML = <Component>{_text}</Component>
        
     // serializationObject.@type = _type;
      serializationObject.@ID = _ID;
      serializationObject.@relatedPromptID = _relatedPromptID;
   //   serializationObject.@num = num;
      if (this._result != null)
          serializationObject.@result = this._result;
        
      return serializationObject;
    }
   
    // в дочернем класе перегрузить для десерриализации _result
    public virtual function deserialize(componentNode:XML):void
    {
     
    }
    
     // рекурсивный метод нахождения объекта Component по его ID
    public virtual function getByID(componentID:int):IBasePrompt
    {
      if (_ID == componentID)
      {
        return this;
      }
      else
      {
        for each (var item:IBasePrompt in getChildren())
        {
          var component:IBasePrompt = item.getByID(componentID);
          
          if (component)
            return component;          
        }
      }
      
      return null;
    }
        
    /**
    * Public members/properties
    */
    public function get ID():int
    {
      return _ID;
    }
    
    public function get relatedPromptID():int
    {
      return _relatedPromptID;
    }
    
    public function get type():String
    {
      return _type;
    }
    
    public function get isCorrect():Boolean
    {
      return _isCorrect;
    }
    
    public function get text():String
    {
      return _text;
    }
    
    public function get parentActivity():Activity
    {
      return _parentActivity;
    }
    
    public function get existInsertPlace():Boolean
    {
      return _existInsertPlace;
    }
    
    public function get textTo():String
    {
      return _textTo;
    }
    
    public function get textAfter():String
    {
      return _textAfter;
    }
    
    public function get relatedAnswerID():int
    {
      return _relatedAnswerID;
    }
    
    public function get num():int
    {
      return _num;
    }
    
    public function set result(value:Object):void
    {
      _result = value;
    }  
    public function get result():*
    {
      return _result;
    }  
    
    /**
    * Public methods
    */


  }
}