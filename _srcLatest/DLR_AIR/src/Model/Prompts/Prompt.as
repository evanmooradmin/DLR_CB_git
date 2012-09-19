  package Model.Prompts
{
  import Model.Activity;
  import Model.Answers.Answer;
  import Model.EnumRegExp;
  import Model.FactoryRegExp;
  
  import interfaces.IBasePrompt;

  public class Prompt implements IBasePrompt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Prompts\Prompt.as
    *
    *  Abstract:
    *     This is base class for all prompts type
    *     Класс реализует интерфейс IBasePrompt. Спомощью данного интерфейса в данном проекте объеденены Prompt и  Answer
    *     это нужно при сохранении данных пользователя 
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
    public static const MULTIPLE_CHOICE:String           = "Multiple-Choice";
    public static const ACTIVITY_DIRECTIONS:String       = "Activity Directions";
    public static const OPENENDED_WRITING_PROMPT:String  = "Open-ended Writing Prompt";
    public static const MATCHING:String                  = "Matching";
    public static const REWRITE_SENTENCE:String          = "Rewrite Sentence";
    public static const YES_OR_NO:String                 = "yes or no";
    public static const FILL_IN_THE_BLANKS:String        = "Fill-in-the-blanks";
    public static const SORTING:String                   = "Sorting";
    public static const READING_ASSIGNMENT:String        = "Reading Assignment";
    public static const FIX_CAPITALS:String              = "Fix Capitals";
    public static const SENTENCE_EVALUATION:String       = "Sentence Evaluation";
    public static const DRAWING_AREA:String              = "Drawing Area";
    public static const SORTING_GRAPHICS:String          = "Sorting Graphics";
    public static const ACTIVITY_MATCHING:String         = "Activity Matching";
    public static const CLOSE_SENTENCE:String            = "Cloze Sentence";
    public static const CORRECTED:String                 = "Corrected";
    public static const MULTIPLE_CHOICE_CASCADING:String = "Multiple-Choice-Cascading";
    public static const BACKGROUND_IMAGE:String          = "Background Image";
    public static const ACTIVITY_GRAPHIC:String          = "Activity Graphic";
    public static const CONTAINER_ONE_BY_ONE:String      = "Container One-by-One";

    public static const separatorPatternString:String = "<\\s*?!\\s*?\\[\\s*?CDATA\\s*?\\[\\s*?<\\s*?WOL\\s*?>\\s*?\\]\\s*?\\]";
    public static const separator:String = "<![CDATA[<WOL>]]";


    /**
    * Private members/properties
    */
    protected var _type:String = "";
    protected var _ID:int;
    protected var _page:int;
    protected var _num:int;
    protected var _showNum:Boolean;
    protected var _relatedActivityID:int;
    protected var _relatedPromptID:int;
    protected var _text:String = "";
    protected var _cascading:int;
    protected var _scoreLeft:String;
    protected var _scoreRight:String;
    
    protected var _backgroundImage:BackgroundImage;
    protected var _activityGraphic:ActivityGraphic;

		protected var _existInsertPlace:Boolean;
    // text to insert place
    protected var _textTo:String = "";
    // text after insert place
    protected var _textAfter:String = "";

    protected var _parentActivity:Activity;
    // ответ указанный пользователем. этот ответ будет серриализоваться
    protected var _result:Object;
    protected var _comment:String;


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

    public function Prompt(type:String, ID:int, page:int, num:int, showNum:Boolean, relatedActivityID:int, cascading:int,
        text:String, relatedPromptID:int = 0, activity:Activity = null)
    {
      this._type = type;
      this._ID = ID;
      this._page = page;
      this._num = num;
      this._text = text;
      this._showNum = showNum;
      this._relatedActivityID = relatedActivityID;
      this._relatedPromptID = relatedPromptID;
      this._parentActivity = activity;
      this._cascading = cascading;

      // удаляем все <br /> в конце строки
      _text = _text.replace(new RegExp("(<\\s*?/{0,1}\\s*?br\\s*?/{0,1}\\s*?>)+$", "g"), "");

      // НЕЛЕЗЬ! УБЬЕТ!
      _text = _text.replace(FactoryRegExp.instance.BR(EnumRegExp.G), "\n");
      ///////////////////////////////////////////////////////////

      _text = _text.replace(FactoryRegExp.instance.EM_start(EnumRegExp.G), FactoryRegExp.I_START);
      _text = _text.replace(FactoryRegExp.instance.EM_finish(EnumRegExp.G), FactoryRegExp.I_FINISH);
      _text = _text.replace(new RegExp('<\\s*?([brup])\\s*?/s*?>','g'),'</$1>');
      //Заменяем все опострофы на ' потому что возникает проблема со шрифтами, не все шрифты умеют коректно отображать
      // остальные апострофы
      _text = _text.replace(new RegExp('[‘’`]','g'),'\'');
     // нормализирукм ковычки
      _text = _text.replace(new RegExp('[“”]','g'),'\"');

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
    public virtual function AddAnswer(answer:Answer):int
    {
      return 0;
    }

    public virtual function AddPrompt(prompt:Prompt):int
    {
      return 0;
    }

    public virtual function ChildPrompts():Array
    {
      return null;
    }

    public virtual function ChildAnswers():Array
    {
      return null;
    }

    public virtual function AddBackgroungImage(prompt:BackgroundImage):int
    {
      return 0;
    }

    public virtual function AddActivityGraphic(prompt:ActivityGraphic):void
    {

    }
    
    // методы серриализации
    // в дочернем класе перегрузить для серриализации _result
    public virtual function serialize():XML
    {
      var serializationObject:XML = <Component>{_text}</Component>
        
     // serializationObject.@type = _type;
      serializationObject.@ID = _ID;
      serializationObject.@relatedPromptID = _relatedPromptID;
     // serializationObject.@num = num;
      if (_scoreLeft != null && FactoryRegExp.trim(_scoreLeft) != "")
          serializationObject.@scoreLeft = _scoreLeft;
      if (_scoreRight != null && FactoryRegExp.trim(_scoreRight) != "")    
          serializationObject.@scoreRight = _scoreRight;
      if (_comment != null && FactoryRegExp.trim(_comment) != "")     
          serializationObject.@comment = _comment;          
      
      if (this._result != null)
          serializationObject.@result = this._result;
        
      return serializationObject;
    }
    
    // в дочернем класе перегрузить для десерриализации _result
    public virtual function deserialize(componentNode:XML):void
    {
      deserializeScore(componentNode);
    }
    
    public virtual function deserializeScore(componentNode:XML):void
    {
       if (componentNode.@scoreLeft != null)
          _scoreLeft = String(componentNode.@scoreLeft); 
       if (componentNode.@scoreRight != null)    
          _scoreRight =  String(componentNode.@scoreRight);
       if (componentNode.@comment != null && componentNode.@comment != "")    
          _comment =  String(componentNode.@comment);       
    }
    
    // пропэрти возвращает кол-во дочерних промптов
    public virtual function get countChildPrompts():int
    {
      if (ChildPrompts())
        return ChildPrompts().length;
      return 1;
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
      
      for each (var item:IBasePrompt in getChildren())
      {
        collection = collection.concat(item.getAllLeafComponents());
      }
      
      return collection;
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
    
    
    public function get type():String
    {
      return _type;
    }

    public function get ID():int
    {
      return _ID;
    }

    public function get page():int
    {
      return _page;
    }

    public function get num():int
    {
      return _num;
    }

    public function get showNum():Boolean
    {
      return _showNum;
    }

    public function get relatedActivityID():int
    {
      return _relatedActivityID;
    }

    public function get text():String
    {
      return _text;
    }

    public function get relatedPromptID():int
    {
      return _relatedPromptID;
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

    public function get cascading():int
    {
      return _cascading;
    }

    public function get backgroundImage():BackgroundImage
    {
      return this._backgroundImage;
    }

    public function get activityGraphic():ActivityGraphic
    {
      return this._activityGraphic;
    }
    
    public function set result(value:Object):void
    {
      _result = value;
    }
    public function get result():*
    {
      return _result;
    }
    
    public function get scoreRight():String
    {
      if (_scoreRight != null && FactoryRegExp.trim(_scoreRight) != "")
          return _scoreRight;
      return null    
    }
    public function set scoreRight(res:String):void
    {
      this._scoreRight = res;
    }
    
    public function get scoreLeft():String
    {
      if (_scoreLeft != null && FactoryRegExp.trim(_scoreLeft) != "")
          return _scoreLeft;
      return null    
    }
    public function set scoreLeft(res:String):void
    {
      this._scoreLeft = res;
    } 
    
   
    public function get comment():String
    {
      if (_comment != null && FactoryRegExp.trim(_comment) != "")
          return _comment;
      return null    
    }
    public function set comment(res:String):void
    {
      this._comment = res;
    }
    
    /**
    * Public methods
    */


  }
}