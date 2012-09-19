package Model
{
  import interfaces.em.progress.IProgress;
  import interfaces.em.progress.Progress;
  import interfaces.model.IEmc;
  import interfaces.model.IUnit;

  public class Unit implements IProgress, IUnit
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Unit.as
    *
    *  Abstract:
    *     This is class for unit
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


    /**
    * Private members/properties
    */
    protected var _ID:int;
    protected var _name:String = "";
    protected var _title:String = "";
    protected var _relatedEMCID:int;

    protected var _parentEmc:Emc;
    protected var _sections:Array = new Array();


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
    public function Unit(ID:int, name:String, title:String, relatedEMCID:int, emc:Emc = null)
    {
      this._ID = ID;
      this._name = name;
      this._title = title;
      this._relatedEMCID = relatedEMCID;
      this._parentEmc = emc;
    }


    /**
    * Virtuals methods
    */
    public virtual function AsXML():XML
    {
      var xml:XML = <Unit></Unit>;

      for each (var item:Section in _sections)
        if (item.AsXML())
          xml.appendChild(item.AsXML());

      if (xml.children().length())
      {
        xml.@unitID = _ID;

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

    public function get relatedEMCID():int
    {
      return _relatedEMCID;
    }

    public function get sections():Array
    {
      return _sections;
    }

    // gets all activitys from all sections
    public function get activitys():Array
    {
      var arr:Array = new Array();

      for each (var section:Section in _sections)
        arr = arr.concat(section.activities);

      return arr;
    }

    public function get parentEmc():Emc
    {
      return _parentEmc;
    }
    
    public function get relatedEmc():IEmc
    {
      return _parentEmc;
    }

    public function get progress():Progress
    {
      var sectionProgressTotal:int = 0;      // суммарный прогресс для секций
      var countActivity:int = 0;             // кол-во activity
      var currentProgress:Progress;

      for each (var item:Section in _sections)
      {
        currentProgress = item.progress;
        sectionProgressTotal += currentProgress.value;
        countActivity += currentProgress.total;
      }

      return new Progress(sectionProgressTotal, countActivity);
    }

  
    /**
    * Public methods
    */
    public function AddSection(section:Section):int
    {
      _sections.push(section);

      return _sections.length;
    }

    public function GetSectionByID(ID:int):Section
    {
      for each (var section:Section in _sections)
        if (section.ID == ID)
          return section
      return null;
    }
    
    public virtual function serialize():XML
    {
      var serializationUnit:XML = <Unit/>;

      // серриализация юнита
      serializationUnit.@ID = _ID;
      serializationUnit.@name = _name;
      serializationUnit.@title = _title;
      serializationUnit.@relatedEmcID = relatedEMCID;

      for each (var section:Section in _sections)
      {
        var serializationSection:XML = section.serialize();

        if (serializationSection)
          serializationUnit.appendChild(serializationSection);
      }

      if (!serializationUnit.children().length())
        serializationUnit = null;

      return serializationUnit;
    }

    public virtual function deserialize(xml:XML):void
    {
      for each (var sectionNode:XML in xml.children())
      {
        var section:Section = getSectionByID(sectionNode.@ID);

        if (section)
          section.deserialize(sectionNode);
      }
    }
    
    public function getSectionByID(sectionID:int):Section
    {
      for each (var section:Section in _sections)
      {
        if (section.ID == sectionID)
          return section;
      }

      return null;
    }

  }
}