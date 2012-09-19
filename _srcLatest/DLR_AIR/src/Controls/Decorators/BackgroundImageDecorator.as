package Controls.Decorators
{
  import Controls.ActivityControl;
  import Controls.Enviroment.HeaderControl;
  import Controls.FlowBox.FlowBox;
  import Controls.PromptControls.PromptControl;
  
  import Model.EmbededData;
  import Model.Prompts.BackgroundImage;
  
  import flash.geom.Point;
  
  import mx.controls.Image;
  import mx.core.ScrollPolicy;
  import mx.core.UIComponent;
  import mx.events.FlexEvent;
  import mx.events.ResizeEvent;

  public class BackgroundImageDecorator extends Decorator
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
      //Запилино потому что если сделать приложение шире то картинки неправельно расспалагаються в некоторых случяаях
      //и над оменять xml
      private static var MAX_WIDTH:int = 780;

      /**
      * Private members/properties
      */
      private var _backgroundImage:BackgroundImage;
      private var _image:Image;


      /**
      * Private methods
      */
      private function creationCompleteComponentHandler(event:FlexEvent):void
      {
        if (_image.width == 0)
             _image.addEventListener(ResizeEvent.RESIZE, resizeImageHamdler);
        else
        {
            _image.removeEventListener(ResizeEvent.RESIZE, resizeImageHamdler);
            this.imagePosition();
        }
      }

      private function resizeImageHamdler(event:ResizeEvent):void 
      {
        this.imagePosition();
      }

      private function ResizeChildrenForLeft(control:UIComponent, globalImagePoint:Point):void
      {
        var localPoint:Point;
        for (var i:int = 0; i < control.numChildren; i++)
        {
          if (control.getChildAt(i) is UIComponent)
          {
            var children:UIComponent = control.getChildAt(i) as UIComponent;
            localPoint = children.parent.globalToLocal(globalImagePoint);
            if (children is FlowBox)
            {
               children.width = Math.abs(children.x - localPoint.x);
               children.maxWidth = Math.abs(children.x - localPoint.x);
            }
            else
            {
              children.maxWidth = Math.abs(children.x - localPoint.x);
              if (children is HeaderControl)
              {
                  children.width = Math.abs(children.x - localPoint.x);
                  continue;
              }
            }
            ResizeChildrenForLeft(children, globalImagePoint);
          }
        }
      }

       private function ResizeChildrenForRight(control:UIComponent, globalImagePoint:Point):void
      {
        var localPoint:Point;
        for (var i:int = 0; i < control.numChildren; i++)
        {
          if (control.getChildAt(i) is UIComponent)
          {
            var children:UIComponent = control.getChildAt(i) as UIComponent;
            localPoint = children.parent.globalToLocal(globalImagePoint);
            if (children is FlowBox)
                children.width = MAX_WIDTH - 50 - (this._image.width + localPoint.x);
            else
                children.maxWidth = MAX_WIDTH - 50 - (this._image.width + localPoint.x); //Math.abs(children.x - localPoint.x);

            ResizeChildrenForRight(children, globalImagePoint);
          }
        }
      }
      private function imagePosition():void
      {
        var globalPoint:Point = this._component.localToGlobal(new Point(_image.x, _image.y));

        if (_image.x > MAX_WIDTH/2)
        {
            for each (var item:UIComponent in this._component.getContent())
              ResizeChildrenForLeft(item, globalPoint);
        }
        else
        {
         for each (item in this._component.getContent())
          {
            var localPoint:Point = item.parent.globalToLocal(globalPoint);
            //Сдвигаем контрол вправо и контрол не являеться картинкой от которой делаем left
            if (item != this._image)
            {
                item.setStyle('left', this._image.width + localPoint.x);
                //Уменьшаем длину контрола
                ResizeChildrenForRight(item, globalPoint);
            }
          }
        }
      }


      /**
      * Events handler
      */
      private function UpdateComplete_disablesCanvasHandler(event:FlexEvent):void
      {
        if (_image)
        {
          _disabledCanvas.x = _image.x;
          _disabledCanvas.y = _image.y;
          _disabledCanvas.width = _image.width;
          _disabledCanvas.height = _image.height;
        }
      }

      private function UpdateComplete_componentHandler(event:FlexEvent):void
      {
        _image.y = this._backgroundImage.VerticalPosition + _component.paddingTop;
      }


      /**
      * Initialization
      */


      /**
      * Constructor
      */
       public function BackgroundImageDecorator(component:PromptControl, backgroundImage:BackgroundImage)
       {
         super(component);
         this._backgroundImage = backgroundImage;
       }

      /**
      * Virtuals methods
      */
       public override function Build():void
       {
          _image = new Image();
          _image.source = EmbededData.inctance[EmbededData.img + this._backgroundImage.Image];
          _image.x = this._backgroundImage.HorisontalPosition;
          _image.y = this._backgroundImage.VerticalPosition + _component.paddingTop;
          this._component.verticalScrollPolicy = ScrollPolicy.OFF;
          this._component.horizontalScrollPolicy = ScrollPolicy.OFF;
          this._component.addChild(_image);
          this._component.addEventListener(FlexEvent.CREATION_COMPLETE, creationCompleteComponentHandler);
          this._component.addEventListener(FlexEvent.UPDATE_COMPLETE, UpdateComplete_componentHandler);

          _component.addChild(_disabledCanvas);
          _disabledCanvas.addEventListener(FlexEvent.UPDATE_COMPLETE, UpdateComplete_disablesCanvasHandler);
       }

       public override function Disable():void
       {
         _disabledCanvas.enabled = false;
       }

       public override function Enable():void
       {
         _disabledCanvas.enabled = true;
       }

      public override function Refresh():void
      {
        imagePosition();
      }


      /**
      * Public members/properties
      */



      /**
      * Public methods
      */


  }
}