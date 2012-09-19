package Model.Prompts
{
  import Model.Activity;

  public class BackgroundImage extends Prompt
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
      protected var right:int; 
         
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
       public function BackgroundImage(ID:int, page:int, num:int, showNum:Boolean, image:String, verticalCenter:int, relatedActivityID:int, horisontalPosition:int, right:int = -1, relatedPromptID:int=0, activity:Activity=null)
       {
           super(Prompt.BACKGROUND_IMAGE, ID, page, num, showNum, relatedActivityID, cascading, '', relatedPromptID, activity);
           this.image = image.replace(new RegExp('\\..*?$','g'),'');
           this.verticalPosition = verticalCenter;
           this.horisontalPosition = horisontalPosition; 
           this.right = right;
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
      
      public function get Right():int
      {
        return this.right;
      }
      /**
      * Public methods
      */
    
    
    
  }
}