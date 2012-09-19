package Controls.Decorators
{
  import Controls.PromptControls.PromptControl;
  
  import Model.EmbededData;
  import Model.Prompts.ActivityGraphic;
  
  import mx.containers.Canvas;
  import mx.containers.VBox;
  import mx.controls.Image;
  import mx.core.ScrollPolicy;
  import mx.core.UIComponent;
  import mx.events.FlexEvent;
  import mx.events.ResizeEvent;

  public class ActivityGraphicDecorator extends Decorator
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
      private var _backgroundImage:ActivityGraphic;
      private var _image:Image;
      private var _imageContainer:Canvas;
      
      
      /**
      * Private methods
      */
      private function creationComponent():void
      {
        this._imageContainer.maxWidth = this._imageContainer.width;
        this._imageContainer.maxHeight = this._imageContainer.height;
    
        if (this._component.getContent().length != 0)
        {
           var vBox:VBox = new VBox();
           
           vBox.verticalScrollPolicy = ScrollPolicy.OFF;
           vBox.horizontalScrollPolicy = ScrollPolicy.OFF;
           //Смещаем контейнер с текстом 
           vBox.x = this._backgroundImage.HorizontalTextPosition;
           vBox.y = this._backgroundImage.VerticalTextPosition;
           //Устанавливаем контейнеру который содердит промпты ширенцу согласно его положение по координатам и отступу из xml
           vBox.width =  this._imageContainer.width - vBox.x - this._backgroundImage.PaddingRight;
           //ПОФИКСИТЬ ПАДИНГ СНИЗУ!!!!!!!!!!!!!!!!!!! ЗАПИЛИНО
           vBox.height = this._imageContainer.height - vBox.y - 20 ;
         
           for each (var item:UIComponent in this._component.getContent())
           {
              item.width = vBox.width;
              item.height = vBox.height;
              vBox.addChild(item);
           }
           this._imageContainer.addChild(vBox); 
        } 
      }
      
      /**
      * Events handler
      */
      private function creationCompleteComponentHandler(event:FlexEvent):void
      {
        if (_image.width == 0)
             _image.addEventListener(ResizeEvent.RESIZE, resizeImageHamdler);
        else
        {
            _image.removeEventListener(ResizeEvent.RESIZE, resizeImageHamdler);
            creationComponent();
        }  
      }   
     
     
      private function resizeImageHamdler(event:ResizeEvent):void
      {
        this.creationComponent();
      }  
      
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
          
      /** 
      * Initialization
      */
          
          
      /**
      * Constructor 
      */
       public function ActivityGraphicDecorator(component:PromptControl, backgroundImage:ActivityGraphic)
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
       
          this._component.verticalScrollPolicy = ScrollPolicy.OFF;
          this._component.horizontalScrollPolicy = ScrollPolicy.OFF;  
          this._imageContainer = new Canvas();
          this._imageContainer.x = this._backgroundImage.HorisontalPosition;
          this._imageContainer.y = this._backgroundImage.VerticalPosition;
          this._imageContainer.verticalScrollPolicy = ScrollPolicy.OFF;
          this._imageContainer.horizontalScrollPolicy = ScrollPolicy.OFF;
          this._component.addChild(_imageContainer);
          this._imageContainer.addChild(_image);
          this._component.addEventListener(FlexEvent.CREATION_COMPLETE, creationCompleteComponentHandler);
          
          _component.addChild(_disabledCanvas);
          _disabledCanvas.addEventListener(FlexEvent.UPDATE_COMPLETE, UpdateComplete_disablesCanvasHandler);
       } 
       
       public override function Disable():void
       {
         _imageContainer.enabled = false;
       }
       
       public override function Enable():void
       {
         _imageContainer.enabled = true;
       }
          
      /**
      * Public members/properties
      */
      
      /**
      * Public methods
      */
     
    
  }
}