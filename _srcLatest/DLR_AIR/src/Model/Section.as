package Model
{
  import interfaces.em.progress.IProgress;
  import interfaces.em.progress.Progress;
  import interfaces.model.ISection;
  import interfaces.model.IUnit;

  public class Section implements IProgress, ISection
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Section.as
    *
    *  Abstract:
    *     This is class for section
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
    protected var _ID:int;
    protected var _name:String = "";
    protected var _title:String = "";
    protected var _type:String = "";

    protected var _parentUnit:Unit;
    protected var _activityes:Array = new Array();


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
    public function Section(ID:int, name:String, title:String, type:String, unit:Unit = null)
    {
      this._ID = ID;
      this._name = name;
      this._title = title;
      this._type = type;
      this._parentUnit = unit;
    }


    /**
    * Virtuals methods
    */
    public virtual function AsXML():XML
    {
      var xml:XML = <Section></Section>;

      for each (var item:Activity in _activityes)
        if (item.AsXML())
          xml.appendChild(item.AsXML());

     // проверка были ли добавлены Activity
     if (xml.children().length())
     {
       xml.@sectionID = _ID;

       return xml;
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

    public function get type():String
    {
      return _type;
    }

    public function get activities():Array
    {
      return _activityes;
    }

    public function get parentUnit():Unit
    {
      return _parentUnit;
    }
    
    public function get relatedUnit():IUnit
    {
      return _parentUnit;
    }

    public function get progress():Progress
    {
      var contCompleteActivity:int = 0;

      for each (var item:Activity in _activityes)
      {
        contCompleteActivity += item.progress.value;
      }

      return new Progress(contCompleteActivity, _activityes.length);
    }


    /**
    * Public methods
    */
    public function AddActivity(activity:Activity):int
    {
      _activityes.push(activity);

      return _activityes.length;
    }

    public function GetActivityByID(ID:String):Activity
    {
      for each (var activity:Activity in _activityes)
        if (activity.ID == ID)
          return activity;
      return null;
    }
   
   public virtual function serialize():XML
    {
      var serializationSection:XML = <Section />

      // серриализация секции
      serializationSection.@ID = _ID;
      serializationSection.@name = _name;
      serializationSection.@title = _title;
      serializationSection.@type = _type;

      // серриализация коллекциии _activities
//      var activity:Activity =  GetActivityByID(Emc.instance.activityID);
//      var serializationActivity:XML = activity.serialize();
//      
//      if (serializationActivity)
//          serializationSection.appendChild(serializationActivity);           

      for each (var activity:Activity in _activityes)
      {
        var serializationActivity:XML = activity.serialize();

        if (serializationActivity)
          serializationSection.appendChild(serializationActivity);
      }

      // если не удалось серриализовать ни одного активити, то возвращаем null
      if (!serializationSection.children().length())
        serializationSection = null;

      return serializationSection;
    }

    public virtual function deserialize(xml:XML):void
    {
      // проводим десериализацию объектов activity
      for each (var activityNode:XML in xml.children())
      {
        var activity:Activity = getActivityByID(activityNode.@ID);
      
        if (activity)
        {
          activity.deserialize(activityNode);
        }
      }
    } 
    
    public function getActivityByID(activityID:String):Activity
    {
      for each (var activity:Activity in _activityes)
      {
        if (activity.ID.toString() == activityID)
        {
          return activity;
        }
      }

      return null;
    }
    
  }
}