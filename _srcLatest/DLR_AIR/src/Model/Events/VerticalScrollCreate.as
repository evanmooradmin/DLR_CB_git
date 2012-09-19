package Model.Events
{
  import flash.events.Event;
  
  import mx.events.FlexEvent;

  public class VerticalScrollCreate extends FlexEvent
  {
      /***************************************************************
      *
      *  Module Name:
      *     
      *
      *  Abstract:
      *     
      *     
      *  Author:
      *     Ruban Sergey   
      *
      *  Revision History:
      *
      ***************************************************************/
          
          
      /**
      * Static
      */
      public static const VERCTICAL_SCROLL_CREATE:String = "VerticalScrollCreate";
      
      /**
      * Private members/properties
      */
      
      
      /**
      * Private methods
      */
      // Переменная отображдает есть ли ветикальный скрол или нет 
       private var _isCreate:Boolean = false;     
          
      /**
      * Events handler
      */
          
          
      /** 
      * Initialization
      */
          
          
      /**
      * Constructor 
      */
       public function VerticalScrollCreate(type:String, isCreate:Boolean, bubbles:Boolean=false, cancelable:Boolean=false)
       {
          super(type, bubbles, cancelable);
          this._isCreate = isCreate; 
       }
      
      /**
      * Virtuals methods
      */
      
      public override function clone():Event
      {
        return new VerticalScrollCreate(type, isCreate, bubbles, cancelable);
      }
          
      /**
      * Public members/properties
      */
      public function get isCreate():Boolean
      {
        return this._isCreate;
      }
      
      /**
      * Public methods
      */
    
   
    
  }
}