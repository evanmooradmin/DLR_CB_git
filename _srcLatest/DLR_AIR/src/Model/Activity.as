package Model
{
  import Model.Answers.Answer;
  import Model.Prompts.ActivityGraphic;
  import Model.Prompts.BackgroundImage;
  import Model.Prompts.Prompt;
  
  import interfaces.IBasePrompt;
  import interfaces.em.progress.IProgress;
  import interfaces.em.progress.Progress;
  import interfaces.model.IActivity;
  import interfaces.model.ISection;

  public class Activity implements IProgress, IActivity
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Activity.as
    *
    *  Abstract:
    *     This is class for activity
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
    protected var _ID:String;
    protected var _name:String = "";
    protected var _relatedSectionID:int;
    protected var _title:String = "";
    protected var _page:int;
    protected var _num:int;
    protected var _showNum:Boolean;

    protected var _date:Date;
    protected var _parentSection:Section;
    protected var _prompts:Array = new Array();
    protected var _multipleChoiceCascading:Boolean = false 
     
    
    //ВРЕМЕННАЯ ПЕРЕМЕННАЯ. КОГДА ОТПРАВЛЯЕМ ОТЧЕТ СТАВИМ В true И ПРИ ПОВТОРНОМ ЗАХОДЕ В ЭТОТ УРОК УЖЕ ПРОИЗОВДИМ НЕ
    //ОТПРАВКУ ОТЧЕТА А ЗАГРУЗКУ   
    public var isNeedDeserialize:Boolean = false;
    
    /**
    * Private methods
    */
    // рекурсивно проходим по всей иерархии Prompts
    private function FindAnswer(prompt:Prompt, answerID:int):Answer
    {
      var childPrompts:Array = prompt.ChildPrompts();
      var answer:Answer;

      if (childPrompts)
      {
        for each (var item:Prompt in childPrompts)
        {
          answer = FindAnswer(item, answerID);
          if (answer)
            return answer;
        }
      }
      else if (prompt.ChildAnswers())
      {
        for each (var childAnswer:Answer in prompt.ChildAnswers())
          if (childAnswer.ID == answerID)
            return childAnswer;
      }

      return null;
    }


    /**
    * Events handler
    */


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function Activity(ID:String, name:String, relatedSectionID:int, title:String, page:int, num:int, showNum:Boolean,
      section:Section = null)
    {
      this._ID = ID;
      this._name = name;
      this._relatedSectionID = relatedSectionID;
      this._title = title;
      this._page = page;
      this._num = num;
      this._showNum = showNum;
      this._parentSection = section;
    }


    /**
    * Virtuals methods
    */
    public virtual function AsXML():XML
    {
      if (_date)
      {
        var xml:XML = <Activity></Activity>;

        xml.@year = _date.fullYear;
        xml.@month = _date.month;
        xml.@day = _date.date;

        xml.@activityID = _ID;

        return xml;
      }

      return null;
    }


    /**
    * Public members/properties
    */
    public function get ID():String
    {
      return _ID;
    }

    public function get name():String
    {
      return _name;
    }

    public function get relatedSectionID():int
    {
      return _relatedSectionID;
    }

    public function get title():String
    {
      return _title;
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

    public function get prompts():Array
    {
      return _prompts;
    }

    public function get parentSection():Section
    {
      return _parentSection;
    }
    
    public function get relatedSection():ISection
    {
      return _parentSection;
    }

    public function get date():Date
    {
      return _date;
    }
    public function set date(value:Date):void
    {
      _date = value;
    }

    public function get dateAsString():String
    {
      if (_date)
        return _date.date.toString() + "/" + _date.month.toString() + "/" + _date.fullYear.toString();
      return "";
    }

    public function get weekAsString():String
    {
      return _parentSection.parentUnit.title;
    }

    public function get countChildPrompts():int
    {
      var count:int = 0;

      for each (var item:Prompt in _prompts)
        count += item.countChildPrompts;

      return count;
    }

    public function get progress():Progress
    {
      return _date ? new Progress(1, 1) : new Progress(0, 1);
    }


    /**
    * Public methods
    */
    public function AddPrompt(prompt:Prompt):int
    {
      // this is child prompt
      if (prompt.relatedPromptID != 0)
      {
        var parentPrompt:Prompt = GetPromptByID(prompt.relatedPromptID);

        // find parent prompt
        if (parentPrompt != null)
        {
            if (prompt is BackgroundImage)
                parentPrompt.AddBackgroungImage(prompt as BackgroundImage);
            else if (prompt is ActivityGraphic)
                    parentPrompt.AddActivityGraphic(prompt as ActivityGraphic);
            else
                parentPrompt.AddPrompt(prompt);
        }
      }
      else
        _prompts.push(prompt);

      return _prompts.length;
    }

    public function AddAnswer(answer:Answer):void
    {
      if (answer == null)
          return;

      // если указан родительский Answer то пытаемся найти его и добавить в него answer
      if (answer.relatedAnswerID)
      {
        var relatedAnswer:Answer = GetAnswerByID(answer.relatedAnswerID);

        if (relatedAnswer)
          relatedAnswer.AddAnswer(answer);
      }
      else
      {
        var prompt:Prompt = GetPromptByID(answer.relatedPromptID);

        if (prompt != null)
          prompt.AddAnswer(answer);
      }
    }

    public function GetAnswerByID(ID:int):Answer
    {
      var childAnswer:Array;
      var answer:Answer;
      for each (var prompt:Prompt in _prompts)
      {
        answer = FindAnswer(prompt, ID);

        if (answer)
          return answer;
      }

      return null;
    }

    public function GetPromptByID(ID:int):Prompt
    {
       var resultPrompt:Prompt;
       for each (var prompt:Prompt in _prompts)
       {
         prompt = FindPrompt(prompt, ID);

        if (prompt)
          return prompt;
       }
       return null;
    }


    // рекурсивно проходим по всей иерархии Prompts
    private function FindPrompt(prompt:Prompt, promptID:int):Prompt
    {
      var childPrompts:Array = prompt.ChildPrompts();
      var prompt:Prompt;
      if (prompt.ID == promptID)
      {
         return prompt;
      }
      else if (childPrompts && childPrompts.length != 0)
           {
               for each (var item:Prompt in childPrompts)
               {
                  prompt = FindPrompt(item, promptID);
                  if (prompt)
                     return prompt;
               }
           }
          else  if (prompt.ID == promptID)
          {
                return prompt;
          }

      return null;
    }

   public virtual function serialize():XML
    {
      var serializationActivity:XML;

      // серриализируем тока при условии что есть _date, дата обновляеться в главном апликейшене после того как мы прошли урок
     //  _date = new Date();
       if (_date)
       {
        isNeedDeserialize = true; 
         
        serializationActivity = <Activity/>;

        // серриализация Activity
        serializationActivity.@ID = _ID;
        serializationActivity.@name = _name;
        serializationActivity.@title = _title;
        serializationActivity.@page = _page;
        serializationActivity.@num = _num;
        serializationActivity.@showNum = _showNum ? "True" : "False";
        serializationActivity.@relatedSectionID = _relatedSectionID;
       
      
      
        // сохраняем так-же дату
        serializationActivity.@year = _date.fullYear;
        serializationActivity.@month = _date.month;
        serializationActivity.@date = _date.date;

        // цикл по дочерним компонентам
        for each (var item:Prompt in _prompts)
        {
          // цикл по ВСЕМ компонентам дочернего объекта
          for each (var component:IBasePrompt in item.getAllLeafComponents())
          {
            var serializationPrompt:XML = component.serialize();

            if (serializationPrompt)
              serializationActivity.appendChild(serializationPrompt);
          }
        }
      }

      return serializationActivity;
    }

    public virtual function deserialize(xml:XML):void
    {
     isNeedDeserialize = false; 
     
      _date = new Date(xml.@year, xml.@month, xml.@date);
      
      // проводим десериализацию для коллекции _components
      for each (var componentNode:XML in xml.children())
      {
        var component:IBasePrompt = getComponentByID(componentNode.@ID);
        if (component)
            component.deserialize(componentNode);
      }
    } 

    // поис объекта Component по его ID
    public function getComponentByID(componentID:int):IBasePrompt
    {
      var component:IBasePrompt

      for each (var item:IBasePrompt in _prompts)
      {
        component = item.getByID(componentID);

        if (component)
          return component;
      }

      return null;
    }

    // search prompt by id in _prompts and in child prompts
//    public function GetPromptByID(ID:int):Prompt
//    {
//      var childPrompts:Array;
//
//      for each (var prompt:Prompt in _prompts)
//      {
//        childPrompts = prompt.ChildPrompts();
//
//        // there are exist child prompts in prompt
//        if (childPrompts != null)
//        {
//          for each (var childPrompt:Prompt in childPrompts)
//            if (childPrompt.ID == ID)
//              return childPrompt;
//        }
//        if (prompt.ID == ID)
//          return prompt;
//      }
//      return null;
//    }


  }
}