package Controls.AnswerControls.Containers
{
  import mx.containers.Canvas;
  import mx.core.ScrollPolicy;
  import mx.core.UIComponent;
  import mx.events.ResizeEvent;

  public class DragAnswerControlContainer extends Canvas
  {
          /***************************************************************
      *
      *  Module Name:
      *     
      *
      *  Abstract:
      *     Данный контрол выступает контейнером для DragAnswerControl объекта когда мы добовляем его сюда
      *     он ресайзиться по размерам добавленого внего объекта в  не зависимости есть этот объект 
      *     в данном контроле или нет это нужно чтобы коректно отображался DragAnswerControl при изменение размера шрифтов
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
      private var _control:UIComponent;
      
      /**
      * Private methods
      */
          
          
      /**
      * Events handler
      */
      private function resizeControlHandler(event:ResizeEvent):void
      {
        this.width = _control.width;
        this.height = _control.height;
      }    
          
      /** 
      * Initialization
      */
          
          
      /**
      * Constructor 
      */
      public function DragAnswerControlContainer(control:UIComponent)
      {
       super();
       _control = control;
       this.width = _control.width;
       this.height = _control.height;
     
       this.verticalScrollPolicy = ScrollPolicy.OFF;
       this.horizontalScrollPolicy = ScrollPolicy.OFF;
        
       _control.addEventListener(ResizeEvent.RESIZE, resizeControlHandler); 
      }
      
      /**
      * Virtuals methods
      */
          
          
      /**
      * Public members/properties
      */
      
      
      /**
      * Public methods
      */
   
    
  }
}