package Controls.Decorators
{
  import Controls.PromptControls.PromptControl;

  import mx.containers.Canvas;

  public class Decorator
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


      /**
      * Private members/properties
      */
      protected var _component:PromptControl;

      protected var _disabledCanvas:Canvas = new Canvas();


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
      public function Decorator(component:PromptControl)
      {
        this._component = component;
      }

      /**
      * Virtuals methods
      */
      public virtual function Build():void
      {

      }

      public virtual function Disable():void
      {
      }

      public virtual function Enable():void
      {
      }

      // принудительно обновняет decorator
      public virtual function Refresh():void
      {
      }


      /**
      * Public members/properties
      */
      public function get Component():PromptControl
      {
        return this._component
      }

      /**
      * Public methods
      */


  }
}