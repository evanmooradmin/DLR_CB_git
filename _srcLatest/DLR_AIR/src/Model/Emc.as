package Model
{
  import Model.Answers.Answer;
  import Model.Answers.ClozeSentenceAnswer;
  import Model.Answers.FillInTheBlanksAnswer;
  import Model.Answers.FixCapitalsAnswer;
  import Model.Answers.MatchingAnswer;
  import Model.Answers.MultipleAnswer;
  import Model.Answers.SentenceEvaluationAnswer;
  import Model.Answers.SingleAnswer;
  import Model.Answers.SortingAnswer;
  import Model.Answers.SortingImage;
  import Model.Answers.VariantCascadingAnswer;
  import Model.Answers.VariantORAnswer;
  import Model.Answers.YesOrNoAnswer;
  import Model.Prompts.ActivityDirections;
  import Model.Prompts.ActivityGraphic;
  import Model.Prompts.ActivityMatching;
  import Model.Prompts.BackgroundImage;
  import Model.Prompts.CloseSentence;
  import Model.Prompts.ContainerOneByOne;
  import Model.Prompts.Corrected;
  import Model.Prompts.DrawingArea;
  import Model.Prompts.FillInTheBlanks;
  import Model.Prompts.FixCapitals;
  import Model.Prompts.Matching;
  import Model.Prompts.MultipleChoice;
  import Model.Prompts.MultipleChoiceCascading;
  import Model.Prompts.Open_endedWritingPrompt;
  import Model.Prompts.Prompt;
  import Model.Prompts.ReadingAssignment;
  import Model.Prompts.RewriteSentence;
  import Model.Prompts.SentenceEvaluation;
  import Model.Prompts.Sorting;
  import Model.Prompts.SortingGraphics;
  import Model.Prompts.YesOrNo;
  import Model.Security.EmcMapAndVersion;
  import Model.Security.LocalStore;
  
  import flash.filesystem.File;
  import flash.filesystem.FileMode;
  import flash.filesystem.FileStream;
  
  import interfaces.em.progress.IProgress;
  import interfaces.em.progress.Progress;
  import interfaces.model.IEmc;

  public class Emc implements IProgress, IEmc
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Emc.as
    *
    *  Abstract:
    *     This is class for emc
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
    private static var _instance:Emc;
    
    //ВРЕМЕННО ДЛЯ ТЕСТИРОВАНИЯ ЗАГРУЗКИ ИЗ XML
  //  public static var serializationEmc:XML = <Emc/>;
    
    public static function get instance():Emc
    {
      if (!_instance)
         _instance = new Emc();

      return _instance;
    }

    /**
    * Private members/properties
    */
    protected var _ID:int;
    protected var _name:String = "";
    protected var _title:String = "";
    protected var _version:String;

    protected var _units:Array = new Array();
    protected var _activityes:Array;    // масив всех активити
    
   
      
    /**
    * Private methods
    */
    private function AddUnit(unit:Unit):int
    {
      _units.push(unit);

      return _units.length;
    }

    private function Parce(emcXML:XML):void
    {
      //Обнуляем масив Unit
      _units = [];
      //Обнуляем масив Activityes
      _activityes = [];
      this._ID = emcXML.@emcID;
      this._name = emcXML.@name;
      this._title = emcXML.@title;
      this._version = emcXML.@version;

      for each (var unitXML:XML in emcXML.children())
      {
        var unit:Unit = new Unit(unitXML.@unitID, unitXML.@name, unitXML.@title, unitXML.@relatedEMCId, this);

        for each (var sectionXML:XML in unitXML.children())
        {
          var section:Section = new Section(sectionXML.@sectionID, sectionXML.@name, sectionXML.@title, sectionXML.@type,
            unit);

          for each (var activityXML:XML in sectionXML.children())
          {
            var showNum:Boolean = false;

            if (activityXML.@showNum == "True")
              showNum = true;

              var activity:Activity = new Activity(unitXML.@unitID + sectionXML.@sectionID + activityXML.@activityID,
              activityXML.@name, activityXML.@relatedSectionID, activityXML.@title, activityXML.@page, activityXML.@num, showNum,
              section);

            for each (var promptXML:XML in activityXML.children())
            {
              if (promptXML.name() == "Prompt")
              {
                var prompt:Prompt;

                showNum = false; 
                if (promptXML.@showNum == "True")
                  showNum = true;

                if (promptXML.@PromptID == 4674)
                  var i:int = 0;

                if (promptXML.@type == Prompt.MULTIPLE_CHOICE)
                  prompt = new MultipleChoice(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum,
                    promptXML.@relatedActivityID, promptXML.@cascading, promptXML, promptXML.@relatedPromptID, activity);

                else if (promptXML.@type == Prompt.ACTIVITY_DIRECTIONS)
                  prompt = new ActivityDirections(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum,
                    promptXML.@relatedActivityID, promptXML.@cascading, promptXML, promptXML.@relatedPromptID, activity);

                else if (promptXML.@type == Prompt.OPENENDED_WRITING_PROMPT)
                  prompt = new Open_endedWritingPrompt(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum,
                    promptXML.@relatedActivityID, promptXML.@cascading, promptXML, promptXML.@AnswersWillVary, promptXML.@relatedPromptID, activity);

                else if (promptXML.@type == Prompt.MATCHING)
                  prompt = new Matching(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum,
                    promptXML.@relatedActivityID, promptXML.@cascading, promptXML, promptXML.@relatedPromptID, activity);

                else if (promptXML.@type == Prompt.REWRITE_SENTENCE)
                  prompt = new RewriteSentence(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum,
                    promptXML.@relatedActivityID, promptXML.@cascading, promptXML, promptXML.@Answer, promptXML.@relatedPromptID,
                    activity);

                else if (promptXML.@type == Prompt.YES_OR_NO)
                  prompt = new YesOrNo(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum,
                    promptXML.@relatedActivityID, promptXML.@cascading, promptXML, promptXML.@relatedPromptID, activity);

                else if (promptXML.@type == Prompt.FILL_IN_THE_BLANKS)
                {
                  var isHorizontal:Boolean = (promptXML.@isHorisontal == "True") ? true : false;
                  prompt = new FillInTheBlanks(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum,
                    promptXML.@relatedActivityID, promptXML.@cascading, promptXML, promptXML.@Answer, isHorizontal,
                    promptXML.@relatedPromptID, activity);
                }
                else if (promptXML.@type == Prompt.SORTING)
                  prompt = new Sorting(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum,
                    promptXML.@relatedActivityID, promptXML.@cascading, promptXML, promptXML.@relatedPromptID, activity);

                else if (promptXML.@type == Prompt.READING_ASSIGNMENT)
                  prompt = new ReadingAssignment(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum,
                    promptXML.@relatedActivityID, promptXML.@cascading, promptXML, promptXML.@relatedPromptID, activity);

                else if (promptXML.@type == Prompt.FIX_CAPITALS)
                  prompt = new FixCapitals(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum, promptXML.@relatedActivityID,
                       promptXML.@cascading, promptXML, promptXML.@Answer, promptXML.@relatedPromptID, activity);

                else if (promptXML.@type == Prompt.SENTENCE_EVALUATION)
                  prompt = new SentenceEvaluation(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum, promptXML.@relatedActivityID,
                       promptXML.@cascading, promptXML, promptXML.@Answer, promptXML.@relatedPromptID, activity);

                else if (promptXML.@type == Prompt.DRAWING_AREA)
                  prompt = new DrawingArea(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum, promptXML.@relatedActivityID,
                       promptXML.@cascading, promptXML, promptXML.@relatedPromptID, activity);

                else if (promptXML.@type == Prompt.SORTING_GRAPHICS)
                  prompt = new SortingGraphics(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum, promptXML.@relatedActivityID,
                       promptXML.@cascading, promptXML, promptXML.@relatedPromptID, activity);

                else if (promptXML.@type == Prompt.ACTIVITY_MATCHING)
                  prompt = new ActivityMatching(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum, promptXML.@relatedActivityID,
                       promptXML.@cascading, promptXML, promptXML.@relatedPromptID, activity);

                else if (promptXML.@type == Prompt.CLOSE_SENTENCE)
                  prompt = new CloseSentence(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum, promptXML.@relatedActivityID,
                       promptXML.@cascading, promptXML, promptXML.@Answer, promptXML.@relatedPromptID, activity);

                else if (promptXML.@type == Prompt.CORRECTED)
                  prompt = new Corrected(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum, promptXML.@relatedActivityID,
                       promptXML.@cascading, promptXML, promptXML.@relatedPromptID, activity);

                else if (promptXML.@type == Prompt.MULTIPLE_CHOICE_CASCADING)
                  prompt = new MultipleChoiceCascading(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum, promptXML.@relatedActivityID,
                      promptXML.@cascading, promptXML, promptXML.@relatedPromptID, activity);

                else if (promptXML.@type == Prompt.BACKGROUND_IMAGE)
                  prompt = new BackgroundImage(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum, promptXML.@image,
                      promptXML.@verticalPosition, promptXML.@relatedActivityID, promptXML.@horisontalPosition, promptXML.@rigth, promptXML.@relatedPromptID, activity);

                else if (promptXML.@type == Prompt.ACTIVITY_GRAPHIC)
                  prompt = new ActivityGraphic(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum, promptXML.@image,
                      promptXML.@verticalPosition, promptXML.@relatedActivityID, promptXML.@horizontalPosition, promptXML.@horizontalTextPosition, promptXML.@verticalTextPosition, promptXML.@paddingRight,promptXML.@paddingLeft, promptXML.@relatedPromptID, activity);

                else if (promptXML.@type == Prompt.CONTAINER_ONE_BY_ONE)
                  prompt = new ContainerOneByOne(promptXML.@PromptID, promptXML.@page, promptXML.@num, showNum, promptXML.@relatedActivityID,
                       promptXML.@cascading, promptXML, promptXML.@relatedPromptID, activity);


                // add other prompt tepes here

                activity.AddPrompt(prompt);
              }
              else if (promptXML.name() == "Answer")
              {
                var answer:Answer = null;
                var isCorrect:Boolean = false;
               
                if (promptXML.@isCorrect == "1")
                  isCorrect = true;
                 
                 //Добапвил это так как иногда answerID задано с маленькой буквы а иногда с большой и проскакивали ID равные 0
                 var answerID:String = promptXML.@answerID; 
                 if (answerID == "")
                     answerID = promptXML.@AnswerID;
               
                                                                  
                if (promptXML.@type == Answer.SINGLE_ANSWER)
                   answer = new SingleAnswer(int(answerID), promptXML.@relatedPromptID, isCorrect, promptXML.@num,
                      promptXML, promptXML.@VisibleAnswer, promptXML.@relatedAnswerID, activity);
               
                else if (promptXML.@type == Answer.MATCHING)
                  answer = new MatchingAnswer(int(answerID), promptXML.@relatedPromptID, isCorrect, promptXML.@num,
                      promptXML.@Source, promptXML, promptXML.@Answer, promptXML.@relatedAnswerID, activity);

                else if (promptXML.@type == Answer.YES_OR_NO)
                  answer = new YesOrNoAnswer(int(answerID), promptXML.@relatedPromptID, isCorrect, promptXML.@num,
                      promptXML, promptXML.@relatedAnswerID, activity);

                else if (promptXML.@type == Answer.MULTIPLE_ANSWERS)
                  answer = new MultipleAnswer(int(answerID), promptXML.@relatedPromptID, isCorrect, promptXML.@num,
                      promptXML,  promptXML.@VisibleAnswer, promptXML.@relatedAnswerID, activity);

                else if (promptXML.@type == Answer.FILL_IN_THE_BLANKS)
                  answer = new FillInTheBlanksAnswer(int(answerID), promptXML.@relatedPromptID, isCorrect, promptXML.@num,
                      promptXML.@Answer, promptXML, promptXML.@relatedAnswerID, activity);

                else if (promptXML.@type == Answer.VARIANT_OR)
                  answer = new VariantORAnswer(int(answerID), promptXML.@relatedPromptID, isCorrect, promptXML.@num,
                    promptXML,promptXML.@groupID, promptXML.@relatedAnswerID, activity);

                else if (promptXML.@type == Answer.SORTING)
                  answer = new SortingAnswer(int(answerID), promptXML.@relatedPromptID, isCorrect, promptXML.@num, promptXML,
                    promptXML.@Answer, promptXML.@relatedAnswerID, activity);

                else if (promptXML.@type == Answer.FIX_CAPITALS)
                  answer = new FixCapitalsAnswer(int(answerID), promptXML.@relatedPromptID, isCorrect, promptXML.@num, promptXML,
                      promptXML.@Answer, promptXML.@relatedAnswerID, activity);

                else if (promptXML.@type == Answer.SENTENCE_EVALUATION)
                  answer = new SentenceEvaluationAnswer(int(answerID), promptXML.@relatedPromptID, isCorrect, promptXML.@num,
                      promptXML, promptXML.@relatedAnswerID, activity);

                else if (promptXML.@type == Answer.SORTING_IMAGE)
                  answer = new SortingImage(int(answerID), promptXML.@relatedPromptID, isCorrect, promptXML.@num, promptXML,
                      promptXML.@Source, promptXML.@Answer, promptXML.@relatedAnswerID, activity);

                else if (promptXML.@type == Answer.VARIANT_CASCADING)
                  answer = new VariantCascadingAnswer(int(answerID), promptXML.@relatedPromptID, isCorrect, promptXML.@num,
                      promptXML, promptXML.@Answer, promptXML.@previewString, promptXML.@relatedAnswerID, activity);

                else if (promptXML.@type == Answer.CLOZE_SENTENCE)
                  answer = new ClozeSentenceAnswer(int(answerID), promptXML.@relatedPromptID, isCorrect, promptXML.@num,
                      promptXML, promptXML.@relatedAnswerID, activity);

                // add other answer tepes here

                if (answer)
                  activity.AddAnswer(answer);
              }
            }

            section.AddActivity(activity);
          }

          unit.AddSection(section);
        }

        AddUnit(unit);

        // если версия триальная то будем использовать только 1 неделю
        if (EmcMapAndVersion.isTrial)
          break;
      }
     // deserialize();
      LoadResults();
    }

    private function GetUnitByID(ID:int):Unit
    {
      for each (var unit:Unit in _units)
        if (unit.ID == ID)
          return unit;

      return null;
    }
    
    //Передаем ID Activity и получаем Unit
    private function GetUnitByActivity(activity:Activity):Unit
    {
      for each (var unit:Unit in _units)
      {
        for each (var item:Activity in unit.activitys) 
           if (item == activity)
            return  unit;
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
    public function Emc()
    {
       _instance = this;
    }


    /**
    * Virtuals methods
    */
    public virtual function AsXML():XML
    {
      var xml:XML = <Emc></Emc>;

      for each (var item:Unit in _units)
        if (item.AsXML())
          xml.appendChild(item.AsXML());

      if (xml.children().length())
      {
        xml.@emcID = _ID;

        return xml;
      }

      return null;
    }
    
    public virtual function serialize():XML
    {
     var serializationEmc:XML = <Emc/>;
      
      // серриализация emc
      serializationEmc.@ID = _ID; 
      serializationEmc.@name = _name;
      serializationEmc.@title = _title;
      serializationEmc.@version = _version;
      
//      var unit:Unit = GetUnitByActivity(activity);
//      var serializationUnit:XML = unit.serialize();
//   
//      if (serializationUnit)
//           serializationEmc.appendChild(serializationUnit);
//      
//      if (!serializationEmc.children().length())
//          serializationEmc = null;
//
//      return serializationEmc;
        
      for each (var unit:Unit in _units)
      {
        var serializationUnit:XML = unit.serialize();

        if (serializationUnit)
          serializationEmc.appendChild(serializationUnit);
      }

      if (!serializationEmc.children().length())
        serializationEmc = null;

      return serializationEmc;
    }

    public virtual function deserialize(xml:XML):void
    {
      
    // for each (var unitNode:XML in xml.children())
      for each (var unitNode:XML in xml.children())
      {
        var unit:Unit = getUnitByID(unitNode.@ID);

        if (unit)
        {
          unit.deserialize(unitNode);
        }
      }
    } 
    
    public function getUnitByID(unitID:int):Unit
    {
      for each (var unit:Unit in _units)
      {
        if (unit.ID == unitID)
        {
          return unit;
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

    public function get name():String
    {
      return _name;
    }

    public function get title():String
    {
      return _title;
    }

    public function get units():Array
    {
      return _units;
    }

    public function get version():String
    {
      return _version;
    }

    public function get activityes():Array
    {
      if (!_activityes || _activityes.length == 0)
      {
        _activityes = new Array();

        for each (var unit:Unit in _units)
          for each (var section:Section in unit.sections)
            _activityes = _activityes.concat(section.activities);
      }

      return _activityes;
    }

    public function get progress():Progress
    {
      var unitProgressTotal:int = 0;
      var countActivity:int = 0;
      var currentProgress:Progress;

      for each (var item:Unit in _units)
      {
        currentProgress = item.progress;
        unitProgressTotal += currentProgress.value;
        countActivity += currentProgress.total;
      }

      return new Progress(unitProgressTotal, countActivity);
    }


    /**
    * Public methods
    */

    public function LoadXML(xmlPath:String):void
    {

      var file:File;
      file = File.applicationDirectory.resolvePath(xmlPath);
      var fileStream: FileStream = new FileStream();

      if (file.exists == true)
      {
        fileStream.open(file, FileMode.READ);
        Parce(XML(fileStream.readUTFBytes(fileStream.bytesAvailable)));
        fileStream.close();
      }
      else
        throw new Error("XML file is not exist");
    }

    public function Load(xml:XML):void
    {
      Parce(xml);
    }
	
	  public function SaveResults():void
    {
     // LocalStore.inctance.SaveResults(AsXML());
    }
	
    public function LoadResults():void
    {
    	var results:XML = LocalStore.inctance.LoadResults();

    	if (results)
    	{
    	  for each (var xmlUnit:XML in results.children())
    	    for each (var xmlSection:XML in xmlUnit.children())
    	      for each (var xmlActivity:XML in xmlSection.children())
    	      {
    	        var activity:Activity = GetActivityByID(xmlActivity.@activityID)

    	        if (activity)
    	            activity.date = new Date(xmlActivity.@year, xmlActivity.@month, xmlActivity.@day);
    	      }
    	}
    }

    // по ID активити получаем первый не законченный активити
    public function GetNextUnfinishedActivity(activityID:String):Activity
    {
      var _isFound:Boolean = false;

      for each (var activity:Activity in activityes)
      {
        if (activity.ID == activityID)
        {
          _isFound = true;
          continue;
        }
        if (_isFound && !activity.date)
          return activity;
      }

      return null;
    }

    public function GetActivityByID(activityID:String):Activity
    {
    	for each (var unit:Unit in _units)
    	{
    		for each (var activity:Activity in unit.activitys)
    		{
    			if(activity.ID == activityID)
    			{
    				return activity;
    			}
    		}
    	}
    	return null;
    }
    
  }
}