package Model.Prompts
{
  import Model.Activity;

  public class ActivityGraphic extends Prompt
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
      protected var image:String;
      protected var verticalPosition:int;
      protected var horisontalPosition:int;
      protected var horizontalTextPosition:int;
      protected var verticalTextPosition:int;   
      protected var paddingRight:int;
      protected var paddingLeft:int;
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
       public function ActivityGraphic(ID:int, page:int, num:int, showNum:Boolean, image:String, verticalPosition:int, relatedActivityID:int, horisontalPosition:int, horizontalTextPosition:int, verticalTextPosition:int, paddingRight:int, paddingLeft:int,  relatedPromptID:int=0, activity:Activity=null)
       {
           super(Prompt.ACTIVITY_GRAPHIC, ID, page, num, showNum, relatedActivityID, cascading, '', relatedPromptID, activity);
           this.image = image.replace(new RegExp('\\..*?$','g'),'');
           this.verticalPosition = verticalPosition;
           this.horisontalPosition = horisontalPosition; 
           this.verticalTextPosition = verticalTextPosition;
           this.horizontalTextPosition = horizontalTextPosition;
           this.paddingRight = paddingRight;
           this.paddingLeft = paddingLeft;
           
       }
      
      /**
      * Virtuals methods
      */
     
   
          
      /**
      * Public members/properties
      */
      public function get Image():String
      {
        return this.image;        
      }
      
      public function get VerticalPosition():int
      {
        return this.verticalPosition;
      }
      
      public function get HorisontalPosition():int
      {
        return this.horisontalPosition;
      }
      
      public function get VerticalTextPosition():int
      {
        return this.verticalTextPosition;
      }
      
      public function get HorizontalTextPosition():int
      {
        return this.horizontalTextPosition;
      }
    
      public function get PaddingRight():int
      {
        return this.paddingRight;
      }
      
      public function get PaddingLeft():int
      {
        return this.paddingLeft;
      }
      /**
      * Public methods
      */
    
    
    
  }
}